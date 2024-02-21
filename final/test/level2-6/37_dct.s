	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.data
	.comm	test_idct, 256, 4
	.comm	test_dct, 256, 4
	.comm	test_block, 256, 4
	.text
	.global my_fabs
	.type my_fabs , %function
my_fabs:
	push {r4, fp}
	vpush {s5, s6, s7}
	mov fp, sp
	sub sp, sp, #4
.L121:                               	@ successors = .L125, .L126
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	bgt .L126
	b .L125
.L123:                               	@ predecessors = .L125
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vsub.f32 s7, s6, s5
	vmov s0, s7
	b .Lmy_fabs_END
.L125:                               	@ predecessors = .L121                               	@ successors = .L123
	b .L123
.L126:                               	@ predecessors = .L121
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
.Lmy_fabs_END:
	mov sp, fp
	vpop {s5, s6, s7}
	pop {r4, fp}
	bx lr

	.global p
	.type p , %function
p:
	push {r4, fp}
	vpush {s5, s6, s7, s8}
	mov fp, sp
	sub sp, sp, #4
.L129:
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
.L135:                               	@ successors = .L139, .L140
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	bl my_fabs
	vmov s5, s0
	ldr r4, =897988541
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	ble .L140
	b .L139
.L137:                               	@ predecessors = .L139
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
.L139:                               	@ predecessors = .L135                               	@ successors = .L137
	b .L137
