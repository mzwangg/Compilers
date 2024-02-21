	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.data
	.global height
	.align 4
	.size height, 4
height:
	.word 0
	.global width
	.align 4
	.size width, 4
width:
	.word 0
	.comm	image, 4194304, 4
	.text
	.global my_fabs
	.type my_fabs , %function
my_fabs:
	push {r4, fp}
	vpush {s5, s6, s7}
	mov fp, sp
	sub sp, sp, #4
.L100:                               	@ successors = .L104, .L105
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	bgt .L105
	b .L104
.L102:                               	@ predecessors = .L104
	vldr.32 s5, [fp, #-4]
	ldr r4, =0
	vmov s6, r4
	vsub.f32 s7, s6, s5
	vmov s0, s7
	b .Lmy_fabs_END
.L104:                               	@ predecessors = .L100                               	@ successors = .L102
	b .L102
.L105:                               	@ predecessors = .L100
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
.L108:
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
.L114:                               	@ successors = .L118, .L119
	vstr.32 s0, [fp, #-4]
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	bl my_fabs
	vmov s5, s0
	ldr r4, =897988541
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	ble .L119
	b .L118
.L116:                               	@ predecessors = .L118
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
.L118:                               	@ predecessors = .L114                               	@ successors = .L116
	b .L116
.L119:                               	@ predecessors = .L114
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
.L122:                               	@ successors = .L126, .L130
	vstr.32 s0, [fp, #-8]
	vldr.32 s5, [fp, #-8]
	ldr r4, =1086918619
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	bgt .L130
	b .L126
.L124:                               	@ predecessors = .L129, .L130                               	@ successors = .L137, .L138
	vldr.32 s5, [fp, #-8]
	ldr r4, =1078530011
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	bgt .L138
	b .L137
.L126:                               	@ predecessors = .L122                               	@ successors = .L127
	b .L127
.L127:                               	@ predecessors = .L126                               	@ successors = .L129, .L130
	vldr.32 s5, [fp, #-8]
	ldr r4, =3234402267
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	blt .L130
	b .L129
.L129:                               	@ predecessors = .L127                               	@ successors = .L124
	b .L124
.L130:                               	@ predecessors = .L122, .L127                               	@ successors = .L124
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
	b .L124
.L135:                               	@ predecessors = .L137, .L138                               	@ successors = .L142, .L143
	vldr.32 s5, [fp, #-8]
	ldr r4, =3226013659
	vmov s6, r4
	vcmp.f32 s5, s6
	vmrs APSR_nzcv, FPSCR
	blt .L143
	b .L142
.L137:                               	@ predecessors = .L124                               	@ successors = .L135
	b .L135
.L138:                               	@ predecessors = .L124                               	@ successors = .L135
	vldr.32 s5, [fp, #-8]
	ldr r4, =1086918619
	vmov s6, r4
	vsub.f32 s7, s5, s6
	vstr.32 s7, [fp, #-8]
	b .L135
.L140:                               	@ predecessors = .L142, .L143
	vldr.32 s5, [fp, #-8]
	vmov s0, s5
	bl my_sin_impl
	vmov s5, s0
	vmov s0, s5
	b .Lmy_sin_END
.L142:                               	@ predecessors = .L135                               	@ successors = .L140
	b .L140
.L143:                               	@ predecessors = .L135                               	@ successors = .L140
	vldr.32 s5, [fp, #-8]
	ldr r4, =1086918619
	vmov s6, r4
	vadd.f32 s7, s5, s6
	vstr.32 s7, [fp, #-8]
	b .L140
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
.L146:
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

	.global read_image
	.type read_image , %function
read_image:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L149:                               	@ successors = .L151, .L154
	bl getch
	mov r4, r0
	cmp r4, #80
	bne .L154
	b .L151
.L150:                               	@ predecessors = .L153                               	@ successors = .L157, .L163
	bl getint
	mov r4, r0
	ldr r5, addr_0_width
	str r4, [r5]
	bl getint
	mov r4, r0
	ldr r5, addr_0_height
	str r4, [r5]
	ldr r4, addr_0_width
	ldr r5, [r4]
	cmp r5, #1024
	bgt .L163
	b .L157
.L151:                               	@ predecessors = .L149                               	@ successors = .L152
	b .L152
.L152:                               	@ predecessors = .L151                               	@ successors = .L153, .L154
	bl getch
	mov r4, r0
	cmp r4, #50
	bne .L154
	b .L153
.L153:                               	@ predecessors = .L152                               	@ successors = .L150
	b .L150
.L154:                               	@ predecessors = .L149, .L152
	mov r0, #-1
	b .Lread_image_END
.L155:                               	@ predecessors = .L162                               	@ successors = .L165
	mov r4, #0
	str r4, [fp, #-8]
	b .L165
.L157:                               	@ predecessors = .L150                               	@ successors = .L158
	b .L158
.L158:                               	@ predecessors = .L157                               	@ successors = .L160, .L163
	ldr r4, addr_0_height
	ldr r5, [r4]
	cmp r5, #1024
	bgt .L163
	b .L160
.L160:                               	@ predecessors = .L158                               	@ successors = .L161
	b .L161
.L161:                               	@ predecessors = .L160                               	@ successors = .L162, .L163
	bl getint
	mov r4, r0
	cmp r4, #255
	bne .L163
	b .L162
.L162:                               	@ predecessors = .L161                               	@ successors = .L155
	b .L155
.L163:                               	@ predecessors = .L150, .L158, .L161
	mov r0, #-1
	b .Lread_image_END
.L165:                               	@ predecessors = .L155, .L173                               	@ successors = .L169, .L170
	ldr r4, [fp, #-8]
	ldr r5, addr_0_height
	ldr r6, [r5]
	cmp r4, r6
	blt .L170
	b .L169
.L166:                               	@ predecessors = .L169
	mov r0, #0
	b .Lread_image_END
.L169:                               	@ predecessors = .L165                               	@ successors = .L166
	b .L166
.L170:                               	@ predecessors = .L165                               	@ successors = .L172
	mov r4, #0
	str r4, [fp, #-4]
	b .L172
.L172:                               	@ predecessors = .L170, .L177                               	@ successors = .L176, .L177
	ldr r4, [fp, #-4]
	ldr r5, addr_0_width
	ldr r6, [r5]
	cmp r4, r6
	blt .L177
	b .L176
.L173:                               	@ predecessors = .L176                               	@ successors = .L165
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	b .L165
.L176:                               	@ predecessors = .L172                               	@ successors = .L173
	b .L173
.L177:                               	@ predecessors = .L172                               	@ successors = .L172
	bl getint
	mov r4, r0
	ldr r5, [fp, #-8]
	ldr r6, addr_0_width
	ldr r7, [r6]
	mul r6, r5, r7
	ldr r5, [fp, #-4]
	add r7, r6, r5
	ldr r5, addr_0_image
	mov r6, #4
	mul r8, r7, r6
	add r6, r5, r8
	str r4, [r6]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	b .L172
.Lread_image_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

	.global rotate
	.type rotate , %function
rotate:
	push {r4, r5, r6, r7, fp, lr}
	vpush {s5, s6, s7, s8}
	mov fp, sp
	sub sp, sp, #44
.L184:                               	@ successors = .L216, .L228
	str r0, [fp, #-44]
	str r1, [fp, #-40]
	vstr.32 s2, [fp, #-36]
	vldr.32 s5, [fp, #-36]
	vmov s0, s5
	bl my_sin
	vmov s5, s0
	vstr.32 s5, [fp, #-32]
	vldr.32 s5, [fp, #-36]
	vmov s0, s5
	bl my_cos
	vmov s5, s0
	vstr.32 s5, [fp, #-28]
	ldr r4, addr_0_width
	ldr r5, [r4]
	mov r4, #2
	sdiv r6, r5, r4
	str r6, [fp, #-24]
	ldr r4, addr_0_height
	ldr r5, [r4]
	mov r4, #2
	sdiv r6, r5, r4
	str r6, [fp, #-20]
	ldr r4, [fp, #-44]
	ldr r5, [fp, #-24]
	sub r6, r4, r5
	str r6, [fp, #-16]
	ldr r4, [fp, #-40]
	ldr r5, [fp, #-20]
	sub r6, r4, r5
	str r6, [fp, #-12]
	ldr r4, [fp, #-16]
	vmov s5, r4
	vcvt.f32.s32 s5, s5
	vldr.32 s6, [fp, #-28]
	vmul.f32 s7, s5, s6
	ldr r4, [fp, #-12]
	vmov s5, r4
	vcvt.f32.s32 s5, s5
	vldr.32 s6, [fp, #-32]
	vmul.f32 s8, s5, s6
	vsub.f32 s5, s7, s8
	ldr r4, [fp, #-24]
	vmov s6, r4
	vcvt.f32.s32 s6, s6
	vadd.f32 s7, s5, s6
	vcvt.s32.f32 s5, s7
	vmov r4, s5
	str r4, [fp, #-8]
	ldr r4, [fp, #-16]
	vmov s5, r4
	vcvt.f32.s32 s5, s5
	vldr.32 s6, [fp, #-32]
	vmul.f32 s7, s5, s6
	ldr r4, [fp, #-12]
	vmov s5, r4
	vcvt.f32.s32 s5, s5
	vldr.32 s6, [fp, #-28]
	vmul.f32 s8, s5, s6
	vadd.f32 s5, s7, s8
	ldr r4, [fp, #-20]
	vmov s6, r4
	vcvt.f32.s32 s6, s6
	vadd.f32 s7, s5, s6
	vcvt.s32.f32 s5, s7
	vmov r4, s5
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	blt .L228
	b .L216
.L214:                               	@ predecessors = .L227
	ldr r4, [fp, #-4]
	ldr r5, addr_0_width
	ldr r6, [r5]
	mul r5, r4, r6
	ldr r4, [fp, #-8]
	add r6, r5, r4
	ldr r4, addr_0_image
	mov r5, #4
	mul r7, r6, r5
	add r5, r4, r7
	ldr r4, [r5]
	mov r0, r4
	b .Lrotate_END
.L216:                               	@ predecessors = .L184                               	@ successors = .L217
	b .L217
.L217:                               	@ predecessors = .L216                               	@ successors = .L220, .L228
	ldr r4, [fp, #-8]
	ldr r5, addr_0_width
	ldr r6, [r5]
	cmp r4, r6
	bge .L228
	b .L220
.L220:                               	@ predecessors = .L217                               	@ successors = .L221
	b .L221
.L221:                               	@ predecessors = .L220                               	@ successors = .L223, .L228
	ldr r4, [fp, #-4]
	cmp r4, #0
	blt .L228
	b .L223
.L223:                               	@ predecessors = .L221                               	@ successors = .L224
	b .L224
.L224:                               	@ predecessors = .L223                               	@ successors = .L227, .L228
	ldr r4, [fp, #-4]
	ldr r5, addr_0_height
	ldr r6, [r5]
	cmp r4, r6
	bge .L228
	b .L227
.L227:                               	@ predecessors = .L224                               	@ successors = .L214
	b .L214
.L228:                               	@ predecessors = .L184, .L217, .L221, .L224
	mov r0, #0
.Lrotate_END:
	mov sp, fp
	vpop {s5, s6, s7, s8}
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

	b .LiteralPool0
.LTORG
addr_0_height:
	.word height
addr_0_width:
	.word width
addr_0_image:
	.word image
.LiteralPool0:
	.global write_pgm
	.type write_pgm , %function
write_pgm:
	push {r4, r5, r6, fp, lr}
	vpush {s5}
	mov fp, sp
	sub sp, sp, #12
.L234:                               	@ successors = .L239
	vstr.32 s0, [fp, #-12]
	mov r0, #80
	bl putch
	mov r0, #50
	bl putch
	mov r0, #10
	bl putch
	ldr r4, addr_1_width
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #32
	bl putch
	ldr r4, addr_1_height
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #32
	bl putch
	mov r0, #255
	bl putint
	mov r0, #10
	bl putch
	mov r4, #0
	str r4, [fp, #-8]
	b .L239
.L239:                               	@ predecessors = .L234, .L247                               	@ successors = .L243, .L244
	ldr r4, [fp, #-8]
	ldr r5, addr_1_height
	ldr r6, [r5]
	cmp r4, r6
	blt .L244
	b .L243
.L240:                               	@ predecessors = .L243
	b .Lwrite_pgm_END
.L243:                               	@ predecessors = .L239                               	@ successors = .L240
	b .L240
.L244:                               	@ predecessors = .L239                               	@ successors = .L246
	mov r4, #0
	str r4, [fp, #-4]
	b .L246
.L246:                               	@ predecessors = .L244, .L251                               	@ successors = .L250, .L251
	ldr r4, [fp, #-4]
	ldr r5, addr_1_width
	ldr r6, [r5]
	cmp r4, r6
	blt .L251
	b .L250
.L247:                               	@ predecessors = .L250                               	@ successors = .L239
	mov r0, #10
	bl putch
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	b .L239
.L250:                               	@ predecessors = .L246                               	@ successors = .L247
	b .L247
.L251:                               	@ predecessors = .L246                               	@ successors = .L246
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	vldr.32 s5, [fp, #-12]
	vmov s2, s5
	mov r1, r5
	mov r0, r4
	bl rotate
	mov r4, r0
	mov r0, r4
	bl putint
	mov r0, #32
	bl putch
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	b .L246
.Lwrite_pgm_END:
	mov sp, fp
	vpop {s5}
	pop {r4, r5, r6, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	vpush {s5}
	mov fp, sp
	sub sp, sp, #8
.L257:                               	@ successors = .L260, .L261
	bl getfloat
	vmov s5, s0
	vstr.32 s5, [fp, #-4]
	bl getch
	mov r4, r0
	bl read_image
	mov r4, r0
	cmp r4, #0
	blt .L261
	b .L260
.L259:                               	@ predecessors = .L260
	vldr.32 s5, [fp, #-4]
	vmov s0, s5
	bl write_pgm
	mov r0, #0
	b .Lmain_END
.L260:                               	@ predecessors = .L257                               	@ successors = .L259
	b .L259
.L261:                               	@ predecessors = .L257
	mov r0, #-1
.Lmain_END:
	mov sp, fp
	vpop {s5}
	pop {r4, fp, lr}
	bx lr

addr_1_height:
	.word height
addr_1_width:
	.word width
addr_1_image:
	.word image
