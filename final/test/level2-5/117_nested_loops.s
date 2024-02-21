	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm	arr2, 107520, 4
	.comm	arr1, 57600, 4
	.text
	.global loop1
	.type loop1 , %function
loop1:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #36
.L77:                               	@ successors = .L87
	str r0, [fp, #-36]
	str r1, [fp, #-32]
	mov r4, #0
	str r4, [fp, #-28]
	b .L87
.L87:                               	@ predecessors = .L77, .L98                               	@ successors = .L91, .L92
	ldr r5, [fp, #-28]
	ldr r6, [fp, #-36]
	cmp r5, r6
	blt .L92
	b .L91
.L88:                               	@ predecessors = .L91, .L95
	b .Lloop1_END
.L91:                               	@ predecessors = .L87                               	@ successors = .L88
	b .L88
.L92:                               	@ predecessors = .L87                               	@ successors = .L95, .L96
	ldr r7, [fp, #-28]
	ldr r8, [fp, #-32]
	cmp r7, r8
	blt .L96
	b .L95
.L95:                               	@ predecessors = .L92                               	@ successors = .L88
	b .L88
.L96:                               	@ predecessors = .L92                               	@ successors = .L97
	mov r9, #0
	str r9, [fp, #-24]
	b .L97
.L97:                               	@ predecessors = .L96, .L103                               	@ successors = .L100, .L101
	ldr r10, [fp, #-24]
	cmp r10, #2
	blt .L101
	b .L100
.L98:                               	@ predecessors = .L100                               	@ successors = .L87
	ldr r4, [fp, #-28]
	add r5, r4, #1
	str r5, [fp, #-28]
	b .L87
.L100:                               	@ predecessors = .L97                               	@ successors = .L98
	b .L98
.L101:                               	@ predecessors = .L97                               	@ successors = .L102
	mov r6, #0
	str r6, [fp, #-20]
	b .L102
.L102:                               	@ predecessors = .L101, .L108                               	@ successors = .L105, .L106
	ldr r7, [fp, #-20]
	cmp r7, #3
	blt .L106
	b .L105
.L103:                               	@ predecessors = .L105                               	@ successors = .L97
	ldr r8, [fp, #-24]
	add r9, r8, #1
	str r9, [fp, #-24]
	b .L97
.L105:                               	@ predecessors = .L102                               	@ successors = .L103
	b .L103
.L106:                               	@ predecessors = .L102                               	@ successors = .L107
	mov r10, #0
	str r10, [fp, #-16]
	b .L107
.L107:                               	@ predecessors = .L106, .L113                               	@ successors = .L110, .L111
	ldr r4, [fp, #-16]
	cmp r4, #4
	blt .L111
	b .L110
.L108:                               	@ predecessors = .L110                               	@ successors = .L102
	ldr r5, [fp, #-20]
	add r6, r5, #1
	str r6, [fp, #-20]
	b .L102
.L110:                               	@ predecessors = .L107                               	@ successors = .L108
	b .L108
.L111:                               	@ predecessors = .L107                               	@ successors = .L112
	mov r7, #0
	str r7, [fp, #-12]
	b .L112
.L112:                               	@ predecessors = .L111, .L118                               	@ successors = .L115, .L116
	ldr r8, [fp, #-12]
	cmp r8, #5
	blt .L116
	b .L115
.L113:                               	@ predecessors = .L115                               	@ successors = .L107
	ldr r9, [fp, #-16]
	add r10, r9, #1
	str r10, [fp, #-16]
	b .L107
.L115:                               	@ predecessors = .L112                               	@ successors = .L113
	b .L113
.L116:                               	@ predecessors = .L112                               	@ successors = .L117
	mov r4, #0
	str r4, [fp, #-8]
	b .L117
.L117:                               	@ predecessors = .L116, .L123                               	@ successors = .L120, .L121
	ldr r5, [fp, #-8]
	cmp r5, #6
	blt .L121
	b .L120
.L118:                               	@ predecessors = .L120                               	@ successors = .L112
	ldr r6, [fp, #-12]
	add r7, r6, #1
	str r7, [fp, #-12]
	b .L112
.L120:                               	@ predecessors = .L117                               	@ successors = .L118
	b .L118
.L121:                               	@ predecessors = .L117                               	@ successors = .L122
	mov r8, #0
	str r8, [fp, #-4]
	b .L122
.L122:                               	@ predecessors = .L121, .L126                               	@ successors = .L125, .L126
	ldr r9, [fp, #-4]
	cmp r9, #2
	blt .L126
	b .L125
.L123:                               	@ predecessors = .L125                               	@ successors = .L117
	ldr r10, [fp, #-8]
	add r4, r10, #1
	str r4, [fp, #-8]
	b .L117
.L125:                               	@ predecessors = .L122                               	@ successors = .L123
	b .L123
.L126:                               	@ predecessors = .L122                               	@ successors = .L122
	ldr r5, [fp, #-28]
	ldr r6, [fp, #-24]
	add r7, r5, r6
	ldr r8, [fp, #-20]
	add r9, r7, r8
	ldr r10, [fp, #-16]
	add r4, r9, r10
	ldr r5, [fp, #-12]
	add r6, r4, r5
	ldr r7, [fp, #-8]
	add r8, r6, r7
	ldr r9, [fp, #-4]
	add r10, r8, r9
	ldr r4, [fp, #-36]
	add r5, r10, r4
	ldr r6, [fp, #-32]
	add r7, r5, r6
	ldr r8, [fp, #-28]
	ldr r9, addr_0_arr1
	mov r10, #5760
	mul r4, r8, r10
	add r5, r9, r4
	ldr r6, [fp, #-24]
	mov r8, #2880
	mul r10, r6, r8
	add r9, r5, r10
	ldr r4, [fp, #-20]
	mov r6, #960
	mul r8, r4, r6
	add r5, r9, r8
	ldr r10, [fp, #-16]
	mov r4, #240
	mul r6, r10, r4
	add r9, r5, r6
	ldr r8, [fp, #-12]
	mov r10, #48
	mul r4, r8, r10
	add r5, r9, r4
	ldr r6, [fp, #-8]
	mov r8, #8
	mul r10, r6, r8
	add r9, r5, r10
	ldr r4, [fp, #-4]
	mov r6, #4
	mul r8, r4, r6
	add r5, r9, r8
	str r7, [r5]
	ldr r10, [fp, #-4]
	add r4, r10, #1
	str r4, [fp, #-4]
	b .L122
.Lloop1_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global loop2
	.type loop2 , %function
loop2:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #28
.L157:                               	@ successors = .L165
	mov r4, #0
	str r4, [fp, #-28]
	b .L165
.L165:                               	@ predecessors = .L157, .L171                               	@ successors = .L168, .L169
	ldr r5, [fp, #-28]
	cmp r5, #10
	blt .L169
	b .L168
.L166:                               	@ predecessors = .L168
	b .Lloop2_END
.L168:                               	@ predecessors = .L165                               	@ successors = .L166
	b .L166
.L169:                               	@ predecessors = .L165                               	@ successors = .L170
	mov r6, #0
	str r6, [fp, #-24]
	b .L170
.L170:                               	@ predecessors = .L169, .L176                               	@ successors = .L173, .L174
	ldr r7, [fp, #-24]
	cmp r7, #2
	blt .L174
	b .L173
.L171:                               	@ predecessors = .L173                               	@ successors = .L165
	ldr r8, [fp, #-28]
	add r9, r8, #1
	str r9, [fp, #-28]
	b .L165
.L173:                               	@ predecessors = .L170                               	@ successors = .L171
	b .L171
.L174:                               	@ predecessors = .L170                               	@ successors = .L175
	mov r10, #0
	str r10, [fp, #-20]
	b .L175
.L175:                               	@ predecessors = .L174, .L181                               	@ successors = .L178, .L179
	ldr r4, [fp, #-20]
	cmp r4, #3
	blt .L179
	b .L178
.L176:                               	@ predecessors = .L178                               	@ successors = .L170
	ldr r5, [fp, #-24]
	add r6, r5, #1
	str r6, [fp, #-24]
	b .L170
.L178:                               	@ predecessors = .L175                               	@ successors = .L176
	b .L176
.L179:                               	@ predecessors = .L175                               	@ successors = .L180
	mov r7, #0
	str r7, [fp, #-16]
	b .L180
.L180:                               	@ predecessors = .L179, .L186                               	@ successors = .L183, .L184
	ldr r8, [fp, #-16]
	cmp r8, #2
	blt .L184
	b .L183
.L181:                               	@ predecessors = .L183                               	@ successors = .L175
	ldr r9, [fp, #-20]
	add r10, r9, #1
	str r10, [fp, #-20]
	b .L175
.L183:                               	@ predecessors = .L180                               	@ successors = .L181
	b .L181
.L184:                               	@ predecessors = .L180                               	@ successors = .L185
	mov r4, #0
	str r4, [fp, #-12]
	b .L185
.L185:                               	@ predecessors = .L184, .L191                               	@ successors = .L188, .L189
	ldr r5, [fp, #-12]
	cmp r5, #4
	blt .L189
	b .L188
.L186:                               	@ predecessors = .L188                               	@ successors = .L180
	ldr r6, [fp, #-16]
	add r7, r6, #1
	str r7, [fp, #-16]
	b .L180
.L188:                               	@ predecessors = .L185                               	@ successors = .L186
	b .L186
.L189:                               	@ predecessors = .L185                               	@ successors = .L190
	mov r8, #0
	str r8, [fp, #-8]
	b .L190
.L190:                               	@ predecessors = .L189, .L196                               	@ successors = .L193, .L194
	ldr r9, [fp, #-8]
	cmp r9, #8
	blt .L194
	b .L193
.L191:                               	@ predecessors = .L193                               	@ successors = .L185
	ldr r10, [fp, #-12]
	add r4, r10, #1
	str r4, [fp, #-12]
	b .L185
.L193:                               	@ predecessors = .L190                               	@ successors = .L191
	b .L191
.L194:                               	@ predecessors = .L190                               	@ successors = .L195
	mov r5, #0
	str r5, [fp, #-4]
	b .L195
.L195:                               	@ predecessors = .L194, .L199                               	@ successors = .L198, .L199
	ldr r6, [fp, #-4]
	cmp r6, #7
	blt .L199
	b .L198
.L196:                               	@ predecessors = .L198                               	@ successors = .L190
	ldr r7, [fp, #-8]
	add r8, r7, #1
	str r8, [fp, #-8]
	b .L190
.L198:                               	@ predecessors = .L195                               	@ successors = .L196
	b .L196
.L199:                               	@ predecessors = .L195                               	@ successors = .L195
	ldr r9, [fp, #-28]
	ldr r10, [fp, #-24]
	add r4, r9, r10
	ldr r5, [fp, #-16]
	add r6, r4, r5
	ldr r7, [fp, #-4]
	add r8, r6, r7
	ldr r9, [fp, #-28]
	ldr r10, addr_0_arr2
	mov r4, #10752
	mul r5, r9, r4
	add r6, r10, r5
	ldr r7, [fp, #-24]
	mov r9, #5376
	mul r4, r7, r9
	add r10, r6, r4
	ldr r5, [fp, #-20]
	mov r7, #1792
	mul r9, r5, r7
	add r6, r10, r9
	ldr r4, [fp, #-16]
	mov r5, #896
	mul r7, r4, r5
	add r10, r6, r7
	ldr r9, [fp, #-12]
	mov r4, #224
	mul r5, r9, r4
	add r6, r10, r5
	ldr r7, [fp, #-8]
	mov r9, #28
	mul r4, r7, r9
	add r10, r6, r4
	ldr r5, [fp, #-4]
	mov r7, #4
	mul r9, r5, r7
	add r6, r10, r9
	str r8, [r6]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	b .L195
.Lloop2_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global loop3
	.type loop3 , %function
loop3:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #48
.L225:                               	@ successors = .L241
	str r0, [fp, #-48]
	str r1, [fp, #-44]
	str r2, [fp, #-40]
	str r3, [fp, #-36]
	mov r4, #0
	str r4, [fp, #-4]
	mov r5, #0
	str r5, [fp, #-32]
	b .L241
.L241:                               	@ predecessors = .L225, .L350                               	@ successors = .L244, .L245
	ldr r6, [fp, #-32]
	cmp r6, #10
	blt .L245
	b .L244
.L242:                               	@ predecessors = .L244, .L354
	ldr r7, [fp, #-4]
	mov r0, r7
	b .Lloop3_END
.L244:                               	@ predecessors = .L241                               	@ successors = .L242
	b .L242
.L245:                               	@ predecessors = .L241                               	@ successors = .L246
	mov r8, #0
	str r8, [fp, #-28]
	b .L246
.L246:                               	@ predecessors = .L245, .L343                               	@ successors = .L249, .L250
	ldr r9, [fp, #-28]
	cmp r9, #100
	blt .L250
	b .L249
.L247:                               	@ predecessors = .L249, .L347                               	@ successors = .L353, .L354
	ldr r10, [fp, #-32]
	add r4, r10, #1
	str r4, [fp, #-32]
	ldr r5, [fp, #-32]
	ldr r6, [fp, #-48]
	cmp r5, r6
	bge .L354
	b .L353
.L249:                               	@ predecessors = .L246                               	@ successors = .L247
	b .L247
.L250:                               	@ predecessors = .L246                               	@ successors = .L251
	mov r7, #0
	str r7, [fp, #-24]
	b .L251
.L251:                               	@ predecessors = .L250, .L336                               	@ successors = .L254, .L255
	ldr r8, [fp, #-24]
	cmp r8, #1000
	blt .L255
	b .L254
.L252:                               	@ predecessors = .L254, .L340                               	@ successors = .L346, .L347
	ldr r9, [fp, #-28]
	add r10, r9, #1
	str r10, [fp, #-28]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-44]
	cmp r4, r5
	bge .L347
	b .L346
.L254:                               	@ predecessors = .L251                               	@ successors = .L252
	b .L252
.L255:                               	@ predecessors = .L251                               	@ successors = .L256
	mov r6, #0
	str r6, [fp, #-20]
	b .L256
.L256:                               	@ predecessors = .L255, .L329                               	@ successors = .L259, .L260
	ldr r7, [fp, #-20]
	ldr r8, =10000
	cmp r7, r8
	blt .L260
	b .L259
.L257:                               	@ predecessors = .L259, .L333                               	@ successors = .L339, .L340
	ldr r9, [fp, #-24]
	add r10, r9, #1
	str r10, [fp, #-24]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-40]
	cmp r4, r5
	bge .L340
	b .L339
.L259:                               	@ predecessors = .L256                               	@ successors = .L257
	b .L257
.L260:                               	@ predecessors = .L256                               	@ successors = .L261
	mov r6, #0
	str r6, [fp, #-16]
	b .L261
.L261:                               	@ predecessors = .L260, .L322                               	@ successors = .L264, .L265
	ldr r7, [fp, #-16]
	ldr r8, =100000
	cmp r7, r8
	blt .L265
	b .L264
.L262:                               	@ predecessors = .L264, .L326                               	@ successors = .L332, .L333
	ldr r9, [fp, #-20]
	add r10, r9, #1
	str r10, [fp, #-20]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-36]
	cmp r4, r5
	bge .L333
	b .L332
.L264:                               	@ predecessors = .L261                               	@ successors = .L262
	b .L262
.L265:                               	@ predecessors = .L261                               	@ successors = .L266
	mov r6, #0
	str r6, [fp, #-12]
	b .L266
.L266:                               	@ predecessors = .L265, .L315                               	@ successors = .L269, .L270
	ldr r7, [fp, #-12]
	ldr r8, =1000000
	cmp r7, r8
	blt .L270
	b .L269
.L267:                               	@ predecessors = .L269, .L319                               	@ successors = .L325, .L326
	ldr r9, [fp, #-16]
	add r10, r9, #1
	str r10, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #32]
	cmp r4, r5
	bge .L326
	b .L325
.L269:                               	@ predecessors = .L266                               	@ successors = .L267
	b .L267
.L270:                               	@ predecessors = .L266                               	@ successors = .L271
	mov r6, #0
	str r6, [fp, #-8]
	b .L271
.L271:                               	@ predecessors = .L270, .L308                               	@ successors = .L274, .L275
	ldr r7, [fp, #-8]
	ldr r8, =10000000
	cmp r7, r8
	blt .L275
	b .L274
.L272:                               	@ predecessors = .L274, .L312                               	@ successors = .L318, .L319
	ldr r9, [fp, #-12]
	add r10, r9, #1
	str r10, [fp, #-12]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #36]
	cmp r4, r5
	bge .L319
	b .L318
.L274:                               	@ predecessors = .L271                               	@ successors = .L272
	b .L272
.L275:                               	@ predecessors = .L271                               	@ successors = .L311, .L312
	ldr r6, [fp, #-4]
	ldr r7, =817
	sdiv r8, r6, r7
	mul r9, r8, r7
	sub r10, r6, r9
	ldr r4, [fp, #-32]
	ldr r5, addr_0_arr1
	mov r7, #5760
	mul r8, r4, r7
	add r6, r5, r8
	ldr r9, [fp, #-28]
	mov r4, #2880
	mul r7, r9, r4
	add r5, r6, r7
	ldr r8, [fp, #-24]
	mov r9, #960
	mul r4, r8, r9
	add r6, r5, r4
	ldr r7, [fp, #-20]
	mov r8, #240
	mul r9, r7, r8
	add r5, r6, r9
	ldr r4, [fp, #-16]
	mov r7, #48
	mul r8, r4, r7
	add r6, r5, r8
	ldr r9, [fp, #-12]
	mov r4, #8
	mul r7, r9, r4
	add r5, r6, r7
	ldr r8, [fp, #-8]
	mov r9, #4
	mul r4, r8, r9
	add r6, r5, r4
	ldr r7, [r6]
	add r8, r10, r7
	ldr r9, [fp, #-32]
	ldr r5, addr_0_arr2
	mov r4, #10752
	mul r6, r9, r4
	add r10, r5, r6
	ldr r7, [fp, #-28]
	mov r9, #5376
	mul r4, r7, r9
	add r5, r10, r4
	ldr r6, [fp, #-24]
	mov r7, #1792
	mul r9, r6, r7
	add r10, r5, r9
	ldr r4, [fp, #-20]
	mov r6, #896
	mul r7, r4, r6
	add r5, r10, r7
	ldr r9, [fp, #-16]
	mov r4, #224
	mul r6, r9, r4
	add r10, r5, r6
	ldr r7, [fp, #-12]
	mov r9, #28
	mul r4, r7, r9
	add r5, r10, r4
	ldr r6, [fp, #-8]
	mov r7, #4
	mul r9, r6, r7
	add r10, r5, r9
	ldr r4, [r10]
	add r6, r8, r4
	str r6, [fp, #-4]
	ldr r7, [fp, #-8]
	add r5, r7, #1
	str r5, [fp, #-8]
	ldr r9, [fp, #-8]
	ldr r10, [fp, #40]
	cmp r9, r10
	bge .L312
	b .L311
.L308:                               	@ predecessors = .L311, .L313                               	@ successors = .L271
	b .L271
.L311:                               	@ predecessors = .L275                               	@ successors = .L308
	b .L308
.L312:                               	@ predecessors = .L275                               	@ successors = .L272
	b .L272
.L313:                               	@ successors = .L308
	b .L308
.L315:                               	@ predecessors = .L318, .L320                               	@ successors = .L266
	b .L266
.L318:                               	@ predecessors = .L272                               	@ successors = .L315
	b .L315
.L319:                               	@ predecessors = .L272                               	@ successors = .L267
	b .L267
.L320:                               	@ successors = .L315
	b .L315
.L322:                               	@ predecessors = .L325, .L327                               	@ successors = .L261
	b .L261
.L325:                               	@ predecessors = .L267                               	@ successors = .L322
	b .L322
.L326:                               	@ predecessors = .L267                               	@ successors = .L262
	b .L262
.L327:                               	@ successors = .L322
	b .L322
.L329:                               	@ predecessors = .L332, .L334                               	@ successors = .L256
	b .L256
.L332:                               	@ predecessors = .L262                               	@ successors = .L329
	b .L329
.L333:                               	@ predecessors = .L262                               	@ successors = .L257
	b .L257
.L334:                               	@ successors = .L329
	b .L329
.L336:                               	@ predecessors = .L339, .L341                               	@ successors = .L251
	b .L251
.L339:                               	@ predecessors = .L257                               	@ successors = .L336
	b .L336
.L340:                               	@ predecessors = .L257                               	@ successors = .L252
	b .L252
.L341:                               	@ successors = .L336
	b .L336
.L343:                               	@ predecessors = .L346, .L348                               	@ successors = .L246
	b .L246
.L346:                               	@ predecessors = .L252                               	@ successors = .L343
	b .L343
.L347:                               	@ predecessors = .L252                               	@ successors = .L247
	b .L247
.L348:                               	@ successors = .L343
	b .L343
.L350:                               	@ predecessors = .L353, .L355                               	@ successors = .L241
	b .L241
.L353:                               	@ predecessors = .L247                               	@ successors = .L350
	b .L350
.L354:                               	@ predecessors = .L247                               	@ successors = .L242
	b .L242
.L355:                               	@ successors = .L350
	b .L350
.Lloop3_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	b .LiteralPool0
.LTORG
addr_0_arr2:
	.word arr2
addr_0_arr1:
	.word arr1
.LiteralPool0:
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #36
.L357:
	bl getint
	mov r4, r0
	str r4, [fp, #-36]
	bl getint
	mov r5, r0
	str r5, [fp, #-32]
	bl getint
	mov r6, r0
	str r6, [fp, #-28]
	bl getint
	mov r7, r0
	str r7, [fp, #-24]
	bl getint
	mov r8, r0
	str r8, [fp, #-20]
	bl getint
	mov r9, r0
	str r9, [fp, #-16]
	bl getint
	mov r10, r0
	str r10, [fp, #-12]
	bl getint
	mov r4, r0
	str r4, [fp, #-8]
	bl getint
	mov r5, r0
	str r5, [fp, #-4]
	ldr r6, [fp, #-36]
	ldr r7, [fp, #-32]
	mov r1, r7
	mov r0, r6
	bl loop1
	bl loop2
	ldr r8, [fp, #-28]
	ldr r9, [fp, #-24]
	ldr r10, [fp, #-20]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	ldr r7, [fp, #-8]
	ldr r6, [fp, #-4]
	push {r6}
	push {r7}
	push {r5}
	mov r3, r4
	mov r2, r10
	mov r1, r9
	mov r0, r8
	bl loop3
	add sp, sp, #12
	mov r6, r0
	mov r0, r6
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_1_arr2:
	.word arr2
addr_1_arr1:
	.word arr1