.L140:                               	@ predecessors = .L135
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
.L143:                               	@ successors = .L147, .L151
	vstr.32 s0, [fp, #-8]
	vldr.32 s5, [fp, #-8]
	ldr r4, =1086918619
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	bgt .L151
	b .L147
.L145:                               	@ predecessors = .L150, .L151                               	@ successors = .L158, .L159
	vldr.32 s5, [fp, #-8]
	ldr r4, =1078530011
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	bgt .L159
	b .L158
.L147:                               	@ predecessors = .L143                               	@ successors = .L148
	b .L148
.L148:                               	@ predecessors = .L147                               	@ successors = .L150, .L151
	vldr.32 s5, [fp, #-8]
	ldr r4, =3234402267
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	blt .L151
	b .L150
.L150:                               	@ predecessors = .L148                               	@ successors = .L145
	b .L145
.L151:                               	@ predecessors = .L143, .L148                               	@ successors = .L145
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
	b .L145
.L156:                               	@ predecessors = .L158, .L159                               	@ successors = .L163, .L164
	vldr.32 s5, [fp, #-8]
	ldr r4, =3226013659
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	blt .L164
	b .L163
.L158:                               	@ predecessors = .L145                               	@ successors = .L156
	b .L156
.L159:                               	@ predecessors = .L145                               	@ successors = .L156
	vldr.32 s5, [fp, #-8]
	ldr r4, =1086918619
	vmov s6, r4
	vsub.f32 s7, s5, s6
	vstr.32 s7, [fp, #-8]
	b .L156
.L161:                               	@ predecessors = .L163, .L164
	vldr.32 s5, [fp, #-8]
	vmov s0, s5
	bl my_sin_impl
	vmov s5, s0
	vmov s0, s5
	b .Lmy_sin_END
.L163:                               	@ predecessors = .L156                               	@ successors = .L161
	b .L161
.L164:                               	@ predecessors = .L156                               	@ successors = .L161
	vldr.32 s5, [fp, #-8]
	ldr r4, =1086918619
	vmov s6, r4
	vadd.f32 s7, s5, s6
	vstr.32 s7, [fp, #-8]
	b .L161
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
.L167:
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

	.global write_mat
	.type write_mat , %function
write_mat:
	push {r4, r5, r6, r7, fp, lr}
	vpush {s5}
	mov fp, sp
	sub sp, sp, #20
.L170:                               	@ successors = .L175
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	str r2, [fp, #-12]
	mov r4, #0
	str r4, [fp, #-8]
	b .L175
.L175:                               	@ predecessors = .L170, .L188                               	@ successors = .L179, .L180
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-16]
	cmp r4, r5
	blt .L180
	b .L179
.L176:                               	@ predecessors = .L179
	mov r0, #10
	bl putch
	b .Lwrite_mat_END
.L179:                               	@ predecessors = .L175                               	@ successors = .L176
	b .L176
.L180:                               	@ predecessors = .L175                               	@ successors = .L187
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-8]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, r5
	vldr.32 s5, [r4]
	vmov s0, s5
	bl putfloat
	mov r4, #1
	str r4, [fp, #-4]
	b .L187
.L187:                               	@ predecessors = .L180, .L192                               	@ successors = .L191, .L192
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-12]
	cmp r4, r5
	blt .L192
	b .L191
.L188:                               	@ predecessors = .L191                               	@ successors = .L175
	mov r0, #10
	bl putch
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	b .L175
.L191:                               	@ predecessors = .L187                               	@ successors = .L188
	b .L188
.L192:                               	@ predecessors = .L187                               	@ successors = .L187
	mov r0, #32
	bl putch
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-8]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-4]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s5, [r4]
	vmov s0, s5
	bl putfloat
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	b .L187
.Lwrite_mat_END:
	mov sp, fp
	vpop {s5}
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

	.global dct
	.type dct , %function
dct:
	push {r4, r5, r6, r7, fp, lr}
	vpush {s5, s6, s7, s8, s9, s10}
	mov fp, sp
	sub sp, sp, #32
.L201:                               	@ successors = .L207
	str r0, [fp, #-32]
	str r1, [fp, #-28]
	str r2, [fp, #-24]
	str r3, [fp, #-20]
	mov r4, #0
	str r4, [fp, #-16]
	b .L207
.L207:                               	@ predecessors = .L201, .L215                               	@ successors = .L211, .L212
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-24]
	cmp r4, r5
	blt .L212
	b .L211
.L208:                               	@ predecessors = .L211
	b .Ldct_END
.L211:                               	@ predecessors = .L207                               	@ successors = .L208
	b .L208
.L212:                               	@ predecessors = .L207                               	@ successors = .L214
	mov r4, #0
	str r4, [fp, #-12]
	b .L214
.L214:                               	@ predecessors = .L212, .L227                               	@ successors = .L218, .L219
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-20]
	cmp r4, r5
	blt .L219
	b .L218
.L215:                               	@ predecessors = .L218                               	@ successors = .L207
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	b .L207
.L218:                               	@ predecessors = .L214                               	@ successors = .L215
	b .L215
.L219:                               	@ predecessors = .L214                               	@ successors = .L226
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-12]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, =0
	vmov s5, r5
	vstr.32 s5, [r4]
	mov r4, #0
	str r4, [fp, #-8]
	b .L226
.L226:                               	@ predecessors = .L219, .L234                               	@ successors = .L230, .L231
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-24]
	cmp r4, r5
	blt .L231
	b .L230
.L227:                               	@ predecessors = .L230                               	@ successors = .L214
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	b .L214
.L230:                               	@ predecessors = .L226                               	@ successors = .L227
	b .L227
.L231:                               	@ predecessors = .L226                               	@ successors = .L233
	mov r4, #0
	str r4, [fp, #-4]
	b .L233
.L233:                               	@ predecessors = .L231, .L238                               	@ successors = .L237, .L238
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	cmp r4, r5
	blt .L238
	b .L237
.L234:                               	@ predecessors = .L237                               	@ successors = .L226
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	b .L226
.L237:                               	@ predecessors = .L233                               	@ successors = .L234
	b .L234
.L238:                               	@ predecessors = .L233                               	@ successors = .L233
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-12]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s5, [r4]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-8]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-4]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s6, [r4]
	ldr r4, [fp, #-24]
	vmov s7, r4
	vcvt.f32.s32 s7, s7
	ldr r4, =1078530011
	vmov s8, r4
	vdiv.f32 s9, s8, s7
	ldr r4, [fp, #-8]
	vmov s7, r4
	vcvt.f32.s32 s7, s7
	ldr r4, =1056964608
	vmov s8, r4
	vadd.f32 s10, s7, s8
	vmul.f32 s7, s9, s10
	ldr r4, [fp, #-16]
	vmov s8, r4
	vcvt.f32.s32 s8, s8
	vmul.f32 s9, s7, s8
	vmov s0, s9
	bl my_cos
	vmov s7, s0
	vmul.f32 s8, s6, s7
	ldr r4, [fp, #-20]
	vmov s6, r4
	vcvt.f32.s32 s6, s6
	ldr r4, =1078530011
	vmov s7, r4
	vdiv.f32 s9, s7, s6
	ldr r4, [fp, #-4]
	vmov s6, r4
	vcvt.f32.s32 s6, s6
	ldr r4, =1056964608
	vmov s7, r4
	vadd.f32 s10, s6, s7
	vmul.f32 s6, s9, s10
	ldr r4, [fp, #-12]
	vmov s7, r4
	vcvt.f32.s32 s7, s7
	vmul.f32 s9, s6, s7
	vmov s0, s9
	bl my_cos
	vmov s6, s0
	vmul.f32 s7, s8, s6
	vadd.f32 s6, s5, s7
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-12]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 s6, [r4]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	b .L233
.Ldct_END:
	mov sp, fp
	vpop {s5, s6, s7, s8, s9, s10}
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

	b .LiteralPool0
.LTORG
addr_0_test_idct:
	.word test_idct
addr_0_test_dct:
	.word test_dct
addr_0_test_block:
	.word test_block
.LiteralPool0:
	.global idct
	.type idct , %function
idct:
	push {r4, r5, r6, r7, fp, lr}
	vpush {s5, s6, s7, s8, s9, s10}
	mov fp, sp
	sub sp, sp, #32
.L266:                               	@ successors = .L272
	str r0, [fp, #-32]
	str r1, [fp, #-28]
	str r2, [fp, #-24]
	str r3, [fp, #-20]
	mov r4, #0
	str r4, [fp, #-16]
	b .L272
.L272:                               	@ predecessors = .L266, .L280                               	@ successors = .L276, .L277
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-24]
	cmp r4, r5
	blt .L277
	b .L276
.L273:                               	@ predecessors = .L276
	b .Lidct_END
.L276:                               	@ predecessors = .L272                               	@ successors = .L273
	b .L273
.L277:                               	@ predecessors = .L272                               	@ successors = .L279
	mov r4, #0
	str r4, [fp, #-12]
	b .L279
.L279:                               	@ predecessors = .L277, .L343                               	@ successors = .L283, .L284
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-20]
	cmp r4, r5
	blt .L284
	b .L283
.L280:                               	@ predecessors = .L283                               	@ successors = .L272
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	b .L272
.L283:                               	@ predecessors = .L279                               	@ successors = .L280
	b .L280
.L284:                               	@ predecessors = .L279                               	@ successors = .L296
	ldr r4, [fp, #-28]
	mov r5, r4
	mov r4, r5
	vldr.32 s5, [r4]
	ldr r4, =1048576000
	vmov s6, r4
	vmul.f32 s7, s6, s5
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-12]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 s7, [r4]
	mov r4, #1
	str r4, [fp, #-8]
	b .L296
.L296:                               	@ predecessors = .L284, .L301                               	@ successors = .L300, .L301
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-24]
	cmp r4, r5
	blt .L301
	b .L300
.L297:                               	@ predecessors = .L300                               	@ successors = .L319
	mov r4, #1
	str r4, [fp, #-4]
	b .L319
.L300:                               	@ predecessors = .L296                               	@ successors = .L297
	b .L297
.L301:                               	@ predecessors = .L296                               	@ successors = .L296
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-12]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s5, [r4]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-8]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	mov r4, r5
	vldr.32 s6, [r4]
	ldr r4, =1056964608
	vmov s7, r4
	vmul.f32 s8, s7, s6
	vadd.f32 s6, s5, s8
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-12]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 s6, [r4]
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	b .L296
.L319:                               	@ predecessors = .L297, .L324                               	@ successors = .L323, .L324
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	cmp r4, r5
	blt .L324
	b .L323
.L320:                               	@ predecessors = .L323                               	@ successors = .L342
	mov r4, #1
	str r4, [fp, #-8]
	b .L342
.L323:                               	@ predecessors = .L319                               	@ successors = .L320
	b .L320
.L324:                               	@ predecessors = .L319                               	@ successors = .L319
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-12]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s5, [r4]
	ldr r4, [fp, #-28]
	mov r5, r4
	ldr r4, [fp, #-4]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s6, [r4]
	ldr r4, =1056964608
	vmov s7, r4
	vmul.f32 s8, s7, s6
	vadd.f32 s6, s5, s8
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-12]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 s6, [r4]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	b .L319
.L342:                               	@ predecessors = .L320, .L349                               	@ successors = .L346, .L347
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-24]
	cmp r4, r5
	blt .L347
	b .L346
.L343:                               	@ predecessors = .L346                               	@ successors = .L279
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-12]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s5, [r4]
	ldr r4, =1073741824
	vmov s6, r4
	vmul.f32 s7, s5, s6
	ldr r4, [fp, #-24]
	vmov s5, r4
	vcvt.f32.s32 s5, s5
	vdiv.f32 s6, s7, s5
	ldr r4, =1073741824
	vmov s5, r4
	vmul.f32 s7, s6, s5
	ldr r4, [fp, #-20]
	vmov s5, r4
	vcvt.f32.s32 s5, s5
	vdiv.f32 s6, s7, s5
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-12]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 s6, [r4]
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	b .L279
.L346:                               	@ predecessors = .L342                               	@ successors = .L343
	b .L343
.L347:                               	@ predecessors = .L342                               	@ successors = .L348
	mov r4, #1
	str r4, [fp, #-4]
	b .L348
.L348:                               	@ predecessors = .L347, .L353                               	@ successors = .L352, .L353
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-20]
	cmp r4, r5
	blt .L353
	b .L352
.L349:                               	@ predecessors = .L352                               	@ successors = .L342
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	b .L342
.L352:                               	@ predecessors = .L348                               	@ successors = .L349
	b .L349
.L353:                               	@ predecessors = .L348                               	@ successors = .L348
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-12]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s5, [r4]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-8]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-4]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s6, [r4]
	ldr r4, [fp, #-24]
	vmov s7, r4
	vcvt.f32.s32 s7, s7
	ldr r4, =1078530011
	vmov s8, r4
	vdiv.f32 s9, s8, s7
	ldr r4, [fp, #-16]
	vmov s7, r4
	vcvt.f32.s32 s7, s7
	ldr r4, =1056964608
	vmov s8, r4
	vadd.f32 s10, s7, s8
	vmul.f32 s7, s9, s10
	ldr r4, [fp, #-8]
	vmov s8, r4
	vcvt.f32.s32 s8, s8
	vmul.f32 s9, s7, s8
	vmov s0, s9
	bl my_cos
	vmov s7, s0
	vmul.f32 s8, s6, s7
	ldr r4, [fp, #-20]
	vmov s6, r4
	vcvt.f32.s32 s6, s6
	ldr r4, =1078530011
	vmov s7, r4
	vdiv.f32 s9, s7, s6
	ldr r4, [fp, #-12]
	vmov s6, r4
	vcvt.f32.s32 s6, s6
	ldr r4, =1056964608
	vmov s7, r4
	vadd.f32 s10, s6, s7
	vmul.f32 s6, s9, s10
	ldr r4, [fp, #-4]
	vmov s7, r4
	vcvt.f32.s32 s7, s7
	vmul.f32 s9, s6, s7
	vmov s0, s9
	bl my_cos
	vmov s6, s0
	vmul.f32 s7, s8, s6
	vadd.f32 s6, s5, s7
	ldr r4, [fp, #-32]
	ldr r5, [fp, #-16]
	mov r6, #32
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-12]
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 s6, [r4]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	b .L348
.Lidct_END:
	mov sp, fp
	vpop {s5, s6, s7, s8, s9, s10}
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	vpush {s5}
	mov fp, sp
	sub sp, sp, #20
.L394:                               	@ successors = .L398
	bl getint
	mov r4, r0
	str r4, [fp, #-16]
	bl getint
	mov r4, r0
	str r4, [fp, #-12]
	mov r4, #0
	str r4, [fp, #-8]
	b .L398
.L398:                               	@ predecessors = .L394, .L406                               	@ successors = .L402, .L403
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-16]
	cmp r4, r5
	blt .L403
	b .L402
.L399:                               	@ predecessors = .L402
	ldr r4, addr_1_test_dct
	mov r5, r4
	ldr r4, addr_1_test_block
	mov r6, r4
	ldr r4, [fp, #-16]
	ldr r7, [fp, #-12]
	mov r3, r7
	mov r2, r4
	mov r1, r6
	mov r0, r5
	bl dct
	ldr r4, addr_1_test_dct
	mov r5, r4
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-12]
	mov r2, r6
	mov r1, r4
	mov r0, r5
	bl write_mat
	ldr r4, addr_1_test_idct
	mov r5, r4
	ldr r4, addr_1_test_dct
	mov r6, r4
	ldr r4, [fp, #-16]
	ldr r7, [fp, #-12]
	mov r3, r7
	mov r2, r4
	mov r1, r6
	mov r0, r5
	bl idct
	ldr r4, addr_1_test_idct
	mov r5, r4
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-12]
	mov r2, r6
	mov r1, r4
	mov r0, r5
	bl write_mat
	mov r0, #0
	b .Lmain_END
.L402:                               	@ predecessors = .L398                               	@ successors = .L399
	b .L399
.L403:                               	@ predecessors = .L398                               	@ successors = .L405
	mov r4, #0
	str r4, [fp, #-4]
	b .L405
.L405:                               	@ predecessors = .L403, .L410                               	@ successors = .L409, .L410
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-12]
	cmp r4, r5
	blt .L410
	b .L409
.L406:                               	@ predecessors = .L409                               	@ successors = .L398
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	b .L398
.L409:                               	@ predecessors = .L405                               	@ successors = .L406
	b .L406
.L410:                               	@ predecessors = .L405                               	@ successors = .L405
	bl getfloat
	vmov s5, s0
	ldr r4, [fp, #-8]
	ldr r5, addr_1_test_block
	mov r6, #32
	mul r7, r4, r6
	add r4, r5, r7
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s5, [r5]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	b .L405
.Lmain_END:
	mov sp, fp
	vpop {s5}
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

	b .LiteralPool1
.LTORG
addr_1_test_idct:
	.word test_idct
addr_1_test_dct:
	.word test_dct
addr_1_test_block:
	.word test_block
.LiteralPool1:
addr_2_test_idct:
	.word test_idct
addr_2_test_dct:
	.word test_dct
addr_2_test_block:
	.word test_block
