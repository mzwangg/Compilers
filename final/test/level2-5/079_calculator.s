	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global c
	.align 4
	.size c, 4
c:
	.word 0
	.global ii
	.align 4
	.size ii, 4
ii:
	.word 1
	.global chat
	.align 4
	.size chat, 4
chat:
	.word 0
	.comm	get2, 40000, 4
	.comm	chas, 40000, 4
	.global intt
	.align 4
	.size intt, 4
intt:
	.word 0
	.comm	get, 40000, 4
	.global i
	.align 4
	.size i, 4
i:
	.word 0
	.comm	ints, 40000, 4
	.text
	.global isdigit
	.type isdigit , %function
isdigit:
	push {r4, r5, fp}
	mov fp, sp
	sub sp, sp, #4
.L149:                               	@ successors = .L153, .L154
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #48
	bge .L154
	b .L153
.L151:                               	@ predecessors = .L153, .L156
	mov r0, #0
	b .Lisdigit_END
.L153:                               	@ predecessors = .L149                               	@ successors = .L151
	b .L151
.L154:                               	@ predecessors = .L149                               	@ successors = .L156, .L157
	ldr r5, [fp, #-4]
	cmp r5, #57
	ble .L157
	b .L156
.L156:                               	@ predecessors = .L154                               	@ successors = .L151
	b .L151
.L157:                               	@ predecessors = .L154
	mov r0, #1
.Lisdigit_END:
	mov sp, fp
	pop {r4, r5, fp}
	bx lr

	.global power
	.type power , %function
power:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #12
.L158:                               	@ successors = .L162
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	mov r4, #1
	str r4, [fp, #-4]
	b .L162
.L162:                               	@ predecessors = .L158, .L166                               	@ successors = .L165, .L166
	ldr r5, [fp, #-8]
	cmp r5, #0
	bne .L166
	b .L165
.L163:                               	@ predecessors = .L165
	ldr r6, [fp, #-4]
	mov r0, r6
	b .Lpower_END
.L165:                               	@ predecessors = .L162                               	@ successors = .L163
	b .L163
.L166:                               	@ predecessors = .L162                               	@ successors = .L162
	ldr r7, [fp, #-4]
	ldr r8, [fp, #-12]
	mul r9, r7, r8
	str r9, [fp, #-4]
	ldr r10, [fp, #-8]
	sub r4, r10, #1
	str r4, [fp, #-8]
	b .L162
.Lpower_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global getstr
	.type getstr , %function
getstr:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L171:                               	@ successors = .L175
	str r0, [fp, #-12]
	bl getch
	mov r4, r0
	str r4, [fp, #-8]
	mov r5, #0
	str r5, [fp, #-4]
	b .L175
.L175:                               	@ predecessors = .L171, .L182                               	@ successors = .L178, .L179
	ldr r6, [fp, #-8]
	cmp r6, #13
	bne .L179
	b .L178
.L176:                               	@ predecessors = .L178, .L181
	ldr r7, [fp, #-4]
	mov r0, r7
	b .Lgetstr_END
.L178:                               	@ predecessors = .L175                               	@ successors = .L176
	b .L176
.L179:                               	@ predecessors = .L175                               	@ successors = .L181, .L182
	ldr r8, [fp, #-8]
	cmp r8, #10
	bne .L182
	b .L181
.L181:                               	@ predecessors = .L179                               	@ successors = .L176
	b .L176
.L182:                               	@ predecessors = .L179                               	@ successors = .L175
	ldr r9, [fp, #-8]
	ldr r10, [fp, #-12]
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r6, r4, r5
	add r7, r10, r6
	str r9, [r7]
	ldr r8, [fp, #-4]
	add r4, r8, #1
	str r4, [fp, #-4]
	bl getch
	mov r5, r0
	str r5, [fp, #-8]
	b .L175
.Lgetstr_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global intpush
	.type intpush , %function
intpush:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #4
.L189:
	str r0, [fp, #-4]
	ldr r4, addr_0_intt
	ldr r5, [r4]
	add r6, r5, #1
	ldr r7, addr_0_intt
	str r6, [r7]
	ldr r8, [fp, #-4]
	ldr r9, addr_0_intt
	ldr r10, [r9]
	ldr r4, addr_0_ints
	mov r5, #4
	mul r6, r10, r5
	add r7, r4, r6
	str r8, [r7]
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global chapush
	.type chapush , %function
chapush:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #4
.L195:
	str r0, [fp, #-4]
	ldr r4, addr_0_chat
	ldr r5, [r4]
	add r6, r5, #1
	ldr r7, addr_0_chat
	str r6, [r7]
	ldr r8, [fp, #-4]
	ldr r9, addr_0_chat
	ldr r10, [r9]
	ldr r4, addr_0_chas
	mov r5, #4
	mul r6, r10, r5
	add r7, r4, r6
	str r8, [r7]
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global intpop
	.type intpop , %function
intpop:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
.L201:
	ldr r4, addr_0_intt
	ldr r5, [r4]
	sub r6, r5, #1
	ldr r7, addr_0_intt
	str r6, [r7]
	ldr r8, addr_0_intt
	ldr r9, [r8]
	add r10, r9, #1
	ldr r4, addr_0_ints
	mov r5, #4
	mul r6, r10, r5
	add r7, r4, r6
	ldr r8, [r7]
	mov r0, r8
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global chapop
	.type chapop , %function
chapop:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
.L206:
	ldr r4, addr_0_chat
	ldr r5, [r4]
	sub r6, r5, #1
	ldr r7, addr_0_chat
	str r6, [r7]
	ldr r8, addr_0_chat
	ldr r9, [r8]
	add r10, r9, #1
	ldr r4, addr_0_chas
	mov r5, #4
	mul r6, r10, r5
	add r7, r4, r6
	ldr r8, [r7]
	mov r0, r8
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global intadd
	.type intadd , %function
intadd:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #4
.L211:
	str r0, [fp, #-4]
	ldr r4, addr_0_intt
	ldr r5, [r4]
	ldr r6, addr_0_ints
	mov r7, #4
	mul r8, r5, r7
	add r9, r6, r8
	ldr r10, [r9]
	mov r4, #10
	mul r5, r10, r4
	ldr r7, addr_0_intt
	ldr r6, [r7]
	ldr r8, addr_0_ints
	mov r9, #4
	mul r10, r6, r9
	add r4, r8, r10
	str r5, [r4]
	ldr r7, addr_0_intt
	ldr r6, [r7]
	ldr r9, addr_0_ints
	mov r8, #4
	mul r10, r6, r8
	add r5, r9, r10
	ldr r4, [r5]
	ldr r7, [fp, #-4]
	add r6, r4, r7
	ldr r8, addr_0_intt
	ldr r9, [r8]
	ldr r10, addr_0_ints
	mov r5, #4
	mul r4, r9, r5
	add r7, r10, r4
	str r6, [r7]
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global find
	.type find , %function
find:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
.L224:                               	@ successors = .L233, .L234
	bl chapop
	mov r4, r0
	ldr r5, addr_0_c
	str r4, [r5]
	ldr r6, addr_0_ii
	ldr r7, [r6]
	ldr r8, addr_0_get2
	mov r9, #4
	mul r10, r7, r9
	add r4, r8, r10
	mov r5, #32
	str r5, [r4]
	ldr r6, addr_0_c
	ldr r7, [r6]
	ldr r9, addr_0_ii
	ldr r8, [r9]
	add r10, r8, #1
	ldr r4, addr_0_get2
	mov r5, #4
	mul r6, r10, r5
	add r9, r4, r6
	str r7, [r9]
	ldr r8, addr_0_ii
	ldr r10, [r8]
	add r5, r10, #2
	ldr r4, addr_0_ii
	str r5, [r4]
	ldr r6, addr_0_chat
	ldr r7, [r6]
	cmp r7, #0
	beq .L234
	b .L233
.L231:                               	@ predecessors = .L233
	mov r0, #1
	b .Lfind_END
.L233:                               	@ predecessors = .L224                               	@ successors = .L231
	b .L231
.L234:                               	@ predecessors = .L224
	mov r0, #0
.Lfind_END:
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L235:                               	@ successors = .L238
	mov r4, #0
	ldr r5, addr_0_intt
	str r4, [r5]
	mov r6, #0
	ldr r7, addr_0_chat
	str r6, [r7]
	ldr r8, addr_0_get
	mov r9, r8
	mov r0, r9
	bl getstr
	mov r10, r0
	str r10, [fp, #-20]
	b .L238
.L238:                               	@ predecessors = .L235, .L244                               	@ successors = .L242, .L243
	ldr r4, addr_0_i
	ldr r5, [r4]
	ldr r6, [fp, #-20]
	cmp r5, r6
	blt .L243
	b .L242
.L239:                               	@ predecessors = .L242                               	@ successors = .L470
	b .L470
.L242:                               	@ predecessors = .L238                               	@ successors = .L239
	b .L239
.L243:                               	@ predecessors = .L238                               	@ successors = .L248, .L249
	ldr r7, addr_0_i
	ldr r8, [r7]
	ldr r9, addr_0_get
	mov r10, #4
	mul r4, r8, r10
	add r5, r9, r4
	ldr r6, [r5]
	mov r0, r6
	bl isdigit
	mov r7, r0
	cmp r7, #1
	beq .L249
	b .L248
.L244:                               	@ predecessors = .L249, .L434                               	@ successors = .L238
	ldr r8, addr_0_i
	ldr r10, [r8]
	add r9, r10, #1
	ldr r4, addr_0_i
	str r9, [r4]
	b .L238
.L248:                               	@ predecessors = .L243                               	@ successors = .L256
	b .L256
.L249:                               	@ predecessors = .L243                               	@ successors = .L244
	ldr r5, addr_0_i
	ldr r6, [r5]
	ldr r7, addr_0_get
	mov r8, #4
	mul r10, r6, r8
	add r9, r7, r10
	ldr r4, [r9]
	ldr r5, addr_0_ii
	ldr r6, [r5]
	ldr r8, addr_0_get2
	mov r7, #4
	mul r10, r6, r7
	add r9, r8, r10
	str r4, [r9]
	ldr r5, addr_0_ii
	ldr r6, [r5]
	add r7, r6, #1
	ldr r8, addr_0_ii
	str r7, [r8]
	b .L244
.L256:                               	@ predecessors = .L248                               	@ successors = .L261, .L262
	ldr r10, addr_0_i
	ldr r4, [r10]
	ldr r9, addr_0_get
	mov r5, #4
	mul r6, r4, r5
	add r7, r9, r6
	ldr r8, [r7]
	cmp r8, #40
	beq .L262
	b .L261
.L257:                               	@ predecessors = .L261, .L262                               	@ successors = .L267, .L268
	ldr r10, addr_0_i
	ldr r4, [r10]
	ldr r5, addr_0_get
	mov r9, #4
	mul r6, r4, r9
	add r7, r5, r6
	ldr r8, [r7]
	cmp r8, #94
	beq .L268
	b .L267
.L261:                               	@ predecessors = .L256                               	@ successors = .L257
	b .L257
.L262:                               	@ predecessors = .L256                               	@ successors = .L257
	mov r0, #40
	bl chapush
	b .L257
.L263:                               	@ predecessors = .L267, .L268                               	@ successors = .L273, .L274
	ldr r10, addr_0_i
	ldr r4, [r10]
	ldr r9, addr_0_get
	mov r5, #4
	mul r6, r4, r5
	add r7, r9, r6
	ldr r8, [r7]
	cmp r8, #41
	beq .L274
	b .L273
.L267:                               	@ predecessors = .L257                               	@ successors = .L263
	b .L263
.L268:                               	@ predecessors = .L257                               	@ successors = .L263
	mov r0, #94
	bl chapush
	b .L263
.L269:                               	@ predecessors = .L273, .L276                               	@ successors = .L290, .L291
	ldr r10, addr_0_i
	ldr r4, [r10]
	ldr r5, addr_0_get
	mov r9, #4
	mul r6, r4, r9
	add r7, r5, r6
	ldr r8, [r7]
	cmp r8, #43
	beq .L291
	b .L290
.L273:                               	@ predecessors = .L263                               	@ successors = .L269
	b .L269
.L274:                               	@ predecessors = .L263                               	@ successors = .L275
	bl chapop
	mov r10, r0
	ldr r4, addr_0_c
	str r10, [r4]
	b .L275
.L275:                               	@ predecessors = .L274, .L279                               	@ successors = .L278, .L279
	ldr r9, addr_0_c
	ldr r5, [r9]
	cmp r5, #40
	bne .L279
	b .L278
.L276:                               	@ predecessors = .L278                               	@ successors = .L269
	b .L269
.L278:                               	@ predecessors = .L275                               	@ successors = .L276
	b .L276
.L279:                               	@ predecessors = .L275                               	@ successors = .L275
	ldr r6, addr_0_ii
	ldr r7, [r6]
	ldr r8, addr_0_get2
	mov r10, #4
	mul r4, r7, r10
	add r9, r8, r4
	mov r5, #32
	str r5, [r9]
	ldr r6, addr_0_c
	ldr r7, [r6]
	ldr r10, addr_0_ii
	ldr r8, [r10]
	add r4, r8, #1
	ldr r9, addr_0_get2
	mov r5, #4
	mul r6, r4, r5
	add r10, r9, r6
	str r7, [r10]
	ldr r8, addr_0_ii
	ldr r4, [r8]
	add r5, r4, #2
	ldr r9, addr_0_ii
	str r5, [r9]
	bl chapop
	mov r6, r0
	ldr r7, addr_0_c
	str r6, [r7]
	b .L275
.L286:                               	@ predecessors = .L290, .L293                               	@ successors = .L332, .L333
	ldr r10, addr_0_i
	ldr r8, [r10]
	ldr r4, addr_0_get
	mov r5, #4
	mul r9, r8, r5
	add r6, r4, r9
	ldr r7, [r6]
	cmp r7, #45
	beq .L333
	b .L332
.L290:                               	@ predecessors = .L269                               	@ successors = .L286
	b .L286
.L291:                               	@ predecessors = .L269                               	@ successors = .L292
	b .L292
.L292:                               	@ predecessors = .L291, .L324                               	@ successors = .L297, .L323
	ldr r10, addr_0_chat
	ldr r8, [r10]
	ldr r5, addr_0_chas
	mov r4, #4
	mul r9, r8, r4
	add r6, r5, r9
	ldr r7, [r6]
	cmp r7, #43
	beq .L323
	b .L297
.L293:                               	@ predecessors = .L322, .L326                               	@ successors = .L286
	mov r0, #43
	bl chapush
	b .L286
.L297:                               	@ predecessors = .L292                               	@ successors = .L298
	b .L298
.L298:                               	@ predecessors = .L297                               	@ successors = .L302, .L323
	ldr r10, addr_0_chat
	ldr r8, [r10]
	ldr r4, addr_0_chas
	mov r5, #4
	mul r9, r8, r5
	add r6, r4, r9
	ldr r7, [r6]
	cmp r7, #45
	beq .L323
	b .L302
.L302:                               	@ predecessors = .L298                               	@ successors = .L303
	b .L303
.L303:                               	@ predecessors = .L302                               	@ successors = .L307, .L323
	ldr r10, addr_0_chat
	ldr r8, [r10]
	ldr r5, addr_0_chas
	mov r4, #4
	mul r9, r8, r4
	add r6, r5, r9
	ldr r7, [r6]
	cmp r7, #42
	beq .L323
	b .L307
.L307:                               	@ predecessors = .L303                               	@ successors = .L308
	b .L308
.L308:                               	@ predecessors = .L307                               	@ successors = .L312, .L323
	ldr r10, addr_0_chat
	ldr r8, [r10]
	ldr r4, addr_0_chas
	mov r5, #4
	mul r9, r8, r5
	add r6, r4, r9
	ldr r7, [r6]
	cmp r7, #47
	beq .L323
	b .L312
.L312:                               	@ predecessors = .L308                               	@ successors = .L313
	b .L313
.L313:                               	@ predecessors = .L312                               	@ successors = .L317, .L323
	ldr r10, addr_0_chat
	ldr r8, [r10]
	ldr r5, addr_0_chas
	mov r4, #4
	mul r9, r8, r4
	add r6, r5, r9
	ldr r7, [r6]
	cmp r7, #37
	beq .L323
	b .L317
.L317:                               	@ predecessors = .L313                               	@ successors = .L318
	b .L318
.L318:                               	@ predecessors = .L317                               	@ successors = .L322, .L323
	ldr r10, addr_0_chat
	ldr r8, [r10]
	ldr r4, addr_0_chas
	mov r5, #4
	mul r9, r8, r5
	add r6, r4, r9
	ldr r7, [r6]
	cmp r7, #94
	beq .L323
	b .L322
.L322:                               	@ predecessors = .L318                               	@ successors = .L293
	b .L293
.L323:                               	@ predecessors = .L292, .L298, .L303, .L308, .L313, .L318                               	@ successors = .L325, .L326
	bl find
	mov r10, r0
	cmp r10, #0
	beq .L326
	b .L325
.L324:                               	@ predecessors = .L325, .L327                               	@ successors = .L292
	b .L292
.L325:                               	@ predecessors = .L323                               	@ successors = .L324
	b .L324
.L326:                               	@ predecessors = .L323                               	@ successors = .L293
	b .L293
.L327:                               	@ successors = .L324
	b .L324
.L328:                               	@ predecessors = .L332, .L335                               	@ successors = .L374, .L375
	ldr r8, addr_0_i
	ldr r5, [r8]
	ldr r4, addr_0_get
	mov r9, #4
	mul r6, r5, r9
	add r7, r4, r6
	ldr r10, [r7]
	cmp r10, #42
	beq .L375
	b .L374
.L332:                               	@ predecessors = .L286                               	@ successors = .L328
	b .L328
.L333:                               	@ predecessors = .L286                               	@ successors = .L334
	b .L334
.L334:                               	@ predecessors = .L333, .L366                               	@ successors = .L339, .L365
	ldr r8, addr_0_chat
	ldr r5, [r8]
	ldr r9, addr_0_chas
	mov r4, #4
	mul r6, r5, r4
	add r7, r9, r6
	ldr r10, [r7]
	cmp r10, #43
	beq .L365
	b .L339
.L335:                               	@ predecessors = .L364, .L368                               	@ successors = .L328
	mov r0, #45
	bl chapush
	b .L328
.L339:                               	@ predecessors = .L334                               	@ successors = .L340
	b .L340
.L340:                               	@ predecessors = .L339                               	@ successors = .L344, .L365
	ldr r8, addr_0_chat
	ldr r5, [r8]
	ldr r4, addr_0_chas
	mov r9, #4
	mul r6, r5, r9
	add r7, r4, r6
	ldr r10, [r7]
	cmp r10, #45
	beq .L365
	b .L344
.L344:                               	@ predecessors = .L340                               	@ successors = .L345
	b .L345
.L345:                               	@ predecessors = .L344                               	@ successors = .L349, .L365
	ldr r8, addr_0_chat
	ldr r5, [r8]
	ldr r9, addr_0_chas
	mov r4, #4
	mul r6, r5, r4
	add r7, r9, r6
	ldr r10, [r7]
	cmp r10, #42
	beq .L365
	b .L349
.L349:                               	@ predecessors = .L345                               	@ successors = .L350
	b .L350
.L350:                               	@ predecessors = .L349                               	@ successors = .L354, .L365
	ldr r8, addr_0_chat
	ldr r5, [r8]
	ldr r4, addr_0_chas
	mov r9, #4
	mul r6, r5, r9
	add r7, r4, r6
	ldr r10, [r7]
	cmp r10, #47
	beq .L365
	b .L354
.L354:                               	@ predecessors = .L350                               	@ successors = .L355
	b .L355
.L355:                               	@ predecessors = .L354                               	@ successors = .L359, .L365
	ldr r8, addr_0_chat
	ldr r5, [r8]
	ldr r9, addr_0_chas
	mov r4, #4
	mul r6, r5, r4
	add r7, r9, r6
	ldr r10, [r7]
	cmp r10, #37
	beq .L365
	b .L359
	b .LiteralPool0
.LTORG
addr_0_c:
	.word c
addr_0_ii:
	.word ii
addr_0_chat:
	.word chat
addr_0_get2:
	.word get2
addr_0_chas:
	.word chas
addr_0_intt:
	.word intt
addr_0_get:
	.word get
addr_0_i:
	.word i
addr_0_ints:
	.word ints
.LiteralPool0:
.L359:                               	@ predecessors = .L355                               	@ successors = .L360
	b .L360
.L360:                               	@ predecessors = .L359                               	@ successors = .L364, .L365
	ldr r8, addr_1_chat
	ldr r5, [r8]
	ldr r4, addr_1_chas
	mov r9, #4
	mul r6, r5, r9
	add r7, r4, r6
	ldr r10, [r7]
	cmp r10, #94
	beq .L365
	b .L364
.L364:                               	@ predecessors = .L360                               	@ successors = .L335
	b .L335
.L365:                               	@ predecessors = .L334, .L340, .L345, .L350, .L355, .L360                               	@ successors = .L367, .L368
	bl find
	mov r8, r0
	cmp r8, #0
	beq .L368
	b .L367
.L366:                               	@ predecessors = .L367, .L369                               	@ successors = .L334
	b .L334
.L367:                               	@ predecessors = .L365                               	@ successors = .L366
	b .L366
.L368:                               	@ predecessors = .L365                               	@ successors = .L335
	b .L335
.L369:                               	@ successors = .L366
	b .L366
.L370:                               	@ predecessors = .L374, .L377                               	@ successors = .L406, .L407
	ldr r5, addr_1_i
	ldr r9, [r5]
	ldr r4, addr_1_get
	mov r6, #4
	mul r7, r9, r6
	add r10, r4, r7
	ldr r8, [r10]
	cmp r8, #47
	beq .L407
	b .L406
.L374:                               	@ predecessors = .L328                               	@ successors = .L370
	b .L370
.L375:                               	@ predecessors = .L328                               	@ successors = .L376
	b .L376
.L376:                               	@ predecessors = .L375, .L398                               	@ successors = .L381, .L397
	ldr r5, addr_1_chat
	ldr r9, [r5]
	ldr r6, addr_1_chas
	mov r4, #4
	mul r7, r9, r4
	add r10, r6, r7
	ldr r8, [r10]
	cmp r8, #42
	beq .L397
	b .L381
.L377:                               	@ predecessors = .L396, .L400                               	@ successors = .L370
	mov r0, #42
	bl chapush
	b .L370
.L381:                               	@ predecessors = .L376                               	@ successors = .L382
	b .L382
.L382:                               	@ predecessors = .L381                               	@ successors = .L386, .L397
	ldr r5, addr_1_chat
	ldr r9, [r5]
	ldr r4, addr_1_chas
	mov r6, #4
	mul r7, r9, r6
	add r10, r4, r7
	ldr r8, [r10]
	cmp r8, #47
	beq .L397
	b .L386
.L386:                               	@ predecessors = .L382                               	@ successors = .L387
	b .L387
.L387:                               	@ predecessors = .L386                               	@ successors = .L391, .L397
	ldr r5, addr_1_chat
	ldr r9, [r5]
	ldr r6, addr_1_chas
	mov r4, #4
	mul r7, r9, r4
	add r10, r6, r7
	ldr r8, [r10]
	cmp r8, #37
	beq .L397
	b .L391
.L391:                               	@ predecessors = .L387                               	@ successors = .L392
	b .L392
.L392:                               	@ predecessors = .L391                               	@ successors = .L396, .L397
	ldr r5, addr_1_chat
	ldr r9, [r5]
	ldr r4, addr_1_chas
	mov r6, #4
	mul r7, r9, r6
	add r10, r4, r7
	ldr r8, [r10]
	cmp r8, #94
	beq .L397
	b .L396
.L396:                               	@ predecessors = .L392                               	@ successors = .L377
	b .L377
.L397:                               	@ predecessors = .L392, .L376, .L382, .L387                               	@ successors = .L399, .L400
	bl find
	mov r5, r0
	cmp r5, #0
	beq .L400
	b .L399
.L398:                               	@ predecessors = .L399, .L401                               	@ successors = .L376
	b .L376
.L399:                               	@ predecessors = .L397                               	@ successors = .L398
	b .L398
.L400:                               	@ predecessors = .L397                               	@ successors = .L377
	b .L377
.L401:                               	@ successors = .L398
	b .L398
.L402:                               	@ predecessors = .L406, .L409                               	@ successors = .L438, .L439
	ldr r9, addr_1_i
	ldr r6, [r9]
	ldr r4, addr_1_get
	mov r7, #4
	mul r10, r6, r7
	add r8, r4, r10
	ldr r5, [r8]
	cmp r5, #37
	beq .L439
	b .L438
.L406:                               	@ predecessors = .L370                               	@ successors = .L402
	b .L402
.L407:                               	@ predecessors = .L370                               	@ successors = .L408
	b .L408
.L408:                               	@ predecessors = .L407, .L430                               	@ successors = .L413, .L429
	ldr r9, addr_1_chat
	ldr r6, [r9]
	ldr r7, addr_1_chas
	mov r4, #4
	mul r10, r6, r4
	add r8, r7, r10
	ldr r5, [r8]
	cmp r5, #42
	beq .L429
	b .L413
.L409:                               	@ predecessors = .L428, .L432                               	@ successors = .L402
	mov r0, #47
	bl chapush
	b .L402
.L413:                               	@ predecessors = .L408                               	@ successors = .L414
	b .L414
.L414:                               	@ predecessors = .L413                               	@ successors = .L418, .L429
	ldr r9, addr_1_chat
	ldr r6, [r9]
	ldr r4, addr_1_chas
	mov r7, #4
	mul r10, r6, r7
	add r8, r4, r10
	ldr r5, [r8]
	cmp r5, #47
	beq .L429
	b .L418
.L418:                               	@ predecessors = .L414                               	@ successors = .L419
	b .L419
.L419:                               	@ predecessors = .L418                               	@ successors = .L423, .L429
	ldr r9, addr_1_chat
	ldr r6, [r9]
	ldr r7, addr_1_chas
	mov r4, #4
	mul r10, r6, r4
	add r8, r7, r10
	ldr r5, [r8]
	cmp r5, #37
	beq .L429
	b .L423
.L423:                               	@ predecessors = .L419                               	@ successors = .L424
	b .L424
.L424:                               	@ predecessors = .L423                               	@ successors = .L428, .L429
	ldr r9, addr_1_chat
	ldr r6, [r9]
	ldr r4, addr_1_chas
	mov r7, #4
	mul r10, r6, r7
	add r8, r4, r10
	ldr r5, [r8]
	cmp r5, #94
	beq .L429
	b .L428
.L428:                               	@ predecessors = .L424                               	@ successors = .L409
	b .L409
.L429:                               	@ predecessors = .L408, .L414, .L419, .L424                               	@ successors = .L431, .L432
	bl find
	mov r9, r0
	cmp r9, #0
	beq .L432
	b .L431
.L430:                               	@ predecessors = .L431, .L433                               	@ successors = .L408
	b .L408
.L431:                               	@ predecessors = .L429                               	@ successors = .L430
	b .L430
.L432:                               	@ predecessors = .L429                               	@ successors = .L409
	b .L409
.L433:                               	@ successors = .L430
	b .L430
.L434:                               	@ predecessors = .L438, .L441                               	@ successors = .L244
	ldr r6, addr_1_ii
	ldr r7, [r6]
	ldr r4, addr_1_get2
	mov r10, #4
	mul r8, r7, r10
	add r5, r4, r8
	mov r9, #32
	str r9, [r5]
	ldr r6, addr_1_ii
	ldr r7, [r6]
	add r10, r7, #1
	ldr r4, addr_1_ii
	str r10, [r4]
	b .L244
.L438:                               	@ predecessors = .L402                               	@ successors = .L434
	b .L434
.L439:                               	@ predecessors = .L402                               	@ successors = .L440
	b .L440
.L440:                               	@ predecessors = .L439, .L462                               	@ successors = .L445, .L461
	ldr r8, addr_1_chat
	ldr r5, [r8]
	ldr r9, addr_1_chas
	mov r6, #4
	mul r7, r5, r6
	add r10, r9, r7
	ldr r4, [r10]
	cmp r4, #42
	beq .L461
	b .L445
.L441:                               	@ predecessors = .L460, .L464                               	@ successors = .L434
	mov r0, #37
	bl chapush
	b .L434
.L445:                               	@ predecessors = .L440                               	@ successors = .L446
	b .L446
.L446:                               	@ predecessors = .L445                               	@ successors = .L450, .L461
	ldr r8, addr_1_chat
	ldr r5, [r8]
	ldr r6, addr_1_chas
	mov r9, #4
	mul r7, r5, r9
	add r10, r6, r7
	ldr r4, [r10]
	cmp r4, #47
	beq .L461
	b .L450
.L450:                               	@ predecessors = .L446                               	@ successors = .L451
	b .L451
.L451:                               	@ predecessors = .L450                               	@ successors = .L455, .L461
	ldr r8, addr_1_chat
	ldr r5, [r8]
	ldr r9, addr_1_chas
	mov r6, #4
	mul r7, r5, r6
	add r10, r9, r7
	ldr r4, [r10]
	cmp r4, #37
	beq .L461
	b .L455
.L455:                               	@ predecessors = .L451                               	@ successors = .L456
	b .L456
.L456:                               	@ predecessors = .L455                               	@ successors = .L460, .L461
	ldr r8, addr_1_chat
	ldr r5, [r8]
	ldr r6, addr_1_chas
	mov r9, #4
	mul r7, r5, r9
	add r10, r6, r7
	ldr r4, [r10]
	cmp r4, #94
	beq .L461
	b .L460
.L460:                               	@ predecessors = .L456                               	@ successors = .L441
	b .L441
.L461:                               	@ predecessors = .L440, .L446, .L451, .L456                               	@ successors = .L463, .L464
	bl find
	mov r8, r0
	cmp r8, #0
	beq .L464
	b .L463
.L462:                               	@ predecessors = .L463, .L465                               	@ successors = .L440
	b .L440
.L463:                               	@ predecessors = .L461                               	@ successors = .L462
	b .L462
.L464:                               	@ predecessors = .L461                               	@ successors = .L441
	b .L441
.L465:                               	@ successors = .L462
	b .L462
.L470:                               	@ predecessors = .L239, .L474                               	@ successors = .L473, .L474
	ldr r5, addr_1_chat
	ldr r9, [r5]
	cmp r9, #0
	bgt .L474
	b .L473
.L471:                               	@ predecessors = .L473                               	@ successors = .L484
	ldr r6, addr_1_ii
	ldr r7, [r6]
	ldr r10, addr_1_get2
	mov r4, #4
	mul r8, r7, r4
	add r5, r10, r8
	mov r9, #64
	str r9, [r5]
	mov r6, #1
	ldr r7, addr_1_i
	str r6, [r7]
	b .L484
.L473:                               	@ predecessors = .L470                               	@ successors = .L471
	b .L471
.L474:                               	@ predecessors = .L470                               	@ successors = .L470
	bl chapop
	mov r4, r0
	str r4, [fp, #-16]
	ldr r10, addr_1_ii
	ldr r8, [r10]
	ldr r5, addr_1_get2
	mov r9, #4
	mul r6, r8, r9
	add r7, r5, r6
	mov r4, #32
	str r4, [r7]
	ldr r10, [fp, #-16]
	ldr r8, addr_1_ii
	ldr r9, [r8]
	add r5, r9, #1
	ldr r6, addr_1_get2
	mov r7, #4
	mul r4, r5, r7
	add r8, r6, r4
	str r10, [r8]
	ldr r9, addr_1_ii
	ldr r5, [r9]
	add r7, r5, #2
	ldr r6, addr_1_ii
	str r7, [r6]
	b .L470
.L484:                               	@ predecessors = .L471, .L491                               	@ successors = .L489, .L490
	ldr r4, addr_1_i
	ldr r10, [r4]
	ldr r8, addr_1_get2
	mov r9, #4
	mul r5, r10, r9
	add r7, r8, r5
	ldr r6, [r7]
	cmp r6, #64
	bne .L490
	b .L489
.L485:                               	@ predecessors = .L489
	ldr r4, addr_1_ints
	mov r10, #1
	mov r9, #4
	mul r8, r10, r9
	add r5, r4, r8
	ldr r7, [r5]
	mov r0, r7
	bl putint
	mov r0, #0
	b .Lmain_END
.L489:                               	@ predecessors = .L484                               	@ successors = .L485
	b .L485
.L490:                               	@ predecessors = .L484                               	@ successors = .L495, .L521
	ldr r6, addr_1_i
	ldr r10, [r6]
	ldr r9, addr_1_get2
	mov r4, #4
	mul r8, r10, r4
	add r5, r9, r8
	ldr r7, [r5]
	cmp r7, #43
	beq .L521
	b .L495
	b .LiteralPool1
.LTORG
addr_1_c:
	.word c
addr_1_ii:
	.word ii
addr_1_chat:
	.word chat
addr_1_get2:
	.word get2
addr_1_chas:
	.word chas
addr_1_intt:
	.word intt
addr_1_get:
	.word get
addr_1_i:
	.word i
addr_1_ints:
	.word ints
.LiteralPool1:
.L491:                               	@ predecessors = .L565, .L575                               	@ successors = .L484
	ldr r6, addr_2_i
	ldr r10, [r6]
	add r4, r10, #1
	ldr r9, addr_2_i
	str r4, [r9]
	b .L484
.L495:                               	@ predecessors = .L490                               	@ successors = .L496
	b .L496
.L496:                               	@ predecessors = .L495                               	@ successors = .L500, .L521
	ldr r8, addr_2_i
	ldr r5, [r8]
	ldr r7, addr_2_get2
	mov r6, #4
	mul r10, r5, r6
	add r4, r7, r10
	ldr r9, [r4]
	cmp r9, #45
	beq .L521
	b .L500
.L500:                               	@ predecessors = .L496                               	@ successors = .L501
	b .L501
.L501:                               	@ predecessors = .L500                               	@ successors = .L505, .L521
	ldr r8, addr_2_i
	ldr r5, [r8]
	ldr r6, addr_2_get2
	mov r7, #4
	mul r10, r5, r7
	add r4, r6, r10
	ldr r9, [r4]
	cmp r9, #42
	beq .L521
	b .L505
.L505:                               	@ predecessors = .L501                               	@ successors = .L506
	b .L506
.L506:                               	@ predecessors = .L505                               	@ successors = .L510, .L521
	ldr r8, addr_2_i
	ldr r5, [r8]
	ldr r7, addr_2_get2
	mov r6, #4
	mul r10, r5, r6
	add r4, r7, r10
	ldr r9, [r4]
	cmp r9, #47
	beq .L521
	b .L510
.L510:                               	@ predecessors = .L506                               	@ successors = .L511
	b .L511
.L511:                               	@ predecessors = .L510                               	@ successors = .L515, .L521
	ldr r8, addr_2_i
	ldr r5, [r8]
	ldr r6, addr_2_get2
	mov r7, #4
	mul r10, r5, r7
	add r4, r6, r10
	ldr r9, [r4]
	cmp r9, #37
	beq .L521
	b .L515
.L515:                               	@ predecessors = .L511                               	@ successors = .L516
	b .L516
.L516:                               	@ predecessors = .L515                               	@ successors = .L520, .L521
	ldr r8, addr_2_i
	ldr r5, [r8]
	ldr r7, addr_2_get2
	mov r6, #4
	mul r10, r5, r6
	add r4, r7, r10
	ldr r9, [r4]
	cmp r9, #94
	beq .L521
	b .L520
.L520:                               	@ predecessors = .L516                               	@ successors = .L574
	b .L574
.L521:                               	@ predecessors = .L490, .L496, .L501, .L506, .L511, .L516                               	@ successors = .L529, .L530
	bl intpop
	mov r8, r0
	str r8, [fp, #-12]
	bl intpop
	mov r5, r0
	str r5, [fp, #-8]
	ldr r6, addr_2_i
	ldr r7, [r6]
	ldr r10, addr_2_get2
	mov r4, #4
	mul r9, r7, r4
	add r8, r10, r9
	ldr r5, [r8]
	cmp r5, #43
	beq .L530
	b .L529
.L525:                               	@ predecessors = .L529, .L530                               	@ successors = .L537, .L538
	ldr r6, addr_2_i
	ldr r7, [r6]
	ldr r4, addr_2_get2
	mov r10, #4
	mul r9, r7, r10
	add r8, r4, r9
	ldr r5, [r8]
	cmp r5, #45
	beq .L538
	b .L537
.L529:                               	@ predecessors = .L521                               	@ successors = .L525
	b .L525
.L530:                               	@ predecessors = .L521                               	@ successors = .L525
	ldr r6, [fp, #-12]
	ldr r7, [fp, #-8]
	add r10, r6, r7
	str r10, [fp, #-4]
	b .L525
.L533:                               	@ predecessors = .L537, .L538                               	@ successors = .L545, .L546
	ldr r4, addr_2_i
	ldr r9, [r4]
	ldr r8, addr_2_get2
	mov r5, #4
	mul r6, r9, r5
	add r7, r8, r6
	ldr r10, [r7]
	cmp r10, #42
	beq .L546
	b .L545
.L537:                               	@ predecessors = .L525                               	@ successors = .L533
	b .L533
.L538:                               	@ predecessors = .L525                               	@ successors = .L533
	ldr r4, [fp, #-8]
	ldr r9, [fp, #-12]
	sub r5, r4, r9
	str r5, [fp, #-4]
	b .L533
.L541:                               	@ predecessors = .L545, .L546                               	@ successors = .L553, .L554
	ldr r8, addr_2_i
	ldr r6, [r8]
	ldr r7, addr_2_get2
	mov r10, #4
	mul r4, r6, r10
	add r9, r7, r4
	ldr r5, [r9]
	cmp r5, #47
	beq .L554
	b .L553
.L545:                               	@ predecessors = .L533                               	@ successors = .L541
	b .L541
.L546:                               	@ predecessors = .L533                               	@ successors = .L541
	ldr r8, [fp, #-12]
	ldr r6, [fp, #-8]
	mul r10, r8, r6
	str r10, [fp, #-4]
	b .L541
.L549:                               	@ predecessors = .L553, .L554                               	@ successors = .L561, .L562
	ldr r7, addr_2_i
	ldr r4, [r7]
	ldr r9, addr_2_get2
	mov r5, #4
	mul r8, r4, r5
	add r6, r9, r8
	ldr r10, [r6]
	cmp r10, #37
	beq .L562
	b .L561
.L553:                               	@ predecessors = .L541                               	@ successors = .L549
	b .L549
.L554:                               	@ predecessors = .L541                               	@ successors = .L549
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-12]
	sdiv r5, r7, r4
	str r5, [fp, #-4]
	b .L549
.L557:                               	@ predecessors = .L561, .L562                               	@ successors = .L569, .L570
	ldr r9, addr_2_i
	ldr r8, [r9]
	ldr r6, addr_2_get2
	mov r10, #4
	mul r7, r8, r10
	add r4, r6, r7
	ldr r5, [r4]
	cmp r5, #94
	beq .L570
	b .L569
.L561:                               	@ predecessors = .L549                               	@ successors = .L557
	b .L557
.L562:                               	@ predecessors = .L549                               	@ successors = .L557
	ldr r9, [fp, #-8]
	ldr r8, [fp, #-12]
	sdiv r10, r9, r8
	mul r6, r10, r8
	sub r7, r9, r6
	str r7, [fp, #-4]
	b .L557
.L565:                               	@ predecessors = .L569, .L570                               	@ successors = .L491
	ldr r4, [fp, #-4]
	mov r0, r4
	bl intpush
	b .L491
.L569:                               	@ predecessors = .L557                               	@ successors = .L565
	b .L565
.L570:                               	@ predecessors = .L557                               	@ successors = .L565
	ldr r5, [fp, #-8]
	ldr r8, [fp, #-12]
	mov r1, r8
	mov r0, r5
	bl power
	mov r10, r0
	str r10, [fp, #-4]
	b .L565
.L574:                               	@ predecessors = .L520                               	@ successors = .L579, .L580
	ldr r9, addr_2_i
	ldr r6, [r9]
	ldr r7, addr_2_get2
	mov r4, #4
	mul r8, r6, r4
	add r5, r7, r8
	ldr r10, [r5]
	cmp r10, #32
	bne .L580
	b .L579
.L575:                               	@ predecessors = .L579, .L585                               	@ successors = .L491
	b .L491
.L579:                               	@ predecessors = .L574                               	@ successors = .L575
	b .L575
.L580:                               	@ predecessors = .L574                               	@ successors = .L584
	ldr r9, addr_2_i
	ldr r6, [r9]
	ldr r4, addr_2_get2
	mov r7, #4
	mul r8, r6, r7
	add r5, r4, r8
	ldr r10, [r5]
	sub r9, r10, #48
	mov r0, r9
	bl intpush
	mov r6, #1
	ldr r7, addr_2_ii
	str r6, [r7]
	b .L584
.L584:                               	@ predecessors = .L580, .L591                               	@ successors = .L590, .L591
	ldr r4, addr_2_i
	ldr r8, [r4]
	ldr r5, addr_2_ii
	ldr r10, [r5]
	add r9, r8, r10
	ldr r6, addr_2_get2
	mov r7, #4
	mul r4, r9, r7
	add r5, r6, r4
	ldr r8, [r5]
	cmp r8, #32
	bne .L591
	b .L590
.L585:                               	@ predecessors = .L590                               	@ successors = .L575
	ldr r10, addr_2_i
	ldr r9, [r10]
	ldr r7, addr_2_ii
	ldr r6, [r7]
	add r4, r9, r6
	sub r5, r4, #1
	ldr r8, addr_2_i
	str r5, [r8]
	b .L575
.L590:                               	@ predecessors = .L584                               	@ successors = .L585
	b .L585
.L591:                               	@ predecessors = .L584                               	@ successors = .L584
	ldr r10, addr_2_i
	ldr r7, [r10]
	ldr r9, addr_2_ii
	ldr r6, [r9]
	add r4, r7, r6
	ldr r5, addr_2_get2
	mov r8, #4
	mul r10, r4, r8
	add r9, r5, r10
	ldr r7, [r9]
	sub r6, r7, #48
	mov r0, r6
	bl intadd
	ldr r4, addr_2_ii
	ldr r8, [r4]
	add r5, r8, #1
	ldr r10, addr_2_ii
	str r5, [r10]
	b .L584
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	b .LiteralPool2
.LTORG
addr_2_c:
	.word c
addr_2_ii:
	.word ii
addr_2_chat:
	.word chat
addr_2_get2:
	.word get2
addr_2_chas:
	.word chas
addr_2_intt:
	.word intt
addr_2_get:
	.word get
addr_2_i:
	.word i
addr_2_ints:
	.word ints
.LiteralPool2:
addr_3_c:
	.word c
addr_3_ii:
	.word ii
addr_3_chat:
	.word chat
addr_3_get2:
	.word get2
addr_3_chas:
	.word chas
addr_3_intt:
	.word intt
addr_3_get:
	.word get
addr_3_i:
	.word i
addr_3_ints:
	.word ints
