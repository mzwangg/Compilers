	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.text
	.global float_abs
	.type float_abs , %function
float_abs:
	push {r4, fp}
	vpush {s5, s6, s7}
	mov fp, sp
	sub sp, sp, #4
.L66:                               	@ successors = .L70, .L71
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	blt .L71
	b .L70
.L68:                               	@ predecessors = .L70
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	b .Lfloat_abs_END
.L70:                               	@ predecessors = .L66                               	@ successors = .L68
	b .L68
.L71:                               	@ predecessors = .L66
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vsub.f32 s7, s6, s5
	vmov s0, s7
.Lfloat_abs_END:
	mov sp, fp
	vpop {s5, s6, s7}
	pop {r4, fp}
	bx lr

	.global circle_area
	.type circle_area , %function
circle_area:
	push {r4, r5, r6, fp}
	vpush {s5, s6, s7, s8}
	mov fp, sp
	sub sp, sp, #4
.L74:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	vmov s5, r4
	vcvt.f32.s32 s5, s5
	ldr r4, =1078530011
	vmov s6, r4
	vmul.f32 s7, s6, s5
	ldr r4, [fp, #-4]
	vmov s5, r4
	vcvt.f32.s32 s5, s5
	vmul.f32 s6, s7, s5
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mul r6, r4, r5
	vmov s5, r6
	vcvt.f32.s32 s5, s5
	ldr r4, =1078530011
	vmov s7, r4
	vmul.f32 s8, s5, s7
	vadd.f32 s5, s6, s8
	ldr r4, =1073741824
	vmov s6, r4
	vdiv.f32 s7, s5, s6
	vmov s0, s7
	mov sp, fp
	vpop {s5, s6, s7, s8}
	pop {r4, r5, r6, fp}
	bx lr

	.global float_eq
	.type float_eq , %function
float_eq:
	push {r4, fp, lr}
	vpush {s5, s6, s7}
	mov fp, sp
	sub sp, sp, #8
.L80:                               	@ successors = .L86, .L87
	vstr.32 s0, [fp, #-8]
	vstr.32 s1, [fp, #-4]
	vldr.32 s5, [fp, #-8]
	vldr.32 s6, [fp, #-4]
	vsub.f32 s7, s5, s6
	vmov s0, s7
	bl float_abs
	vmov s5, s0
	ldr r4, =897988541
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	blt .L87
	b .L86
.L83:
	b .Lfloat_eq_END
.L86:                               	@ predecessors = .L80                               	@ successors = .L88
	b .L88
.L87:                               	@ predecessors = .L80
	mov r0, #1
	b .Lfloat_eq_END
.L88:                               	@ predecessors = .L86
	mov r0, #0
.Lfloat_eq_END:
	mov sp, fp
	vpop {s5, s6, s7}
	pop {r4, fp, lr}
	bx lr

	.global error
	.type error , %function
error:
	push {fp, lr}
	mov fp, sp
.L89:
	mov r0, #101
	bl putch
	mov r0, #114
	bl putch
	mov r0, #114
	bl putch
	mov r0, #111
	bl putch
	mov r0, #114
	bl putch
	mov r0, #10
	bl putch
	b .Lerror_END
.Lerror_END:
	pop {fp, lr}
	bx lr

	.global ok
	.type ok , %function
ok:
	push {fp, lr}
	mov fp, sp
.L90:
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	b .Lok_END
.Lok_END:
	pop {fp, lr}
	bx lr

	.global assert
	.type assert , %function
assert:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L91:                               	@ successors = .L95, .L96
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	beq .L96
	b .L95
.L93:                               	@ predecessors = .L96, .L97
	b .Lassert_END
.L95:                               	@ predecessors = .L91                               	@ successors = .L97
	b .L97
.L96:                               	@ predecessors = .L91                               	@ successors = .L93
	bl error
	b .L93
.L97:                               	@ predecessors = .L95                               	@ successors = .L93
	bl ok
	b .L93
.Lassert_END:
	mov sp, fp
	pop {r4, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	vpush {s5, s6, s7}
	mov fp, sp
	sub sp, sp, #68
.L98:                               	@ successors = .L100
	ldr r4, =3338725376
	vmov s1, r4
	ldr r4, =1033895936
	vmov s0, r4
	bl float_eq
	mov r4, r0
	cmp r4, #0
	movweq r4, #1
	movwne r4, #0
	uxtb r5, r4
	mov r0, r5
	bl assert
	ldr r4, =1107966695
	vmov s1, r4
	ldr r4, =1119752445
	vmov s0, r4
	bl float_eq
	mov r4, r0
	cmp r4, #0
	movweq r4, #1
	movwne r4, #0
	uxtb r5, r4
	mov r0, r5
	bl assert
	ldr r4, =1107966695
	vmov s1, r4
	ldr r4, =1107966695
	vmov s0, r4
	bl float_eq
	mov r4, r0
	mov r0, r4
	bl assert
	mov r0, #5
	bl circle_area
	vmov s5, s0
	mov r0, #5
	bl circle_area
	vmov s6, s0
	vmov s1, s6
	vmov s0, s5
	bl float_eq
	mov r4, r0
	mov r0, r4
	bl assert
	ldr r4, =1166012416
	vmov s1, r4
	ldr r4, =1130954752
	vmov s0, r4
	bl float_eq
	mov r4, r0
	cmp r4, #0
	movweq r4, #1
	movwne r4, #0
	uxtb r5, r4
	mov r0, r5
	bl assert
	b .L100
.L99:                               	@ predecessors = .L100                               	@ successors = .L102
	b .L102
.L100:                               	@ predecessors = .L98                               	@ successors = .L99
	bl ok
	b .L99
.L101:                               	@ predecessors = .L102                               	@ successors = .L103
	b .L103
.L102:                               	@ predecessors = .L99                               	@ successors = .L101
	bl ok
	b .L101
.L103:                               	@ predecessors = .L101                               	@ successors = .L105
	b .L105
.L104:                               	@ predecessors = .L105                               	@ successors = .L121
	mov r4, #1
	str r4, [fp, #-64]
	mov r4, #0
	str r4, [fp, #-60]
	add r4, fp, #-56
	mov r5, r4
	ldr r4, =1065353216
	vmov s5, r4
	vstr.32 s5, [r5]
	add r4, fp, #-56
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =1073741824
	vmov s5, r4
	vstr.32 s5, [r5]
	add r4, fp, #-56
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =0
	vmov s5, r4
	vstr.32 s5, [r5]
	add r4, fp, #-56
	mov r5, #3
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =0
	vmov s5, r4
	vstr.32 s5, [r5]
	add r4, fp, #-56
	mov r5, #4
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =0
	vmov s5, r4
	vstr.32 s5, [r5]
	add r4, fp, #-56
	mov r5, #5
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =0
	vmov s5, r4
	vstr.32 s5, [r5]
	add r4, fp, #-56
	mov r5, #6
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =0
	vmov s5, r4
	vstr.32 s5, [r5]
	add r4, fp, #-56
	mov r5, #7
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =0
	vmov s5, r4
	vstr.32 s5, [r5]
	add r4, fp, #-56
	mov r5, #8
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =0
	vmov s5, r4
	vstr.32 s5, [r5]
	add r4, fp, #-56
	mov r5, #9
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =0
	vmov s5, r4
	vstr.32 s5, [r5]
	add r4, fp, #-56
	mov r5, r4
	mov r0, r5
	bl getfarray
	mov r4, r0
	str r4, [fp, #-16]
	b .L121
.L105:                               	@ predecessors = .L103                               	@ successors = .L104
	bl ok
	b .L104
.L121:                               	@ predecessors = .L104, .L125                               	@ successors = .L124, .L125
	ldr r4, [fp, #-64]
	ldr r5, =1000000000
	cmp r4, r5
	blt .L125
	b .L124
.L122:                               	@ predecessors = .L124
	ldr r4, [fp, #-16]
	add r5, fp, #-56
	mov r6, r5
	mov r1, r6
	mov r0, r4
	bl putfarray
	mov r0, #0
	b .Lmain_END
.L124:                               	@ predecessors = .L121                               	@ successors = .L122
	b .L122
.L125:                               	@ predecessors = .L121                               	@ successors = .L121
	bl getfloat
	vmov s5, s0
	vstr.32 s5, [fp, #-12]
	vldr.32 s5, [fp, #-12]
	ldr r4, =1078530011
	vmov s6, r4
	vmul.f32 s7, s6, s5
	vldr.32 s5, [fp, #-12]
	vmul.f32 s6, s7, s5
	vstr.32 s6, [fp, #-8]
	vldr.32 s5, [fp, #-12]
	vcvt.s32.f32 s6, s5
	vmov r4, s6
	mov r0, r4
	bl circle_area
	vmov s5, s0
	vstr.32 s5, [fp, #-4]
	ldr r4, [fp, #-60]
	add r5, fp, #-56
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s5, [r4]
	vldr.32 s6, [fp, #-12]
	vadd.f32 s7, s5, s6
	ldr r4, [fp, #-60]
	add r5, fp, #-56
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 s7, [r4]
	vldr.32 s5, [fp, #-8]
	vmov s0, s5
	bl putfloat
	mov r0, #32
	bl putch
	vldr.32 s5, [fp, #-4]
	vcvt.s32.f32 s6, s5
	vmov r4, s6
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r4, [fp, #-64]
	vmov s5, r4
	vcvt.f32.s32 s5, s5
	ldr r4, =1092616192
	vmov s6, r4
	vmul.f32 s7, s5, s6
	vcvt.s32.f32 s5, s7
	vmov r4, s5
	str r4, [fp, #-64]
	ldr r4, [fp, #-60]
	add r5, r4, #1
	str r5, [fp, #-60]
	b .L121
.Lmain_END:
	mov sp, fp
	vpop {s5, s6, s7}
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

	b .LiteralPool0
.LTORG
.LiteralPool0:
