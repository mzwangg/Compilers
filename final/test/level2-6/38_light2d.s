	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.data
	.global seed
	.align 4
	.size seed, 4
seed:
	.word 0
	.text
	.global rand
	.type rand , %function
rand:
	push {r4, r5, r6, fp}
	mov fp, sp
.L104:                               	@ successors = .L108, .L109
	ldr r4, addr_0_seed
	ldr r5, [r4]
	ldr r4, =19980130
	mul r6, r5, r4
	ldr r4, =23333
	add r5, r6, r4
	ldr r4, =100000007
	sdiv r6, r5, r4
	mul r6, r6, r4
	sub r4, r5, r6
	ldr r5, addr_0_seed
	str r4, [r5]
	ldr r4, addr_0_seed
	ldr r5, [r4]
	cmp r5, #0
	blt .L109
	b .L108
.L106:                               	@ predecessors = .L108, .L109
	ldr r4, addr_0_seed
	ldr r5, [r4]
	mov r0, r5
	b .Lrand_END
.L108:                               	@ predecessors = .L104                               	@ successors = .L106
	b .L106
.L109:                               	@ predecessors = .L104                               	@ successors = .L106
	ldr r4, addr_0_seed
	ldr r5, [r4]
	ldr r4, =100000007
	add r6, r5, r4
	ldr r4, addr_0_seed
	str r6, [r4]
	b .L106
.Lrand_END:
	pop {r4, r5, r6, fp}
	bx lr

	.global my_fabs
	.type my_fabs , %function
my_fabs:
	push {r4, fp}
	vpush {s5, s6, s7}
	mov fp, sp
	sub sp, sp, #4
.L112:                               	@ successors = .L116, .L117
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	bgt .L117
	b .L116
.L114:                               	@ predecessors = .L116
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vsub.f32 s7, s6, s5
	vmov s0, s7
	b .Lmy_fabs_END
.L116:                               	@ predecessors = .L112                               	@ successors = .L114
	b .L114
.L117:                               	@ predecessors = .L112
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
.Lmy_fabs_END:
	mov sp, fp
	vpop {s5, s6, s7}
	pop {r4, fp}
	bx lr

	.global my_sqrt
	.type my_sqrt , %function
my_sqrt:
	push {r4, r5, fp}
	vpush {s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #12
.L120:                               	@ successors = .L127
	vstr.32 s0, [fp, #-12]
	vldr.32 s5, [fp, #-12]
	ldr r4, =1090519040
	vmov s6, r4
	vdiv.f32 s7, s5, s6
	ldr r4, =1056964608
	vmov s5, r4
	vadd.f32 s6, s7, s5
	vldr.32 s5, [fp, #-12]
	ldr r4, =1073741824
	vmov s7, r4
	vmul.f32 s8, s7, s5
	vldr.32 s5, [fp, #-12]
	ldr r4, =1082130432
	vmov s7, r4
	vadd.f32 s9, s5, s7
	vdiv.f32 s5, s8, s9
	vadd.f32 s7, s6, s5
	vstr.32 s7, [fp, #-8]
	mov r4, #10
	str r4, [fp, #-4]
	b .L127
.L127:                               	@ predecessors = .L120, .L131                               	@ successors = .L130, .L131
	ldr r4, [fp, #-4]
	cmp r4, #0
	bne .L131
	b .L130
.L128:                               	@ predecessors = .L130
	vldr.32 s5, [fp, #-8]
	vmov s0, s5
	b .Lmy_sqrt_END
.L130:                               	@ predecessors = .L127                               	@ successors = .L128
	b .L128
.L131:                               	@ predecessors = .L127                               	@ successors = .L127
	vldr.32 s5, [fp, #-8]
	vldr.32 s6, [fp, #-12]
	vldr.32 s7, [fp, #-8]
	vdiv.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	ldr r4, =1073741824
	vmov s5, r4
	vdiv.f32 s7, s6, s5
	vstr.32 s7, [fp, #-8]
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	str r5, [fp, #-4]
	b .L127
.Lmy_sqrt_END:
	mov sp, fp
	vpop {s5, s6, s7, s8, s9}
	pop {r4, r5, fp}
	bx lr

	.global p
	.type p , %function
p:
	push {r4, fp}
	vpush {s5, s6, s7, s8}
	mov fp, sp
	sub sp, sp, #4
.L137:
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r4, =1077936128
	vmov s6, r4
	vmul.f32 s7, s6, s5
	vldr.32 s5, [fp, #-4]
	ldr r4, =1082130432
	vmov s6, r4
	vmul.f32 s8, s6, s5
	vldr.32 s5, [fp, #-4]
	vmul.f32 s6, s8, s5
	vldr.32 s5, [fp, #-4]
	vmul.f32 s8, s6, s5
	vsub.f32 s5, s7, s8
	vmov s0, s5
	mov sp, fp
	vpop {s5, s6, s7, s8}
	pop {r4, fp}
	bx lr

	.global my_sin_impl
	.type my_sin_impl , %function
my_sin_impl:
	push {r4, fp, lr}
	vpush {s5, s6, s7}
	mov fp, sp
	sub sp, sp, #4
.L143:                               	@ successors = .L147, .L148
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	bl my_fabs
	vmov s5, s0
	ldr r4, =897988541
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	ble .L148
	b .L147
.L145:                               	@ predecessors = .L147
	vldr.32 s5, [fp, #-4]
	ldr r4, =1077936128
	vmov s6, r4
	vdiv.f32 s7, s5, s6
	vmov s0, s7
	bl my_sin_impl
	vmov s5, s0
	vmov s0, s5
	bl p
	vmov s5, s0
	vmov s0, s5
	b .Lmy_sin_impl_END
.L147:                               	@ predecessors = .L143                               	@ successors = .L145
	b .L145
.L148:                               	@ predecessors = .L143
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
.Lmy_sin_impl_END:
	mov sp, fp
	vpop {s5, s6, s7}
	pop {r4, fp, lr}
	bx lr

	.global my_sin
	.type my_sin , %function
my_sin:
	push {r4, fp, lr}
	vpush {s5, s6, s7, s8}
	mov fp, sp
	sub sp, sp, #8
.L151:                               	@ successors = .L155, .L159
	vstr.32 s0, [fp, #-8]
	vldr.32 s5, [fp, #-8]
	ldr r4, =1086918619
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	bgt .L159
	b .L155
.L153:                               	@ predecessors = .L158, .L159                               	@ successors = .L166, .L167
	vldr.32 s5, [fp, #-8]
	ldr r4, =1078530011
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	bgt .L167
	b .L166
.L155:                               	@ predecessors = .L151                               	@ successors = .L156
	b .L156
.L156:                               	@ predecessors = .L155                               	@ successors = .L158, .L159
	vldr.32 s5, [fp, #-8]
	ldr r4, =3234402267
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	blt .L159
	b .L158
.L158:                               	@ predecessors = .L156                               	@ successors = .L153
	b .L153
.L159:                               	@ predecessors = .L151, .L156                               	@ successors = .L153
	vldr.32 s5, [fp, #-8]
	ldr r4, =1086918619
	vmov s6, r4
	vdiv.f32 s7, s5, s6
	vcvt.s32.f32 s5, s7
	vmov r4, s5
	str r4, [fp, #-4]
	vldr.32 s5, [fp, #-8]
	ldr r4, [fp, #-4]
	vmov s6, r4
	vcvt.f32.s32 s6, s6
	ldr r4, =1086918619
	vmov s7, r4
	vmul.f32 s8, s6, s7
	vsub.f32 s6, s5, s8
	vstr.32 s6, [fp, #-8]
	b .L153
.L164:                               	@ predecessors = .L166, .L167                               	@ successors = .L171, .L172
	vldr.32 s5, [fp, #-8]
	ldr r4, =3226013659
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	blt .L172
	b .L171
.L166:                               	@ predecessors = .L153                               	@ successors = .L164
	b .L164
.L167:                               	@ predecessors = .L153                               	@ successors = .L164
	vldr.32 s5, [fp, #-8]
	ldr r4, =1086918619
	vmov s6, r4
	vsub.f32 s7, s5, s6
	vstr.32 s7, [fp, #-8]
	b .L164
.L169:                               	@ predecessors = .L171, .L172
	vldr.32 s5, [fp, #-8]
	vmov s0, s5
	bl my_sin_impl
	vmov s5, s0
	vmov s0, s5
	b .Lmy_sin_END
.L171:                               	@ predecessors = .L164                               	@ successors = .L169
	b .L169
.L172:                               	@ predecessors = .L164                               	@ successors = .L169
	vldr.32 s5, [fp, #-8]
	ldr r4, =1086918619
	vmov s6, r4
	vadd.f32 s7, s5, s6
	vstr.32 s7, [fp, #-8]
	b .L169
.Lmy_sin_END:
	mov sp, fp
	vpop {s5, s6, s7, s8}
	pop {r4, fp, lr}
	bx lr

	.global my_cos
	.type my_cos , %function
my_cos:
	push {r4, fp, lr}
	vpush {s5, s6, s7}
	mov fp, sp
	sub sp, sp, #4
.L175:
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r4, =1070141403
	vmov s6, r4
	vadd.f32 s7, s5, s6
	vmov s0, s7
	bl my_sin
	vmov s5, s0
	vmov s0, s5
	mov sp, fp
	vpop {s5, s6, s7}
	pop {r4, fp, lr}
	bx lr

	.global circle_sdf
	.type circle_sdf , %function
circle_sdf:
	push {fp, lr}
	vpush {s5, s6, s7, s8}
	mov fp, sp
	sub sp, sp, #24
.L178:
	vstr.32 s0, [fp, #-24]
	vstr.32 s1, [fp, #-20]
	vstr.32 s2, [fp, #-16]
	vstr.32 s3, [fp, #-12]
	vldr.32 s5, [fp, #-24]
	vldr.32 s6, [fp, #-16]
	vsub.f32 s7, s5, s6
	vstr.32 s7, [fp, #-8]
	vldr.32 s5, [fp, #-20]
	vldr.32 s6, [fp, #-12]
	vsub.f32 s7, s5, s6
	vstr.32 s7, [fp, #-4]
	vldr.32 s5, [fp, #-8]
	vldr.32 s6, [fp, #-8]
	vmul.f32 s7, s5, s6
	vldr.32 s5, [fp, #-4]
	vldr.32 s6, [fp, #-4]
	vmul.f32 s8, s5, s6
	vadd.f32 s5, s7, s8
	vmov s0, s5
	bl my_sqrt
	vmov s5, s0
	vldr.32 s6, [fp, #24]
	vsub.f32 s7, s5, s6
	vmov s0, s7
	mov sp, fp
	vpop {s5, s6, s7, s8}
	pop {fp, lr}
	bx lr

	.global scene
	.type scene , %function
scene:
	push {r4, r5, r6, r7, fp, lr}
	vpush {s5, s6, s7}
	mov fp, sp
	sub sp, sp, #20
.L195:                               	@ successors = .L208, .L209
	vstr.32 s0, [fp, #-20]
	vstr.32 s1, [fp, #-16]
	str r2, [fp, #-12]
	vldr.32 s5, [fp, #-20]
	vldr.32 s6, [fp, #-16]
	ldr r4, =1036831949
	vmov s7, r4
	vpush {s7}
	ldr r4, =1053609165
	vmov s3, r4
	ldr r4, =1053609165
	vmov s2, r4
	vmov s1, s6
	vmov s0, s5
	bl circle_sdf
	add sp, sp, #4
	vmov s5, s0
	vstr.32 s5, [fp, #-8]
	vldr.32 s5, [fp, #-20]
	vldr.32 s6, [fp, #-16]
	ldr r4, =1028443341
	vmov s7, r4
	vpush {s7}
	ldr r4, =1058642330
	vmov s3, r4
	ldr r4, =1058642330
	vmov s2, r4
	vmov s1, s6
	vmov s0, s5
	bl circle_sdf
	add sp, sp, #4
	vmov s5, s0
	vstr.32 s5, [fp, #-4]
	vldr.32 s5, [fp, #-8]
	vldr.32 s6, [fp, #-4]
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	blt .L209
	b .L208
.L205:                               	@ predecessors = .L209, .L215
	b .Lscene_END
.L208:                               	@ predecessors = .L195                               	@ successors = .L215
	b .L215
.L209:                               	@ predecessors = .L195                               	@ successors = .L205
	vldr.32 s5, [fp, #-8]
	ldr r4, [fp, #-12]
	mov r5, r4
	vstr.32 s5, [r5]
	ldr r4, [fp, #-12]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =1077936128
	vmov s5, r4
	vstr.32 s5, [r5]
	b .L205
.L215:                               	@ predecessors = .L208                               	@ successors = .L205
	vldr.32 s5, [fp, #-4]
	ldr r4, [fp, #-12]
	mov r5, r4
	vstr.32 s5, [r5]
	ldr r4, [fp, #-12]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, =0
	vmov s5, r4
	vstr.32 s5, [r5]
	b .L205
.Lscene_END:
	mov sp, fp
	vpop {s5, s6, s7}
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

	.global trace
	.type trace , %function
trace:
	push {r4, r5, r6, r7, fp, lr}
	vpush {s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #32
.L221:                               	@ successors = .L228
	vstr.32 s0, [fp, #-32]
	vstr.32 s1, [fp, #-28]
	vstr.32 s2, [fp, #-24]
	vstr.32 s3, [fp, #-20]
	ldr r4, =0
	vmov s5, r4
	vstr.32 s5, [fp, #-16]
	mov r4, #0
	str r4, [fp, #-12]
	b .L228
.L228:                               	@ predecessors = .L221, .L244                               	@ successors = .L231, .L232
	ldr r4, [fp, #-12]
	cmp r4, #10
	blt .L232
	b .L231
.L229:                               	@ predecessors = .L231, .L234
	ldr r4, =0
	vmov s5, r4
	vmov s0, s5
	b .Ltrace_END
.L231:                               	@ predecessors = .L228                               	@ successors = .L229
	b .L229
.L232:                               	@ predecessors = .L228                               	@ successors = .L234, .L235
	vldr.32 s5, [fp, #-16]
	ldr r4, =1073741824
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	blt .L235
	b .L234
.L234:                               	@ predecessors = .L232                               	@ successors = .L229
	b .L229
.L235:                               	@ predecessors = .L232                               	@ successors = .L247, .L248
	vldr.32 s5, [fp, #-32]
	vldr.32 s6, [fp, #-24]
	vldr.32 s7, [fp, #-16]
	vmul.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	vldr.32 s5, [fp, #-28]
	vldr.32 s7, [fp, #-20]
	vldr.32 s8, [fp, #-16]
	vmul.f32 s9, s7, s8
	vadd.f32 s7, s5, s9
	add r4, fp, #-8
	mov r5, r4
	mov r2, r5
	vmov s1, s7
	vmov s0, s6
	bl scene
	add r4, fp, #-8
	mov r5, r4
	vldr.32 s5, [r5]
	ldr r4, =897988541
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	blt .L248
	b .L247
.L244:                               	@ predecessors = .L247                               	@ successors = .L228
	vldr.32 s5, [fp, #-16]
	add r4, fp, #-8
	mov r5, r4
	vldr.32 s6, [r5]
	vadd.f32 s7, s5, s6
	vstr.32 s7, [fp, #-16]
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	b .L228
.L247:                               	@ predecessors = .L235                               	@ successors = .L244
	b .L244
.L248:                               	@ predecessors = .L235
	add r4, fp, #-8
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	vmov s0, s5
.Ltrace_END:
	mov sp, fp
	vpop {s5, s6, s7, s8, s9}
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

	b .LiteralPool0
.LTORG
addr_0_seed:
	.word seed
.LiteralPool0:
	.global sample
	.type sample , %function
sample:
	push {r4, r5, fp, lr}
	vpush {s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #24
.L255:                               	@ successors = .L260
	vstr.32 s0, [fp, #-24]
	vstr.32 s1, [fp, #-20]
	ldr r4, =0
	vmov s5, r4
	vstr.32 s5, [fp, #-16]
	mov r4, #0
	str r4, [fp, #-12]
	b .L260
.L260:                               	@ predecessors = .L255, .L264                               	@ successors = .L263, .L264
	ldr r4, [fp, #-12]
	cmp r4, #24
	blt .L264
	b .L263
.L261:                               	@ predecessors = .L263
	vldr.32 s5, [fp, #-16]
	ldr r4, =1103101952
	vmov s6, r4
	vdiv.f32 s7, s5, s6
	vmov s0, s7
	b .Lsample_END
.L263:                               	@ predecessors = .L260                               	@ successors = .L261
	b .L261
.L264:                               	@ predecessors = .L260                               	@ successors = .L260
	bl rand
	mov r4, r0
	vmov s5, r4
	vcvt.f32.s32 s5, s5
	vstr.32 s5, [fp, #-8]
	ldr r4, [fp, #-12]
	vmov s5, r4
	vcvt.f32.s32 s5, s5
	vldr.32 s6, [fp, #-8]
	ldr r4, =1287568417
	vmov s7, r4
	vdiv.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	ldr r4, =1086918619
	vmov s5, r4
	vmul.f32 s7, s5, s6
	ldr r4, =1103101952
	vmov s5, r4
	vdiv.f32 s6, s7, s5
	vstr.32 s6, [fp, #-4]
	vldr.32 s5, [fp, #-16]
	vldr.32 s6, [fp, #-24]
	vldr.32 s7, [fp, #-20]
	vldr.32 s8, [fp, #-4]
	vmov s0, s8
	bl my_cos
	vmov s8, s0
	vldr.32 s9, [fp, #-4]
	vmov s0, s9
	bl my_sin
	vmov s9, s0
	vmov s3, s9
	vmov s2, s8
	vmov s1, s7
	vmov s0, s6
	bl trace
	vmov s6, s0
	vadd.f32 s7, s5, s6
	vstr.32 s7, [fp, #-16]
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	b .L260
.Lsample_END:
	mov sp, fp
	vpop {s5, s6, s7, s8, s9}
	pop {r4, r5, fp, lr}
	bx lr

	.global write_pgm
	.type write_pgm , %function
write_pgm:
	push {r4, r5, fp, lr}
	vpush {s5, s6, s7, s8}
	mov fp, sp
	sub sp, sp, #20
.L276:                               	@ successors = .L278
	mov r0, #80
	bl putch
	mov r0, #50
	bl putch
	mov r0, #10
	bl putch
	mov r0, #192
	bl putint
	mov r0, #32
	bl putch
	mov r0, #192
	bl putint
	mov r0, #32
	bl putch
	mov r0, #255
	bl putint
	mov r0, #10
	bl putch
	mov r4, #0
	str r4, [fp, #-20]
	b .L278
.L278:                               	@ predecessors = .L276, .L285                               	@ successors = .L281, .L282
	ldr r4, [fp, #-20]
	cmp r4, #192
	blt .L282
	b .L281
.L279:                               	@ predecessors = .L281
	b .Lwrite_pgm_END
.L281:                               	@ predecessors = .L278                               	@ successors = .L279
	b .L279
.L282:                               	@ predecessors = .L278                               	@ successors = .L284
	mov r4, #0
	str r4, [fp, #-16]
	b .L284
.L284:                               	@ predecessors = .L282, .L296                               	@ successors = .L287, .L288
	ldr r4, [fp, #-16]
	cmp r4, #192
	blt .L288
	b .L287
.L285:                               	@ predecessors = .L287                               	@ successors = .L278
	mov r0, #10
	bl putch
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-20]
	b .L278
.L287:                               	@ predecessors = .L284                               	@ successors = .L285
	b .L285
.L288:                               	@ predecessors = .L284                               	@ successors = .L298, .L299
	ldr r4, [fp, #-16]
	vmov s5, r4
	vcvt.f32.s32 s5, s5
	vstr.32 s5, [fp, #-12]
	ldr r4, [fp, #-20]
	vmov s5, r4
	vcvt.f32.s32 s5, s5
	vstr.32 s5, [fp, #-8]
	vldr.32 s5, [fp, #-12]
	ldr r4, =1128267776
	vmov s6, r4
	vdiv.f32 s7, s5, s6
	vldr.32 s5, [fp, #-8]
	ldr r4, =1128267776
	vmov s6, r4
	vdiv.f32 s8, s5, s6
	vmov s1, s8
	vmov s0, s7
	bl sample
	vmov s5, s0
	ldr r4, =1132396544
	vmov s6, r4
	vmul.f32 s7, s5, s6
	vcvt.s32.f32 s5, s7
	vmov r4, s5
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #255
	bgt .L299
	b .L298
.L296:                               	@ predecessors = .L298, .L299                               	@ successors = .L284
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putint
	mov r0, #32
	bl putch
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	b .L284
.L298:                               	@ predecessors = .L288                               	@ successors = .L296
	b .L296
.L299:                               	@ predecessors = .L288                               	@ successors = .L296
	mov r4, #255
	str r4, [fp, #-4]
	b .L296
.Lwrite_pgm_END:
	mov sp, fp
	vpop {s5, s6, s7, s8}
	pop {r4, r5, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {fp, lr}
	mov fp, sp
.L303:
	bl write_pgm
	mov r0, #0
	pop {fp, lr}
	bx lr

addr_1_seed:
	.word seed
