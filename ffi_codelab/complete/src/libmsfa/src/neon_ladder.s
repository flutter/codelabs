@ Copyright 2013 Google Inc.
@ 
@ Licensed under the Apache License, Version 2.0 (the "License");
@ you may not use this file except in compliance with the License.
@ You may obtain a copy of the License at
@ 
@      http://www.apache.org/licenses/LICENSE-2.0
@ 
@ Unless required by applicable law or agreed to in writing, software
@ distributed under the License is distributed on an "AS IS" BASIS,
@ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@ See the License for the specific language governing permissions and
@ limitations under the License.

@ NEON assembly implementation of ladder filter core

    .text

    .align  2
    .global neon_ladder_nl
    .type   neon_ladder_nl, %function
neon_ladder_nl:
@ r0 = pointer to input
@ r1 = pointer to filter (A then B then k then overdrive)
@ r2 = pointer to output
@ r3 = number of samples
@ stack[0] = pointer to state
@q12 - q15 matrix (A)
@q11 B

@q0 input
@q1 state
@q3 const 1.0
@q6 overdrive, output gain
@q10 resonance (k)

	push {r4-r5}
	vpush {q4-q7}
	ldr r4, [sp, #(4 * 18)]
	vld1.32 {q1}, [r4:128]

	vld1.32 {q12}, [r1:128]!
	vld1.32 {q13}, [r1:128]!
	vld1.32 {q14}, [r1:128]!
	vld1.32 {q15}, [r1:128]!
	vld1.32 {q11}, [r1:128]!
	vld1.32 {d20[], d21[]}, [r1]!
	vld1.32 {d12[0]}, [r1]!
	vld1.32 {d12[1]}, [r1]!

	adr r5, neon_ladder_nl_const
	vld1.32 {q3}, [r5:128]!

neon_ladder_nl_1:
	@ cycle counting suggests that careful unrolling would
	@ save about 10% - we will avoid the complexity for now

	vld1.32 {d0[0]}, [r0]!
	vcvt.f32.s32 q0, q0

	@ compute resonance
	vmls.f32 q0, q10, d3[1]

	@ q4 gets q1/sqrt(1 + q1*q1)
	@ q0 gets q0/sqrt(1 + q0*q0)
	vmul.f32 q2, q1, d12[0]		@ q1 * overdrive
	vmul.f32 q7, q0, d12[0]
	vmul.f32 q2, q2, q2
	vmul.f32 q7, q7, q7
	vadd.f32 q2, q3				@ z = 1 + (q1 * overdrive)^2
	vadd.f32 q7, q3
	vrsqrte.f32 q4, q2			@ est ~ 1/sqrt(z)
	vrsqrte.f32 q8, q7
	vmul.f32 q2, q4, q2			@ z * est
	vmul.f32 q7, q8, q7
	vrsqrts.f32 q2, q2, q4 		@ (3 - z * est^2)/2
	vrsqrts.f32 q7, q7, q8
	vmul.f32 q4, q1				@ q1 * est
	vmul.f32 q0, q8
	vmul.f32 q4, q2 			@ q1 * est * (3 - z * est^2)/2
	vmul.f32 q0, q7

	vmla.f32 q1, q12, d8[0]  @ sigmoid(y0)
	vmul.f32 q2, q11, d0[0]  @ sigmod(x - k * y3)
	vmla.f32 q1, q13, d8[1]  @ sigmoid(y1)
	vmla.f32 q2, q14, d9[0]  @ sigmoid(y2)
	vmla.f32 q1, q15, d9[1]  @ sigmoid(y3)
	vadd.f32 q1, q2

	vmul.f32 q4, q1, d12[1]
	vcvt.s32.f32 q4, q4
	vst1.32 {d9[1]}, [r2]!
	subs r3, #1
	bne neon_ladder_nl_1

	vst1.32 {q1}, [r4:128]
	vpop {q4-q7}
	pop {r4-r5}
	bx lr

	.size   neon_ladder_nl, .-neon_ladder_nl

	.balign 16
neon_ladder_nl_const:
	.float 1.0, 1.0, 1.0, 1.0

    .align  2
    .global neon_ladder_lin
    .type   neon_ladder_lin, %function

	.if 0
@ Simpler, not as optimized approach (26.3 cycles on N10)

neon_ladder_lin:

@ r0 = pointer to input
@ r1 = pointer to filter (A then B)
@ r2 = pointer to output
@ r3 = number of samples
@ stack[0] = pointer to state
@q12 - q15 matrix (A)
@q11 B

@q0 input
@q1 state

	push {r4-r5}
	ldr r4, [sp, #(4 * 2)]
	vld1.32 {q1}, [r4:128]

	vld1.32 {q12}, [r1:128]!
	vld1.32 {q13}, [r1:128]!
	vld1.32 {q14}, [r1:128]!
	vld1.32 {q15}, [r1:128]!
	vld1.32 {q11}, [r1:128]!

neon_ladder_lin_1:
	vld1.32 {d0[0]}, [r0]!
	vmov q3, q1
	vcvt.f32.s32 q0, q0

	vmul.f32 q1, q12, d6[0]  @ y0
	vmul.f32 q2, q13, d6[1]  @ y1
	vmla.f32 q1, q11, d0[0]  @ x
	vmla.f32 q2, q14, d7[0]  @ y2
	vmla.f32 q1, q15, d7[1]  @ y3
	vadd.f32 q1, q2

	vcvt.s32.f32 q3, q1
	vst1.32 {d7[1]}, [r2]!
	subs r3, #1
	bne neon_ladder_lin_1

	vst1.32 {q1}, [r4:128]
	pop {r4-r5}
	bx lr
.else
@ Unrolled, more highly optimized loop (22.5 cycles on N10)

neon_ladder_lin:
@ r0 = pointer to input
@ r1 = pointer to filter (A then B)
@ r2 = pointer to output
@ r3 = number of samples
@ stack[0] = pointer to state
@q12 - q15 matrix (A)
@q11 B

@q0 input
@q1 state

	push {r4-r5}
	ldr r4, [sp, #(4 * 2)]
	vld1.32 {q1}, [r4:128]

	vld1.32 {q12}, [r1:128]!
	vld1.32 {q13}, [r1:128]!
	vld1.32 {q14}, [r1:128]!
	vld1.32 {q15}, [r1:128]!
	vld1.32 {q11}, [r1:128]!

neon_ladder_lin_1:
	vld1.32 {q0}, [r0:128]!
	vcvt.f32.s32 q0, q0

	vmul.f32 q9, q12, d2[0]  @ y0
	vmul.f32 q2, q13, d2[1]  @ y1
	vmla.f32 q9, q11, d0[0]  @ x
	vmla.f32 q2, q14, d3[0]  @ y2
	vmla.f32 q9, q15, d3[1]  @ y3
	vadd.f32 q2, q9

	vmul.f32 q1, q11, d0[1]  @ x
	vmul.f32 q9, q12, d4[0]  @ y0
	vmla.f32 q1, q13, d4[1]  @ y1
	vmla.f32 q9, q14, d5[0]  @ y2
	vcvt.s32.f32 q3, q2
	vmla.f32 q1, q15, d5[1]  @ y3
	vst1.32 {d7[1]}, [r2]!
	vadd.f32 q1, q9

	vmul.f32 q9, q11, d1[0]  @ x
	vmul.f32 q2, q12, d2[0]  @ y0
	vmla.f32 q9, q13, d2[1]  @ y1
	vmla.f32 q2, q14, d3[0]  @ y2
	vcvt.s32.f32 q3, q1
	vmla.f32 q9, q15, d3[1]  @ y3
	vst1.32 {d7[1]}, [r2]!
	vadd.f32 q2, q9

	vmul.f32 q1, q11, d1[1]  @ x
	vmul.f32 q9, q12, d4[0]  @ y0
	vmla.f32 q1, q13, d4[1]  @ y1
	vmla.f32 q9, q14, d5[0]  @ y2
	vcvt.s32.f32 q3, q2
	vmla.f32 q1, q15, d5[1]  @ y3
	vst1.32 {d7[1]}, [r2]!
	vadd.f32 q1, q9

	vcvt.s32.f32 q3, q1
	vst1.32 {d7[1]}, [r2]!
	subs r3, #4
	bne neon_ladder_lin_1

	vst1.32 {q1}, [r4:128]
	pop {r4-r5}
	bx lr
.endif

	.size   neon_ladder_lin, .-neon_ladder_lin

    .global neon_ladder_mkmatrix
    .type   neon_ladder_mkmatrix, %function
neon_ladder_mkmatrix:
@ r0 = pointer to params (a, k)
@ r1 = out pointer to matrix (B then A)
@ TODO: produce output as A then B, avoiding copies
	vpush {q4-q7}
	vld1.32 {d0[]}, [r0]!  @ a
	vmov.i32 d1, #0
	vneg.f32 s0, s0

	vld1.32 {d6[0]}, [r0]  @ k
	vmov.i32 q2, #0
	vmul.f32 s9, s12, s0

	adr r2, neon_ladder_mkmatrix_const
	vmov.i32 q1, #0
	vld1.32 {d2[0]}, [r2]!
	vadd.f32 q14, q1, q0
	vmov q15, q2
	vmov q6, q0
	vmov q7, q2

	@ (q0, q2) is jacobian matrix, (q14, q15) is series accum
	@ (q6, q7) is jacobian ^ i

	mov r3, #3
neon_ladder_mkmatrix1:
	vext.32 q8, q7, q6, #3
	vmul.f32 q12, q6, d0[0]
	vmul.f32 q13, q8, d4[1]
	vext.32 q9, q7, q6, #2
	vmla.f32 q12, q8, d0[1]
	vmla.f32 q13, q9, d5[0]
	vext.32 q10, q6, q6, #1
	vmla.f32 q12, q9, d1[0]
	vmla.f32 q13, q10, d5[1]
	vmla.f32 q12, q10, d1[1]
	vmla.f32 q13, q7, d0[0]

	vld1.32 {d6[0]}, [r2]!
	vmla.f32 q14, q12, d6[0]
	vmov q6, q12
	vmla.f32 q15, q13, d6[0]
	vmov q7, q13
	subs r3, #1
	bne neon_ladder_mkmatrix1

	vmov q0, q14
	vmov q2, q15

	mov r3, #4

neon_ladder_mkmatrix2:
	vext.32 q8, q2, q0, #3

	@ q0 = {a11, a21, a31, a41}, q2 = {0, a14, a24, a34}

	@ square the matrix
	vmul.f32 q12, q0, d0[0]
	vmul.f32 q13, q8, d4[1]
	vext.32 q9, q2, q0, #2
	vmla.f32 q12, q8, d0[1]
	vmla.f32 q13, q9, d5[0]
	vext.32 q10, q2, q0, #1
	vmla.f32 q12, q9, d1[0]
	vmla.f32 q13, q10, d5[1]
	vmla.f32 q12, q10, d1[1]
	vmla.f32 q13, q2, d0[0]

	vmov q0, q12
	vmov q2, q13
	subs r3, #1
	bne neon_ladder_mkmatrix2

	@ unwrap toeplitz matrix into the full form
	add r1, #16  @ TODO: remove this for A then B output
	vst1.32 {q0}, [r1,:128]!
	vext.32 q8, q2, q0, #3
	vst1.32 {q8}, [r1,:128]!
	vext.32 q9, q2, q0, #2
	vst1.32 {q9}, [r1,:128]!
	vext.32 q10, q2, q0, #1
	vst1.32 {q10}, [r1,:128]!
	sub r1, #80  @ TODO: remove this for A then B output

	vmov.f32 q1, 1.0
	vld1.32 {d4[0]}, [r0]  @ k
	vadd.f32 d4, d2
	vrecpe.f32 d6, d4
	vrecps.f32 d5, d6, d4

	vadd.f32 q0, q8
	vadd.f32 q9, q10
	vsub.f32 q15, q1, q0
	vmul.f32 d6, d5  @ 1 / (1 + k)
	vsub.f32 q15, q9
	vmul.f32 q15, d6[0]
	vst1.32 {q15}, [r1,:128]!

	vpop {q4-q7}
	bx lr

	.size   neon_ladder_mkmatrix, .-neon_ladder_mkmatrix
	.balign 16
neon_ladder_mkmatrix_const:
	.float 1.0, 0.5, .16666667, .041666667
