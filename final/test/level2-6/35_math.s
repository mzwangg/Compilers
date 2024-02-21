	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.text
	.global my_fabs
	.type my_fabs , %function
my_fabs:
	push {r4, fp}
	vpush {s5, s6, s7}
	mov fp, sp
	sub sp, sp, #4
.L145:                               	@ successors = .L149, .L150
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	bgt .L150
	b .L149
.L147:                               	@ predecessors = .L149
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vsub.f32 s7, s6, s5
	vmov s0, s7
	b .Lmy_fabs_END
.L149:                               	@ predecessors = .L145                               	@ successors = .L147
	b .L147
.L150:                               	@ predecessors = .L145
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
.Lmy_fabs_END:
	mov sp, fp
	vpop {s5, s6, s7}
	pop {r4, fp}
	bx lr

	.global my_pow
	.type my_pow , %function
my_pow:
	push {r4, r5, r6, fp, lr}
	vpush {s5, s6, s7}
	mov fp, sp
	sub sp, sp, #12
.L153:                               	@ successors = .L158, .L159
	vstr.32 s0, [fp, #-12]
	str r1, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	blt .L159
	b .L158
.L156:                               	@ predecessors = .L158                               	@ successors = .L163
	ldr r4, =1065353216
	vmov s5, r4
	vstr.32 s5, [fp, #-4]
	b .L163
.L158:                               	@ predecessors = .L153                               	@ successors = .L156
	b .L156
.L159:                               	@ predecessors = .L153
	vldr.32 s5, [fp, #-12]
	ldr r4, [fp, #-8]
	mov r5, #0
	sub r6, r5, r4
	mov r1, r6
	vmov s0, s5
	bl my_pow
	vmov s5, s0
	ldr r4, =1065353216
	vmov s6, r4
	vdiv.f32 s7, s6, s5
	vmov s0, s7
	b .Lmy_pow_END
.L163:                               	@ predecessors = .L156, .L168                               	@ successors = .L166, .L167
	ldr r4, [fp, #-8]
	cmp r4, #0
	bne .L167
	b .L166
.L164:                               	@ predecessors = .L166
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	b .Lmy_pow_END
.L166:                               	@ predecessors = .L163                               	@ successors = .L164
	b .L164
.L167:                               	@ predecessors = .L163                               	@ successors = .L170, .L171
	ldr r4, [fp, #-8]
	mov r5, #2
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	cmp r6, #0
	bne .L171
	b .L170
.L168:                               	@ predecessors = .L170, .L171                               	@ successors = .L163
	vldr.32 s5, [fp, #-12]
	vldr.32 s6, [fp, #-12]
	vmul.f32 s7, s5, s6
	vstr.32 s7, [fp, #-12]
	ldr r4, [fp, #-8]
	mov r5, #2
	sdiv r6, r4, r5
	str r6, [fp, #-8]
	b .L163
.L170:                               	@ predecessors = .L167                               	@ successors = .L168
	b .L168
.L171:                               	@ predecessors = .L167                               	@ successors = .L168
	vldr.32 s5, [fp, #-4]
	vldr.32 s6, [fp, #-12]
	vmul.f32 s7, s5, s6
	vstr.32 s7, [fp, #-4]
	b .L168
.Lmy_pow_END:
	mov sp, fp
	vpop {s5, s6, s7}
	pop {r4, r5, r6, fp, lr}
	bx lr

	.global my_sqrt
	.type my_sqrt , %function
my_sqrt:
	push {r4, r5, fp, lr}
	vpush {s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #12
.L178:                               	@ successors = .L182, .L183
	vstr.32 s0, [fp, #-12]
	vldr.32 s5, [fp, #-12]
	ldr r4, =1120403456
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	bgt .L183
	b .L182
.L180:                               	@ predecessors = .L182                               	@ successors = .L190
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
	b .L190
.L182:                               	@ predecessors = .L178                               	@ successors = .L180
	b .L180
.L183:                               	@ predecessors = .L178
	vldr.32 s5, [fp, #-12]
	ldr r4, =1120403456
	vmov s6, r4
	vdiv.f32 s7, s5, s6
	vmov s0, s7
	bl my_sqrt
	vmov s5, s0
	ldr r4, =1092616192
	vmov s6, r4
	vmul.f32 s7, s6, s5
	vmov s0, s7
	b .Lmy_sqrt_END
.L190:                               	@ predecessors = .L180, .L194                               	@ successors = .L193, .L194
	ldr r4, [fp, #-4]
	cmp r4, #0
	bne .L194
	b .L193
.L191:                               	@ predecessors = .L193
	vldr.32 s5, [fp, #-8]
	vmov s0, s5
	b .Lmy_sqrt_END
.L193:                               	@ predecessors = .L190                               	@ successors = .L191
	b .L191
.L194:                               	@ predecessors = .L190                               	@ successors = .L190
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
	b .L190
.Lmy_sqrt_END:
	mov sp, fp
	vpop {s5, s6, s7, s8, s9}
	pop {r4, r5, fp, lr}
	bx lr

	.global F1
	.type F1 , %function
F1:
	push {r4, fp}
	vpush {s5, s6, s7}
	mov fp, sp
	sub sp, sp, #4
.L200:
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r4, =1065353216
	vmov s6, r4
	vdiv.f32 s7, s6, s5
	vmov s0, s7
	mov sp, fp
	vpop {s5, s6, s7}
	pop {r4, fp}
	bx lr

	.global F2
	.type F2 , %function
F2:
	push {r4, fp, lr}
	vpush {s5, s6, s7}
	mov fp, sp
	sub sp, sp, #4
.L203:
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	vldr.32 s6, [fp, #-4]
	vmul.f32 s7, s5, s6
	ldr r4, =1065353216
	vmov s5, r4
	vsub.f32 s6, s5, s7
	vmov s0, s6
	bl my_sqrt
	vmov s5, s0
	ldr r4, =1065353216
	vmov s6, r4
	vdiv.f32 s7, s6, s5
	vmov s0, s7
	mov sp, fp
	vpop {s5, s6, s7}
	pop {r4, fp, lr}
	bx lr

	.global simpson
	.type simpson , %function
simpson:
	push {r4, fp, lr}
	vpush {s5, s6, s7, s8}
	mov fp, sp
	sub sp, sp, #16
.L207:                               	@ successors = .L217, .L218
	vstr.32 s0, [fp, #-16]
	vstr.32 s1, [fp, #-12]
	str r2, [fp, #-8]
	vldr.32 s5, [fp, #-16]
	vldr.32 s6, [fp, #-12]
	vldr.32 s7, [fp, #-16]
	vsub.f32 s8, s6, s7
	ldr r4, =1073741824
	vmov s6, r4
	vdiv.f32 s7, s8, s6
	vadd.f32 s6, s5, s7
	vstr.32 s6, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #1
	beq .L218
	b .L217
.L215:                               	@ predecessors = .L217                               	@ successors = .L226, .L227
	ldr r4, [fp, #-8]
	cmp r4, #2
	beq .L227
	b .L226
.L217:                               	@ predecessors = .L207                               	@ successors = .L215
	b .L215
.L218:                               	@ predecessors = .L207
	vldr.32 s5, [fp, #-16]
	vmov s0, s5
	bl F1
	vmov s5, s0
	vldr.32 s6, [fp, #-4]
	vmov s0, s6
	bl F1
	vmov s6, s0
	ldr r4, =1082130432
	vmov s7, r4
	vmul.f32 s8, s7, s6
	vadd.f32 s6, s5, s8
	vldr.32 s5, [fp, #-12]
	vmov s0, s5
	bl F1
	vmov s5, s0
	vadd.f32 s7, s6, s5
	vldr.32 s5, [fp, #-12]
	vldr.32 s6, [fp, #-16]
	vsub.f32 s8, s5, s6
	vmul.f32 s5, s7, s8
	ldr r4, =1086324736
	vmov s6, r4
	vdiv.f32 s7, s5, s6
	vmov s0, s7
	b .Lsimpson_END
.L224:                               	@ predecessors = .L226
	ldr r4, =0
	vmov s5, r4
	vmov s0, s5
	b .Lsimpson_END
.L226:                               	@ predecessors = .L215                               	@ successors = .L224
	b .L224
.L227:                               	@ predecessors = .L215
	vldr.32 s5, [fp, #-16]
	vmov s0, s5
	bl F2
	vmov s5, s0
	vldr.32 s6, [fp, #-4]
	vmov s0, s6
	bl F2
	vmov s6, s0
	ldr r4, =1082130432
	vmov s7, r4
	vmul.f32 s8, s7, s6
	vadd.f32 s6, s5, s8
	vldr.32 s5, [fp, #-12]
	vmov s0, s5
	bl F2
	vmov s5, s0
	vadd.f32 s7, s6, s5
	vldr.32 s5, [fp, #-12]
	vldr.32 s6, [fp, #-16]
	vsub.f32 s8, s5, s6
	vmul.f32 s5, s7, s8
	ldr r4, =1086324736
	vmov s6, r4
	vdiv.f32 s7, s5, s6
	vmov s0, s7
.Lsimpson_END:
	mov sp, fp
	vpop {s5, s6, s7, s8}
	pop {r4, fp, lr}
	bx lr

	.global asr5
	.type asr5 , %function
asr5:
	push {r4, fp, lr}
	vpush {s5, s6, s7, s8, s9, s10}
	mov fp, sp
	sub sp, sp, #28
.L233:                               	@ successors = .L256, .L257
	vstr.32 s0, [fp, #-28]
	vstr.32 s1, [fp, #-24]
	vstr.32 s2, [fp, #-20]
	vstr.32 s3, [fp, #-16]
	vldr.32 s5, [fp, #-28]
	vldr.32 s6, [fp, #-24]
	vldr.32 s7, [fp, #-28]
	vsub.f32 s8, s6, s7
	ldr r4, =1073741824
	vmov s6, r4
	vdiv.f32 s7, s8, s6
	vadd.f32 s6, s5, s7
	vstr.32 s6, [fp, #-12]
	vldr.32 s5, [fp, #-28]
	vldr.32 s6, [fp, #-12]
	ldr r4, [fp, #36]
	mov r2, r4
	vmov s1, s6
	vmov s0, s5
	bl simpson
	vmov s5, s0
	vstr.32 s5, [fp, #-8]
	vldr.32 s5, [fp, #-12]
	vldr.32 s6, [fp, #-24]
	ldr r4, [fp, #36]
	mov r2, r4
	vmov s1, s6
	vmov s0, s5
	bl simpson
	vmov s5, s0
	vstr.32 s5, [fp, #-4]
	vldr.32 s5, [fp, #-8]
	vldr.32 s6, [fp, #-4]
	vadd.f32 s7, s5, s6
	vldr.32 s5, [fp, #-16]
	vsub.f32 s6, s7, s5
	vmov s0, s6
	bl my_fabs
	vmov s5, s0
	vldr.32 s6, [fp, #-20]
	ldr r4, =1097859072
	vmov s7, r4
	vmul.f32 s8, s7, s6
	vcmp.f32 s5, s8
	vmrs APSR_nzcv, FPSCR
	ble .L257
	b .L256
.L251:                               	@ predecessors = .L256
	vldr.32 s5, [fp, #-28]
	vldr.32 s6, [fp, #-12]
	vldr.32 s7, [fp, #-20]
	ldr r4, =1073741824
	vmov s8, r4
	vdiv.f32 s9, s7, s8
	vldr.32 s7, [fp, #-8]
	ldr r4, [fp, #36]
	push {r4}
	vmov s3, s7
	vmov s2, s9
	vmov s1, s6
	vmov s0, s5
	bl asr5
	add sp, sp, #4
	vmov s5, s0
	vldr.32 s6, [fp, #-12]
	vldr.32 s7, [fp, #-24]
	vldr.32 s8, [fp, #-20]
	ldr r4, =1073741824
	vmov s9, r4
	vdiv.f32 s10, s8, s9
	vldr.32 s8, [fp, #-4]
	ldr r4, [fp, #36]
	push {r4}
	vmov s3, s8
	vmov s2, s10
	vmov s1, s7
	vmov s0, s6
	bl asr5
	add sp, sp, #4
	vmov s6, s0
	vadd.f32 s7, s5, s6
	vmov s0, s7
	b .Lasr5_END
.L256:                               	@ predecessors = .L233                               	@ successors = .L251
	b .L251
.L257:                               	@ predecessors = .L233
	vldr.32 s5, [fp, #-8]
	vldr.32 s6, [fp, #-4]
	vadd.f32 s7, s5, s6
	vldr.32 s5, [fp, #-8]
	vldr.32 s6, [fp, #-4]
	vadd.f32 s8, s5, s6
	vldr.32 s5, [fp, #-16]
	vsub.f32 s6, s8, s5
	ldr r4, =1097859072
	vmov s5, r4
	vdiv.f32 s8, s6, s5
	vadd.f32 s5, s7, s8
	vmov s0, s5
.Lasr5_END:
	mov sp, fp
	vpop {s5, s6, s7, s8, s9, s10}
	pop {r4, fp, lr}
	bx lr

	b .LiteralPool0
.LTORG
.LiteralPool0:
	.global asr4
	.type asr4 , %function
asr4:
	push {r4, fp, lr}
	vpush {s5, s6, s7, s8, s9}
	mov fp, sp
	sub sp, sp, #16
.L273:
	vstr.32 s0, [fp, #-16]
	vstr.32 s1, [fp, #-12]
	vstr.32 s2, [fp, #-8]
	str r3, [fp, #-4]
	vldr.32 s5, [fp, #-16]
	vldr.32 s6, [fp, #-12]
	vldr.32 s7, [fp, #-8]
	vldr.32 s8, [fp, #-16]
	vldr.32 s9, [fp, #-12]
	ldr r4, [fp, #-4]
	mov r2, r4
	vmov s1, s9
	vmov s0, s8
	bl simpson
	vmov s8, s0
	ldr r4, [fp, #-4]
	push {r4}
	vmov s3, s8
	vmov s2, s7
	vmov s1, s6
	vmov s0, s5
	bl asr5
	add sp, sp, #4
	vmov s5, s0
	vmov s0, s5
	mov sp, fp
	vpop {s5, s6, s7, s8, s9}
	pop {r4, fp, lr}
	bx lr

	.global eee
	.type eee , %function
eee:
	push {r4, fp, lr}
	vpush {s5, s6, s7, s8}
	mov fp, sp
	sub sp, sp, #8
.L285:                               	@ successors = .L289, .L290
	vstr.32 s0, [fp, #-8]
	vldr.32 s5, [fp, #-8]
	ldr r4, =981668463
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	bgt .L290
	b .L289
.L287:                               	@ predecessors = .L289
	vldr.32 s5, [fp, #-8]
	ldr r4, =1065353216
	vmov s6, r4
	vadd.f32 s7, s5, s6
	vldr.32 s5, [fp, #-8]
	vldr.32 s6, [fp, #-8]
	vmul.f32 s8, s5, s6
	ldr r4, =1073741824
	vmov s5, r4
	vdiv.f32 s6, s8, s5
	vadd.f32 s5, s7, s6
	vldr.32 s6, [fp, #-8]
	mov r1, #3
	vmov s0, s6
	bl my_pow
	vmov s6, s0
	ldr r4, =1086324736
	vmov s7, r4
	vdiv.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	vldr.32 s5, [fp, #-8]
	mov r1, #4
	vmov s0, s5
	bl my_pow
	vmov s5, s0
	ldr r4, =1103101952
	vmov s7, r4
	vdiv.f32 s8, s5, s7
	vadd.f32 s5, s6, s8
	vldr.32 s6, [fp, #-8]
	mov r1, #5
	vmov s0, s6
	bl my_pow
	vmov s6, s0
	ldr r4, =1123024896
	vmov s7, r4
	vdiv.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	vmov s0, s6
	b .Leee_END
.L289:                               	@ predecessors = .L285                               	@ successors = .L287
	b .L287
.L290:                               	@ predecessors = .L285
	vldr.32 s5, [fp, #-8]
	ldr r4, =1073741824
	vmov s6, r4
	vdiv.f32 s7, s5, s6
	vmov s0, s7
	bl eee
	vmov s5, s0
	vstr.32 s5, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	vldr.32 s6, [fp, #-4]
	vmul.f32 s7, s5, s6
	vmov s0, s7
.Leee_END:
	mov sp, fp
	vpop {s5, s6, s7, s8}
	pop {r4, fp, lr}
	bx lr

	.global my_exp
	.type my_exp , %function
my_exp:
	push {r4, fp, lr}
	vpush {s5, s6, s7}
	mov fp, sp
	sub sp, sp, #16
.L301:                               	@ successors = .L305, .L306
	vstr.32 s0, [fp, #-16]
	vldr.32 s5, [fp, #-16]
	ldr r4, =0
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	blt .L306
	b .L305
.L303:                               	@ predecessors = .L305
	vldr.32 s5, [fp, #-16]
	vcvt.s32.f32 s6, s5
	vmov r4, s6
	str r4, [fp, #-12]
	vldr.32 s5, [fp, #-16]
	ldr r4, [fp, #-12]
	vmov s6, r4
	vcvt.f32.s32 s6, s6
	vsub.f32 s7, s5, s6
	vstr.32 s7, [fp, #-16]
	ldr r4, [fp, #-12]
	mov r1, r4
	ldr r4, =1076754516
	vmov s0, r4
	bl my_pow
	vmov s5, s0
	vstr.32 s5, [fp, #-8]
	vldr.32 s5, [fp, #-16]
	vmov s0, s5
	bl eee
	vmov s5, s0
	vstr.32 s5, [fp, #-4]
	vldr.32 s5, [fp, #-8]
	vldr.32 s6, [fp, #-4]
	vmul.f32 s7, s5, s6
	vmov s0, s7
	b .Lmy_exp_END
.L305:                               	@ predecessors = .L301                               	@ successors = .L303
	b .L303
.L306:                               	@ predecessors = .L301
	vldr.32 s5, [fp, #-16]
	ldr r4, =0
	vmov s6, r4
	vsub.f32 s7, s6, s5
	vmov s0, s7
	bl my_exp
	vmov s5, s0
	ldr r4, =1065353216
	vmov s6, r4
	vdiv.f32 s7, s6, s5
	vmov s0, s7
.Lmy_exp_END:
	mov sp, fp
	vpop {s5, s6, s7}
	pop {r4, fp, lr}
	bx lr

	.global my_ln
	.type my_ln , %function
my_ln:
	push {r4, fp, lr}
	vpush {s5}
	mov fp, sp
	sub sp, sp, #4
.L318:
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	mov r3, #1
	ldr r4, =841731191
	vmov s2, r4
	vmov s1, s5
	ldr r4, =1065353216
	vmov s0, r4
	bl asr4
	vmov s5, s0
	vmov s0, s5
	mov sp, fp
	vpop {s5}
	pop {r4, fp, lr}
	bx lr

	.global my_log
	.type my_log , %function
my_log:
	push {fp, lr}
	vpush {s5, s6, s7}
	mov fp, sp
	sub sp, sp, #8
.L321:
	vstr.32 s0, [fp, #-8]
	vstr.32 s1, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	bl my_ln
	vmov s5, s0
	vldr.32 s6, [fp, #-8]
	vmov s0, s6
	bl my_ln
	vmov s6, s0
	vdiv.f32 s7, s5, s6
	vmov s0, s7
	mov sp, fp
	vpop {s5, s6, s7}
	pop {fp, lr}
	bx lr

	.global my_powf
	.type my_powf , %function
my_powf:
	push {fp, lr}
	vpush {s5, s6, s7}
	mov fp, sp
	sub sp, sp, #8
.L326:
	vstr.32 s0, [fp, #-8]
	vstr.32 s1, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	vldr.32 s6, [fp, #-8]
	vmov s0, s6
	bl my_ln
	vmov s6, s0
	vmul.f32 s7, s5, s6
	vmov s0, s7
	bl my_exp
	vmov s5, s0
	vmov s0, s5
	mov sp, fp
	vpop {s5, s6, s7}
	pop {fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	vpush {s5, s6}
	mov fp, sp
	sub sp, sp, #16
.L331:                               	@ successors = .L333
	bl getint
	mov r4, r0
	str r4, [fp, #-12]
	b .L333
.L333:                               	@ predecessors = .L331, .L360                               	@ successors = .L336, .L337
	ldr r4, [fp, #-12]
	cmp r4, #0
	bne .L337
	b .L336
.L334:                               	@ predecessors = .L336
	mov r0, #0
	b .Lmain_END
.L336:                               	@ predecessors = .L333                               	@ successors = .L334
	b .L334
.L337:                               	@ predecessors = .L333                               	@ successors = .L346, .L347
	bl getfloat
	vmov s5, s0
	vstr.32 s5, [fp, #-8]
	bl getfloat
	vmov s5, s0
	vstr.32 s5, [fp, #-4]
	vldr.32 s5, [fp, #-8]
	vmov s0, s5
	bl my_fabs
	vmov s5, s0
	vmov s0, s5
	bl putfloat
	mov r0, #32
	bl putch
	vldr.32 s5, [fp, #-8]
	mov r1, #2
	vmov s0, s5
	bl my_pow
	vmov s5, s0
	vmov s0, s5
	bl putfloat
	mov r0, #32
	bl putch
	vldr.32 s5, [fp, #-8]
	vmov s0, s5
	bl my_sqrt
	vmov s5, s0
	vmov s0, s5
	bl putfloat
	mov r0, #32
	bl putch
	vldr.32 s5, [fp, #-8]
	vmov s0, s5
	bl my_exp
	vmov s5, s0
	vmov s0, s5
	bl putfloat
	mov r0, #32
	bl putch
	vldr.32 s5, [fp, #-8]
	ldr r4, =0
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	bgt .L347
	b .L346
.L344:                               	@ predecessors = .L347, .L349                               	@ successors = .L352, .L353
	mov r0, #32
	bl putch
	vldr.32 s5, [fp, #-8]
	ldr r4, =0
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	bgt .L353
	b .L352
.L346:                               	@ predecessors = .L337                               	@ successors = .L349
	b .L349
.L347:                               	@ predecessors = .L337                               	@ successors = .L344
	vldr.32 s5, [fp, #-8]
	vmov s0, s5
	bl my_ln
	vmov s5, s0
	vmov s0, s5
	bl putfloat
	b .L344
.L349:                               	@ predecessors = .L346                               	@ successors = .L344
	mov r0, #45
	bl putch
	b .L344
.L350:                               	@ predecessors = .L356, .L359                               	@ successors = .L362, .L363
	mov r0, #32
	bl putch
	vldr.32 s5, [fp, #-8]
	ldr r4, =0
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	bgt .L363
	b .L362
.L352:                               	@ predecessors = .L344                               	@ successors = .L359
	b .L359
.L353:                               	@ predecessors = .L344                               	@ successors = .L355, .L356
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	bgt .L356
	b .L355
.L355:                               	@ predecessors = .L353                               	@ successors = .L359
	b .L359
.L356:                               	@ predecessors = .L353                               	@ successors = .L350
	vldr.32 s5, [fp, #-8]
	vldr.32 s6, [fp, #-4]
	vmov s1, s6
	vmov s0, s5
	bl my_log
	vmov s5, s0
	vmov s0, s5
	bl putfloat
	b .L350
.L359:                               	@ predecessors = .L352, .L355                               	@ successors = .L350
	mov r0, #45
	bl putch
	b .L350
.L360:                               	@ predecessors = .L363, .L366                               	@ successors = .L333
	mov r0, #10
	bl putch
	ldr r4, [fp, #-12]
	sub r5, r4, #1
	str r5, [fp, #-12]
	b .L333
.L362:                               	@ predecessors = .L350                               	@ successors = .L366
	b .L366
.L363:                               	@ predecessors = .L350                               	@ successors = .L360
	vldr.32 s5, [fp, #-8]
	vldr.32 s6, [fp, #-4]
	vmov s1, s6
	vmov s0, s5
	bl my_powf
	vmov s5, s0
	vmov s0, s5
	bl putfloat
	b .L360
.L366:                               	@ predecessors = .L362                               	@ successors = .L360
	mov r0, #45
	bl putch
	b .L360
.Lmain_END:
	mov sp, fp
	vpop {s5, s6}
	pop {r4, r5, fp, lr}
	bx lr

