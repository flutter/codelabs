@ Copyright 2014 Google Inc.
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

@ NEON assembly implementation of a second-order IIR filter core (suitable
@ for biquad filters)

	.text

	.align 2
	.global neon_iir_2chan
	.type neon_iir_2chan, %function
neon_iir_2chan:
@ r0 = pointer to input buffer 1 (aligned)
@ r1 = pointer to input buffer 2 (aligned)
@ r2 = pointer to output buffer 1 (aligned)
@ r3 = pointer to output buffer 2 (aligned)
@ stack[0] = size of buffer in floats (multiple of 4, >= 8)
@ stack[1] = matrices
@ stack[2] = iir state

	push {r4-r5}
	vpush {q4-q7}
	ldr r4, [sp, #(4 * (2 + 16 + 0))]
	ldr r5, [sp, #(4 * (2 + 16 + 1))]

	@ load matrices
	vld1.32 {q8, q9}, [r5:128]!
	vld1.32 {q10, q11}, [r5:128]!
	vld1.32 {q12, q13}, [r5:128]!
	vld1.32 {q14, q15}, [r5:128]!

	ldr r5, [sp, #(4 * (2 + 16 + 2))]
	@ load IIR state
	vld1.32 d1, [r5:64]!
	vld1.32 d3, [r5:64]!

	sub r4, #4
@ q0, q1 are state vector L, R for first unroll
@ q2, q3 are state vector L, R for second unroll 
@ q4-q5 are scratch to compute next state vectors
@ q6 is input
@ q8-q11 is matrix 1
@ q12-q15 is matrix 2

	vld1.32 d12, [r0:64]!
	vld1.32 d13, [r1:64]!
	vmul.f32 q2, q8, d12[0]
	vmul.f32 q3, q12, d13[0]
	vmul.f32 q4, q9, d12[1]
	vmul.f32 q5, q13, d13[1]
	vmla.f32 q2, q10, d1[0]
	vmla.f32 q3, q14, d3[0]
	vld1.32 d12, [r0:64]!
	vmla.f32 q4, q11, d1[1]
	vld1.32 d13, [r1:64]!
	vmla.f32 q5, q15, d3[1]

neon_iir_2chan_1:
	@ first unroll
	vmul.f32 q0, q8, d12[0]
	vmul.f32 q1, q12, d13[0]
	vadd.f32 q2, q4
	vadd.f32 q3, q5
	vmla.f32 q0, q9, d12[1]
	vld1.32 d12, [r0:64]!
	vmla.f32 q1, q13, d13[1]
	vld1.32 d13, [r1:64]!
	vmul.f32 q4, q10, d5[0]
	vst1.32 d4, [r2:64]!
	vmul.f32 q5, q14, d7[0]
	vmla.f32 q0, q11, d5[1]
	vmla.f32 q1, q15, d7[1]
	vst1.32 d6, [r3:64]!

	@ second unroll
	vmul.f32 q2, q8, d12[0]
	vmul.f32 q3, q12, d13[0]
	vadd.f32 q0, q4
	vadd.f32 q1, q5
	vmla.f32 q2, q9, d12[1]
	vld1.32 d12, [r0:64]!
	vmla.f32 q3, q13, d13[1]
	vld1.32 d13, [r1:64]!
	vmul.f32 q4, q10, d1[0]
	vst1.32 d0, [r2:64]!
	vmul.f32 q5, q14, d3[0]
	vmla.f32 q2, q11, d1[1]
	vmla.f32 q3, q15, d3[1]
	vst1.32 d2, [r3:64]!
	subs r4, #4
	bne neon_iir_2chan_1

	vmul.f32 q0, q8, d12[0]
	vmul.f32 q1, q12, d13[0]
	vadd.f32 q2, q4
	vadd.f32 q3, q5
	vmla.f32 q0, q9, d12[1]
	vmla.f32 q1, q13, d13[1]
	vmul.f32 q4, q10, d5[0]
	vst1.32 d4, [r2:64]!
	vmul.f32 q5, q14, d7[0]
	vmla.f32 q0, q11, d5[1]
	vmla.f32 q1, q15, d7[1]
	vst1.32 d6, [r3:64]!

	vadd.f32 q0, q4
	vadd.f32 q1, q5
	vst1.32 d0, [r2:64]!
	vst1.32 d2, [r3:64]!

	@ save IIR state
	sub r5, #16
	vst1.32 d1, [r5:64]!
	vst1.32 d3, [r5:64]!

	vpop {q4-q7}
	pop {r4-r5}
	bx lr
	.size neon_iir_2chan, .-neon_iir_2chan
