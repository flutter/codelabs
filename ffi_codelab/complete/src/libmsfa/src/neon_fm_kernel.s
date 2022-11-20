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

@ NEON assembly implementation of FM operator kernel

	.text

	.align	2
	.global	neon_fm_kernel
	.type	neon_fm_kernel, %function
neon_fm_kernel:
@ On entry:
@ r0 = pointer to input
@ r1 = pointer to mix input
@ r2 = pointer to output
@ r3 = number of samples (n)
@ stack[1] = phase0
@ stack[2] = freq
@ stack[3] = gain
@ stack[4] = dgain
@ Note: pointers must have 128 bit (16 byte) alignment
@ Note: n mod 12 must be either 0 or 4, and n >= 12
@ Register layout:
@ q0 phase accum
@ q1 gain
@ q2 0x7fffff
@ q3 poly coefs
@ q4-q6 data block 1
@ q7-q9 data block 2
@ q10-q12 data block 3
@ q13-q15 data block 4
@ [r4] phase bump
@ [r5] gain bump
	push {r4-r5}
	vpush {q4-q7}
	@ TODO: maybe get rid of pipeline stalls in setep
	add r5, sp, #(4 * 18)
	vld1.32 {d0[], d1[]}, [r5]!    @ phase
	vld1.32 {d14[], d15[]}, [r5]!  @ freq
	adr r4, neon_fm_kernel_const
	vld1.32 {q5}, [r4:128]!
	vld1.32 {q2}, [r4,:128]!
	vld1.32 {q3}, [r4,:128]!
	vmla.i32 q0, q7, q5
	sub sp, #48
	vld1.32 {d2[], d3[]}, [r5]!    @ gain
	vld1.32 {d12[], d13[]}, [r5]!  @ dgain
	vmla.i32 q1, q6, q5
	vshl.i32 q7, #2
	vcvt.f32.s32 q1, q1, #24

	add r4, sp, #15
	and r4, #-16  @ align to 16-byte boundary
	vst1.32 {q7}, [r4:128]
	vcvt.f32.s32 q6, q6, #22
	add r5, r4, #16
	vst1.32 {q6}, [r5:128]

    @vld1.32 {q7}, [r4:128]
	vadd.i32 q8, q0, q7
	sub r3, #4

	vld1.32 {q4}, [r0:128]!
	vld1.32 {q5}, [r0:128]!
	vadd.i32 q4, q0
	vadd.i32 q9, q8, q7
	vadd.i32 q5, q8
	vld1.32 {q6}, [r0:128]!
	vmov.i32 q15, #0x800000
	vadd.i32 q6, q9
	vtst.32 q13, q4, q15
	vtst.32 q14, q5, q15
	vtst.32 q15, q6, q15
	vadd.i32 q0, q9, q7
	vmov.i32 q7, #0x400000
	b neon_fm_kernel_2
neon_fm_kernel_1:
	vld1.32 {q4}, [r0:128]!
	vld1.32 {q5}, [r0:128]!
	vadd.i32 q4, q0
	vadd.i32 q9, q8, q7
	vadd.i32 q5, q8
	vld1.32 {q6}, [r0:128]!
	vst1.32 {q11}, [r2:128]!
	vmov.i32 q15, #0x800000
	vadd.i32 q6, q9
	vtst.32 q13, q4, q15
	vtst.32 q14, q5, q15
	vtst.32 q15, q6, q15
	vadd.i32 q0, q9, q7
	vmov.i32 q7, #0x400000
	vst1.32 {q12}, [r2:128]!
neon_fm_kernel_2:
	vand q4, q2
	vand q5, q2
	vand q6, q2
	vsub.i32 q4, q7
	vsub.i32 q5, q7
	vsub.i32 q6, q7
	vcvt.f32.s32 q4, q4, #22
	vcvt.f32.s32 q5, q5, #22
	vcvt.f32.s32 q6, q6, #22
	vmul.f32 q4, q4
	vmul.f32 q5, q5
	vmul.f32 q6, q6

	vdup.32 q7, d6[1]
	vdup.32 q8, d6[1]
	vdup.32 q9, d6[1]
	vmla.f32 q7, q4, d6[0]
	vmla.f32 q8, q5, d6[0]
	vmla.f32 q9, q6, d6[0]
	vdup.32 q10, d7[0]
	vdup.32 q11, d7[0]
	vdup.32 q12, d7[0]
	vmla.f32 q10, q4, q7
	vmla.f32 q11, q5, q8
	vmla.f32 q12, q6, q9
	vdup.32 q7, d7[1]
	vdup.32 q8, d7[1]
	vdup.32 q9, d7[1]
	vmla.f32 q7, q4, q10
	vmla.f32 q8, q5, q11
	vmla.f32 q9, q6, q12
	vld1.32 {q10}, [r5:128]
	vadd.f32 q11, q1, q10
	vmul.f32 q7, q1
	vadd.f32 q12, q11, q10
	vmul.f32 q8, q11
	vmul.f32 q9, q12
	vld1.32 {q4}, [r1:128]!
	vadd.f32 q1, q12, q10
	vcvt.s32.f32 q10, q7, #24
	vld1.32 {q5}, [r1:128]!
	vcvt.s32.f32 q11, q8, #24
	vcvt.s32.f32 q12, q9, #24
	vld1.32 {q6}, [r1:128]!
	vld1.32 {q7}, [r4:128]
	veor q10, q13
	veor q11, q14
	veor q12, q15
	vadd.i32 q10, q4
	vadd.i32 q11, q5
	vadd.i32 q12, q6
	vadd.i32 q8, q0, q7
	vst1.32 {q10}, [r2:128]!
	subs r3, #12
	bgt neon_fm_kernel_1
	beq neon_fm_kernel_3
	@ does not handle n mod 12 == 8

	add sp, #48
	vpop {q4-q7}
	vst1.32 {q11}, [r2:128]!
	pop {r4-r5}
	vst1.32 {q12}, [r2:128]!
	bx	lr
neon_fm_kernel_3:
	@ finish last chunk of 4
	vld1.32 {q4}, [r0:128]!
	vadd.i32 q4, q0
	vmov.i32 q15, #0x800000
	vst1.32 {q11}, [r2:128]!
	vtst.32 q13, q4, q15
	vmov.i32 q7, #0x400000
	vand q4, q2
	vst1.32 {q12}, [r2:128]!
	vsub.i32 q4, q7
	vcvt.f32.s32 q4, q4, #22
	vmul.f32 q4, q4

	vdup.32 q7, d6[1]
	vmla.f32 q7, q4, d6[0]
	vdup.32 q10, d7[0]
	vmla.f32 q10, q4, q7
	vdup.32 q7, d7[1]
	vmla.f32 q7, q4, q10
	vmul.f32 q7, q1
	vld1.32 {q4}, [r1:128]!
	vcvt.s32.f32 q10, q7, #24
	veor q10, q13
	vadd.i32 q10, q4
	vst1.32 {q10}, [r2:128]!
	add sp, #48
	vpop {q4-q7}
	pop {r4-r5}
	bx	lr

	.size	neon_fm_kernel, .-neon_fm_kernel

	.balign 16
neon_fm_kernel_const:
	.word 0, 1, 2, 3
	.word 0x7fffff, 0x7fffff, 0x7fffff, 0x7fffff
	.float -0.01880853017455781, 0.25215252666796095, -1.2333439964934032, 1.0

	@ vars for bumping
	.float 1.0, 1.0, 1.0, 1.0
	.word 0, 0, 0, 0
	.float 0.0, 0.0, 0.0, 0.0
