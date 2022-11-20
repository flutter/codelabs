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

@ NEON assembly implementation of FIR filter core

	.text

	.align 2
	.global neon_fir_direct
	.type neon_fir_direct, %function
neon_fir_direct:
@ r0 = pointer to input (aligned)
@ r1 = pointer to kernel (aligned)
@ r2 = pointer to output (aligned)
@ r3  = size of input in floats (multiple of 4)
@ stack[0] = size of kernel in floats (multiple of 4)

	push {r4-r7}
	ldr r4, [sp, #(4 * 4)]

	lsl r6, r4, #2
	sub r6, #16

	@ compute initial overlap
	mov r7, r4
	vmov.i32 q9, #0
	vmov.i32 q10, #0
	vmov.i32 q11, #0
neon_fir_direct1:
	vld1.i32 {q0}, [r0:128]!  @ load 4 samples from input
	vld1.i32 {q1}, [r1:128]!  @ load 4 samples from kernel
	vmla.f32 q9, q1, d0[1]
	vmla.f32 q10, q1, d1[0]
	vmla.f32 q11, q1, d1[1]
	subs r7, #4
	bne neon_fir_direct1
	vmov.i32 q12, #0
	vext.32 q13, q9, q12, #3
	vext.32 q1, q10, q12, #2
	vadd.f32 q13, q1
	vext.32 q1, q11, q12, #1
	vadd.f32 q8, q13, q1
	sub r0, r6
	sub r1, r4, lsl #2

neon_fir_direct2:

	mov r7, r4
	vmov.i32 q9, #0
	vmov.i32 q10, #0
	vmov.i32 q11, #0
	@ inner loop
neon_fir_direct3:
	vld1.32 {q0}, [r0:128]!  @ load 4 samples from input
	vld1.i32 {q1}, [r1:128]!  @ load 4 samples from kernel
	vmla.f32 q9, q1, d0[1]
	vmla.f32 q8, q1, d0[0]
	vmla.f32 q10, q1, d1[0]
	vmla.f32 q11, q1, d1[1]
	subs r7, #4
	bne neon_fir_direct3

	@ process overlaps
	vext.32 q0, q12, q9, #3
	vext.32 q13, q9, q12, #3
	vadd.f32 q8, q0
	vext.32 q0, q12, q10, #2
	vext.32 q1, q10, q12, #2
	vadd.f32 q8, q0
	vadd.f32 q13, q1
	vext.32 q0, q12, q11, #1
	vext.32 q1, q11, q12, #1
	vadd.f32 q0, q8
	vadd.f32 q8, q13, q1

	sub r0, r6
	sub r1, r4, lsl #2
	vst1.32 {q0}, [r2:128]!

	subs r3, #4
	bne neon_fir_direct2

	pop {r4-r7}
	bx lr

@ a sketch to see if this is worthwhile; looks like it isn't


	.if 0
	.size neon_fir_short, .-neon_fir_short

	.align 2
	.global neon_fir_short
	.type neon_fir_short, %function
neon_fir_short:
@ r0 = pointer to input (aligned)
@ r1 = pointer to kernel (aligned)
@ r2 = pointer to output (aligned)
@ r3  = size of input in floats (multiple of 4)
@ stack[0] = size of kernel in floats (multiple of 4)

	push {r4-r7}
	vpush {q4-q7}
	ldr r4, [sp, #(4 * 4 + 4 * 16)]

	sub sp, #(4 * 16) @ room for z2's
	lsl r6, r4, #2
	sub r6, #16

	@ compute initial overlap (todo redo)
	mov r7, r4
	vmov.i32 q9, #0
	vmov.i32 q10, #0
	vmov.i32 q11, #0
neon_fir_short1:
	vld1.i32 {q0}, [r0:128]!  @ load 4 samples from input
	vld1.i32 {q1}, [r1:128]!  @ load 4 samples from kernel
	vmla.f32 q9, q1, d0[1]
	vmla.f32 q10, q1, d1[0]
	vmla.f32 q11, q1, d1[1]
	subs r7, #4
	bne neon_fir_short1
	vmov.i32 q12, #0
	vext.32 q13, q9, q12, #3
	vext.32 q1, q10, q12, #2
	vadd.f32 q13, q1
	vext.32 q1, q11, q12, #1
	vadd.f32 q8, q13, q1
	sub r0, r6
	sub r1, r4, lsl #2

neon_fir_short2:

	mov r7, r4
	vmov.i32 q4, #0
	vmov.i32 q5, #0
	vmov.i32 q6, #0
	vmov.i32 q7, #0
	vmov.i32 q8, #0
	vmov.i32 q9, #0
	vmov.i32 q10, #0
	vmov.i32 q11, #0
	vmov.i32 q12, #0
	vmov.i32 q13, #0
	vmov.i32 q14, #0
	vmov.i32 q15, #0
	@ inner loop
neon_fir_short3:
	vld1.32 {q0}, [r0:128]!  @ load 4 samples from input (a0)
	vld1.i32 {q1}, [r1:128]!  @ load 4 samples from kernel (b0)
	vmla.f32 q4, q1, d0[0]
	vmla.f32 q5, q1, d0[1]
	vmla.f32 q6, q1, d1[0]
	vmla.f32 q7, q1, d1[1]
	vld1.32 {q2}, [r0:128]!  @ load 4 samples from input (a2)
	vadd.f32 q0, q2  @ a1
	vld1.i32 {q3}, [r1:128]!  @ load 4 samples from kernel (b2)
	vadd.f32 q1, q3  @ b1
	vmla.f32 q12, q3, d4[0]
	vmla.f32 q13, q3, d4[1]
	vmla.f32 q14, q3, d5[0]
	vmla.f32 q15, q3, d5[1]
	vmla.f32 q8, q1, d0[0]
	vmla.f32 q9, q1, d0[1]
	vmla.f32 q10, q1, d1[0]
	vmla.f32 q11, q1, d1[1]
	subs r7, #8
	bne neon_fir_short3

	@ now for the fun part
	mov r5, sp
	vld1.32 {q0, q1}, [r5]!
	vld1.32 {q2, q3}, [r5]!
	vadd.f32 q0, q4
	vadd.f32 q1, q5
	vadd.f32 q2, q6
	vadd.f32 q3, q7
	vsub.f32 q8, q4
	vsub.f32 q9, q5
	vsub.f32 q10, q6
	vsub.f32 q1, q7
	vsub.f32 q8, q12
	vsub.f32 q9, q13
	vsub.f32 q10, q14
	vsub.f32 q11, q15
	mov r5, sp
	vst1.32 {q12, q13}, [r5]!
	vst1.32 {q14, q15}, [r5]!

	@ process overlaps
	vext.32 q0, q12, q9, #3
	vext.32 q13, q9, q12, #3
	vadd.f32 q8, q0
	vext.32 q0, q12, q10, #2
	vext.32 q1, q10, q12, #2
	vadd.f32 q8, q0
	vadd.f32 q13, q1
	vext.32 q0, q12, q11, #1
	vext.32 q1, q11, q12, #1
	vadd.f32 q0, q8
	vadd.f32 q8, q13, q1

	sub r0, r6
	sub r1, r4, lsl #2
	vst1.32 {q0}, [r2:128]!
	vst1.32 {q1}, [r2:128]!

	subs r3, #8
	bne neon_fir_short2

	add sp, #64
	vpop {q4-q7}
	pop {r4-r7}
	bx lr

	.size neon_fir_short, .-neon_fir_short
	.endif

	.align 2
	.global neon_fir_fixed16
	.type neon_fir_fixed16, %function

@ fixed 16 bit dot product
@ based on Andy Hung code, but not doing mirror trick
neon_fir_fixed16:

	push {r4-r7}
	ldr r4, [sp, #(4 * 4)]

	lsl r6, r4, #1
	sub r6, #2

neon_fir_fixed16_1:
	vmov.i16 q0, #0
	mov r7, r4

neon_fir_fixed16_2:
	vld1.16 {q2, q3}, [r0]!  @ load 16 samples from input
	vld1.16 {q8, q9}, [r1:128]!  @ load 16 samples from kernel
	vmlal.s16 q0, d4, d16
	vmlal.s16 q0, d5, d17
	vmlal.s16 q0, d6, d18
	vmlal.s16 q0, d7, d19
	subs r7, #16
	bne neon_fir_fixed16_2
	vpadd.s32 d0, d0, d1
	vpadd.s32 d0, d0, d0

	sub r0, r6
	sub r1, r4, lsl #1
	vst1.32 {d0[0]}, [r2]!

	subs r3, #1
	bne neon_fir_fixed16_1

	pop {r4-r7}
	bx lr
	.size neon_fir_fixed16, .-neon_fir_fixed16

	.align 2
	.global neon_fir_fixed16m
	.type neon_fir_fixed16m, %function

@ fixed 16 bit dot product
@ based on Andy Hung code, modeling mirror trick
neon_fir_fixed16m:

	push {r4-r7}
	ldr r4, [sp, #(4 * 4)]

	lsl r6, r4, #1
	sub r6, #2

neon_fir_fixed16m_1:
	vmov.i16 q0, #0
	mov r7, r4
	add r5, r0, r6

neon_fir_fixed16m_2:
	vld1.16 {q2}, [r5]  @ load 8 samples from input
	vld1.16 {q3}, [r0]!  @ load 8 samples from input
	vld1.16 {q8}, [r1:128]!  @ load 8 samples from kernel
	vld1.16 {q9}, [r1:128]!  @ load 8 samples from kernel
	vmlal.s16 q0, d4, d16
	vmlal.s16 q0, d5, d17
	vmlal.s16 q0, d6, d18
	vmlal.s16 q0, d7, d19
	subs r7, #16
	sub r5, #16
	bne neon_fir_fixed16m_2
	vpadd.s32 d0, d0, d1
	vpadd.s32 d0, d0, d0

	sub r0, r6
	sub r1, r4, lsl #1
	vst1.32 {d0[0]}, [r2]!

	subs r3, #1
	bne neon_fir_fixed16m_1

	pop {r4-r7}
	bx lr
	.size neon_fir_fixed16m, .-neon_fir_fixed16m

	.align 2
	.global neon_halfrate_split
neon_halfrate_split:
@ r0 = pointer to input
@ r1 = pointer to buf0
@ r2 = pointer to buf1
@ r3 = pointer to buf2
@ stack[0] = number of output buffers to fill
	push {r4}
	ldr r4, [sp, #4]
neon_halfrate_split1:
	vld2.32 {q0, q1}, [r0:128]!
	vadd.f32 q2, q0, q1
	vst1.32 {q0}, [r1:128]!
	vst1.32 {q1}, [r3:128]!
	vst1.32 {q2}, [r2:128]!
	subs r4, #4
	bne neon_halfrate_split1

	pop {r4}
	bx lr
	.size neon_halfrate_split, .-neon_halfrate_split

	.align 2
	.global neon_halfrate_combine
neon_halfrate_combine:
@ r0 = pointer to output
@ r1 = pointer to buf0
@ r2 = pointer to buf1
@ r3 = pointer to buf2
@ stack[0] = number of input buffers to combine
@ todo: deal with z2m2
	push {r4}
	ldr r4, [sp, #4]
	vmov.i32 q3, #0
neon_halfrate_combine1:
	vld1.32 {q2}, [r3:128]!
	vld1.32 {q0}, [r1:128]!
	vext.32 q8, q3, q2, #3
	vld1.32 {q1}, [r2:128]!
	vsub.f32 q1, q0
	vadd.f32 q0, q8
	vsub.f32 q1, q2
	vst2.32 {q0, q1}, [r0:128]!
	vmov q3, q2

	subs r4, #4
	bne neon_halfrate_combine1

	pop {r4}
	bx lr
	.size neon_halfrate_combine, .-neon_halfrate_combine
