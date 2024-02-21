	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.text
	.global bubblesort
	.type bubblesort , %function
bubblesort:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #16
.L130:                               	@ successors = .L134
	str r0, [fp, #-16]
	mov r4, #0
	str r4, [fp, #-12]
	b .L134
.L134:                               	@ predecessors = .L130, .L141                               	@ successors = .L138, .L139
	ldr r5, [fp, #-12]
	ldr r6, addr_0_n
	ldr r7, [r6]
	sub r8, r7, #1
	cmp r5, r8
	blt .L139
	b .L138
.L135:                               	@ predecessors = .L138
	mov r0, #0
	b .Lbubblesort_END
.L138:                               	@ predecessors = .L134                               	@ successors = .L135
	b .L135
.L139:                               	@ predecessors = .L134                               	@ successors = .L140
	mov r9, #0
	str r9, [fp, #-8]
	b .L140
.L140:                               	@ predecessors = .L139, .L147                               	@ successors = .L145, .L146
	ldr r10, [fp, #-8]
	ldr r4, addr_0_n
	ldr r6, [r4]
	ldr r7, [fp, #-12]
	sub r5, r6, r7
	sub r8, r5, #1
	cmp r10, r8
	blt .L146
	b .L145
.L141:                               	@ predecessors = .L145                               	@ successors = .L134
	ldr r9, [fp, #-12]
	add r4, r9, #1
	str r4, [fp, #-12]
	b .L134
.L145:                               	@ predecessors = .L140                               	@ successors = .L141
	b .L141
.L146:                               	@ predecessors = .L140                               	@ successors = .L156, .L157
	ldr r6, [fp, #-16]
	ldr r7, [fp, #-8]
	mov r5, #4
	mul r10, r7, r5
	add r8, r6, r10
	ldr r9, [r8]
	ldr r4, [fp, #-16]
	ldr r7, [fp, #-8]
	add r5, r7, #1
	mov r6, #4
	mul r10, r5, r6
	add r8, r4, r10
	ldr r7, [r8]
	cmp r9, r7
	bgt .L157
	b .L156
.L147:                               	@ predecessors = .L156, .L157                               	@ successors = .L140
	ldr r5, [fp, #-8]
	add r6, r5, #1
	str r6, [fp, #-8]
	b .L140
.L156:                               	@ predecessors = .L146                               	@ successors = .L147
	b .L147
.L157:                               	@ predecessors = .L146                               	@ successors = .L147
	ldr r4, [fp, #-16]
	ldr r10, [fp, #-8]
	add r8, r10, #1
	mov r9, #4
	mul r7, r8, r9
	add r5, r4, r7
	ldr r6, [r5]
	str r6, [fp, #-4]
	ldr r10, [fp, #-16]
	ldr r8, [fp, #-8]
	mov r9, #4
	mul r4, r8, r9
	add r7, r10, r4
	ldr r5, [r7]
	ldr r6, [fp, #-16]
	ldr r8, [fp, #-8]
	add r9, r8, #1
	mov r10, #4
	mul r4, r9, r10
	add r7, r6, r4
	str r5, [r7]
	ldr r8, [fp, #-4]
	ldr r9, [fp, #-16]
	ldr r10, [fp, #-8]
	mov r6, #4
	mul r4, r10, r6
	add r5, r9, r4
	str r8, [r5]
	b .L147
.Lbubblesort_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global insertsort
	.type insertsort , %function
insertsort:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #16
.L176:                               	@ successors = .L179
	str r0, [fp, #-16]
	mov r4, #1
	str r4, [fp, #-12]
	b .L179
.L179:                               	@ predecessors = .L176, .L193                               	@ successors = .L183, .L184
	ldr r5, [fp, #-12]
	ldr r6, addr_0_n
	ldr r7, [r6]
	cmp r5, r7
	blt .L184
	b .L183
.L180:                               	@ predecessors = .L183
	mov r0, #0
	b .Linsertsort_END
.L183:                               	@ predecessors = .L179                               	@ successors = .L180
	b .L180
.L184:                               	@ predecessors = .L179                               	@ successors = .L192
	ldr r8, [fp, #-16]
	ldr r9, [fp, #-12]
	mov r10, #4
	mul r4, r9, r10
	add r6, r8, r4
	ldr r5, [r6]
	str r5, [fp, #-8]
	ldr r7, [fp, #-12]
	sub r9, r7, #1
	str r9, [fp, #-4]
	b .L192
.L192:                               	@ predecessors = .L184, .L203                               	@ successors = .L195, .L196
	ldr r10, [fp, #-4]
	cmp r10, #-1
	bgt .L196
	b .L195
.L193:                               	@ predecessors = .L195, .L202                               	@ successors = .L179
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-4]
	add r5, r6, #1
	mov r7, #4
	mul r9, r5, r7
	add r10, r4, r9
	str r8, [r10]
	ldr r6, [fp, #-12]
	add r5, r6, #1
	str r5, [fp, #-12]
	b .L179
.L195:                               	@ predecessors = .L192                               	@ successors = .L193
	b .L193
.L196:                               	@ predecessors = .L192                               	@ successors = .L202, .L203
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-16]
	ldr r9, [fp, #-4]
	mov r8, #4
	mul r10, r9, r8
	add r6, r4, r10
	ldr r5, [r6]
	cmp r7, r5
	blt .L203
	b .L202
.L202:                               	@ predecessors = .L196                               	@ successors = .L193
	b .L193
.L203:                               	@ predecessors = .L196                               	@ successors = .L192
	ldr r9, [fp, #-16]
	ldr r8, [fp, #-4]
	mov r4, #4
	mul r10, r8, r4
	add r6, r9, r10
	ldr r7, [r6]
	ldr r5, [fp, #-16]
	ldr r8, [fp, #-4]
	add r4, r8, #1
	mov r9, #4
	mul r10, r4, r9
	add r6, r5, r10
	str r7, [r6]
	ldr r8, [fp, #-4]
	sub r4, r8, #1
	str r4, [fp, #-4]
	b .L192
.Linsertsort_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global QuickSort
	.type QuickSort , %function
QuickSort:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #28
.L217:                               	@ successors = .L224, .L225
	str r0, [fp, #-28]
	str r1, [fp, #-24]
	str r2, [fp, #-20]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-20]
	cmp r4, r5
	blt .L225
	b .L224
.L221:                               	@ predecessors = .L224, .L236
	mov r0, #0
	b .LQuickSort_END
.L224:                               	@ predecessors = .L217                               	@ successors = .L221
	b .L221
.L225:                               	@ predecessors = .L217                               	@ successors = .L235
	ldr r6, [fp, #-24]
	str r6, [fp, #-16]
	ldr r7, [fp, #-20]
	str r7, [fp, #-12]
	ldr r8, [fp, #-28]
	ldr r9, [fp, #-24]
	mov r10, #4
	mul r4, r9, r10
	add r5, r8, r4
	ldr r6, [r5]
	str r6, [fp, #-8]
	b .L235
.L235:                               	@ predecessors = .L225, .L282                               	@ successors = .L239, .L240
	ldr r7, [fp, #-16]
	ldr r9, [fp, #-12]
	cmp r7, r9
	blt .L240
	b .L239
.L236:                               	@ predecessors = .L239                               	@ successors = .L221
	ldr r10, [fp, #-8]
	ldr r8, [fp, #-28]
	ldr r4, [fp, #-16]
	mov r5, #4
	mul r6, r4, r5
	add r7, r8, r6
	str r10, [r7]
	ldr r9, [fp, #-16]
	sub r4, r9, #1
	str r4, [fp, #-4]
	ldr r5, [fp, #-28]
	ldr r8, [fp, #-24]
	ldr r6, [fp, #-4]
	mov r2, r6
	mov r1, r8
	mov r0, r5
	bl QuickSort
	mov r10, r0
	str r10, [fp, #-4]
	ldr r7, [fp, #-16]
	add r9, r7, #1
	str r9, [fp, #-4]
	ldr r4, [fp, #-28]
	ldr r6, [fp, #-4]
	ldr r8, [fp, #-20]
	mov r2, r8
	mov r1, r6
	mov r0, r4
	bl QuickSort
	mov r5, r0
	str r5, [fp, #-4]
	b .L221
.L239:                               	@ predecessors = .L235                               	@ successors = .L236
	b .L236
.L240:                               	@ predecessors = .L235                               	@ successors = .L241
	b .L241
.L241:                               	@ predecessors = .L240, .L253                               	@ successors = .L245, .L246
	ldr r10, [fp, #-16]
	ldr r7, [fp, #-12]
	cmp r10, r7
	blt .L246
	b .L245
.L242:                               	@ predecessors = .L245, .L252                               	@ successors = .L258, .L259
	ldr r9, [fp, #-16]
	ldr r8, [fp, #-12]
	cmp r9, r8
	blt .L259
	b .L258
.L245:                               	@ predecessors = .L241                               	@ successors = .L242
	b .L242
.L246:                               	@ predecessors = .L241                               	@ successors = .L252, .L253
	ldr r6, [fp, #-28]
	ldr r4, [fp, #-12]
	mov r5, #4
	mul r10, r4, r5
	add r7, r6, r10
	ldr r9, [r7]
	ldr r8, [fp, #-8]
	sub r4, r8, #1
	cmp r9, r4
	bgt .L253
	b .L252
.L252:                               	@ predecessors = .L246                               	@ successors = .L242
	b .L242
.L253:                               	@ predecessors = .L246                               	@ successors = .L241
	ldr r5, [fp, #-12]
	sub r6, r5, #1
	str r6, [fp, #-12]
	b .L241
.L255:                               	@ predecessors = .L258, .L259                               	@ successors = .L268
	b .L268
.L258:                               	@ predecessors = .L242                               	@ successors = .L255
	b .L255
.L259:                               	@ predecessors = .L242                               	@ successors = .L255
	ldr r10, [fp, #-28]
	ldr r7, [fp, #-12]
	mov r8, #4
	mul r9, r7, r8
	add r4, r10, r9
	ldr r5, [r4]
	ldr r6, [fp, #-28]
	ldr r7, [fp, #-16]
	mov r8, #4
	mul r10, r7, r8
	add r9, r6, r10
	str r5, [r9]
	ldr r4, [fp, #-16]
	add r7, r4, #1
	str r7, [fp, #-16]
	b .L255
.L268:                               	@ predecessors = .L255, .L280                               	@ successors = .L272, .L273
	ldr r8, [fp, #-16]
	ldr r6, [fp, #-12]
	cmp r8, r6
	blt .L273
	b .L272
.L269:                               	@ predecessors = .L272, .L279                               	@ successors = .L285, .L286
	ldr r10, [fp, #-16]
	ldr r5, [fp, #-12]
	cmp r10, r5
	blt .L286
	b .L285
.L272:                               	@ predecessors = .L268                               	@ successors = .L269
	b .L269
.L273:                               	@ predecessors = .L268                               	@ successors = .L279, .L280
	ldr r9, [fp, #-28]
	ldr r4, [fp, #-16]
	mov r7, #4
	mul r8, r4, r7
	add r6, r9, r8
	ldr r10, [r6]
	ldr r5, [fp, #-8]
	cmp r10, r5
	blt .L280
	b .L279
.L279:                               	@ predecessors = .L273                               	@ successors = .L269
	b .L269
.L280:                               	@ predecessors = .L273                               	@ successors = .L268
	ldr r4, [fp, #-16]
	add r7, r4, #1
	str r7, [fp, #-16]
	b .L268
.L282:                               	@ predecessors = .L285, .L286                               	@ successors = .L235
	b .L235
.L285:                               	@ predecessors = .L269                               	@ successors = .L282
	b .L282
.L286:                               	@ predecessors = .L269                               	@ successors = .L282
	ldr r9, [fp, #-28]
	ldr r8, [fp, #-16]
	mov r6, #4
	mul r10, r8, r6
	add r5, r9, r10
	ldr r4, [r5]
	ldr r7, [fp, #-28]
	ldr r8, [fp, #-12]
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	str r4, [r10]
	ldr r5, [fp, #-12]
	sub r8, r5, #1
	str r8, [fp, #-12]
	b .L282
.LQuickSort_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global getMid
	.type getMid , %function
getMid:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #8
.L308:                               	@ successors = .L313, .L314
	str r0, [fp, #-8]
	ldr r4, addr_0_n
	ldr r5, [r4]
	mov r6, #2
	sdiv r7, r5, r6
	mul r8, r7, r6
	sub r9, r5, r8
	cmp r9, #0
	beq .L314
	b .L313
.L311:
	b .LgetMid_END
.L313:                               	@ predecessors = .L308                               	@ successors = .L324
	b .L324
.L314:                               	@ predecessors = .L308
	ldr r10, addr_0_n
	ldr r4, [r10]
	mov r6, #2
	sdiv r7, r4, r6
	str r7, [fp, #-4]
	ldr r5, [fp, #-8]
	ldr r8, [fp, #-4]
	mov r9, #4
	mul r10, r8, r9
	add r4, r5, r10
	ldr r6, [r4]
	ldr r7, [fp, #-8]
	ldr r8, [fp, #-4]
	sub r9, r8, #1
	mov r5, #4
	mul r10, r9, r5
	add r4, r7, r10
	ldr r8, [r4]
	add r9, r6, r8
	mov r5, #2
	sdiv r7, r9, r5
	mov r0, r7
	b .LgetMid_END
.L324:                               	@ predecessors = .L313
	ldr r10, addr_0_n
	ldr r4, [r10]
	mov r6, #2
	sdiv r8, r4, r6
	str r8, [fp, #-4]
	ldr r9, [fp, #-8]
	ldr r5, [fp, #-4]
	mov r7, #4
	mul r10, r5, r7
	add r4, r9, r10
	ldr r6, [r4]
	mov r0, r6
.LgetMid_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	b .LiteralPool0
.LTORG
addr_0_n:
	.word n
.LiteralPool0:
	.global getMost
	.type getMost , %function
getMost:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	ldr r4, =4020
	sub sp, sp, r4
.L330:                               	@ successors = .L334
	ldr r4, =-4020
	str r0, [fp, r4]
	mov r5, #0
	str r5, [fp, #-16]
	b .L334
.L334:                               	@ predecessors = .L330, .L338                               	@ successors = .L337, .L338
	ldr r6, [fp, #-16]
	cmp r6, #1000
	blt .L338
	b .L337
.L335:                               	@ predecessors = .L337                               	@ successors = .L344
	mov r7, #0
	str r7, [fp, #-16]
	mov r8, #0
	str r8, [fp, #-12]
	b .L344
.L337:                               	@ predecessors = .L334                               	@ successors = .L335
	b .L335
.L338:                               	@ predecessors = .L334                               	@ successors = .L334
	ldr r9, [fp, #-16]
	ldr r10, =-4016
	add r4, fp, r10
	mov r5, #4
	mul r6, r9, r5
	add r7, r4, r6
	mov r8, #0
	str r8, [r7]
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-16]
	b .L334
.L344:                               	@ predecessors = .L335, .L360                               	@ successors = .L348, .L349
	ldr r5, [fp, #-16]
	ldr r4, addr_1_n
	ldr r6, [r4]
	cmp r5, r6
	blt .L349
	b .L348
.L345:                               	@ predecessors = .L348
	ldr r7, [fp, #-8]
	mov r0, r7
	b .LgetMost_END
.L348:                               	@ predecessors = .L344                               	@ successors = .L345
	b .L345
.L349:                               	@ predecessors = .L344                               	@ successors = .L365, .L366
	ldr r8, =-4020
	ldr r10, [fp, r8]
	ldr r9, [fp, #-16]
	mov r4, #4
	mul r5, r9, r4
	add r6, r10, r5
	ldr r7, [r6]
	str r7, [fp, #-4]
	ldr r8, [fp, #-4]
	ldr r9, =-4016
	add r4, fp, r9
	mov r10, #4
	mul r5, r8, r10
	add r6, r4, r5
	ldr r7, [r6]
	add r9, r7, #1
	ldr r8, [fp, #-4]
	ldr r10, =-4016
	add r4, fp, r10
	mov r5, #4
	mul r6, r8, r5
	add r7, r4, r6
	str r9, [r7]
	ldr r10, [fp, #-4]
	ldr r8, =-4016
	add r5, fp, r8
	mov r4, #4
	mul r6, r10, r4
	add r9, r5, r6
	ldr r7, [r9]
	ldr r8, [fp, #-12]
	cmp r7, r8
	bgt .L366
	b .L365
.L360:                               	@ predecessors = .L365, .L366                               	@ successors = .L344
	ldr r10, [fp, #-16]
	add r4, r10, #1
	str r4, [fp, #-16]
	b .L344
.L365:                               	@ predecessors = .L349                               	@ successors = .L360
	b .L360
.L366:                               	@ predecessors = .L349                               	@ successors = .L360
	ldr r5, [fp, #-4]
	ldr r6, =-4016
	add r9, fp, r6
	mov r7, #4
	mul r8, r5, r7
	add r10, r9, r8
	ldr r4, [r10]
	str r4, [fp, #-12]
	ldr r6, [fp, #-4]
	str r6, [fp, #-8]
	b .L360
.LgetMost_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global revert
	.type revert , %function
revert:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #16
.L373:                               	@ successors = .L378
	str r0, [fp, #-16]
	mov r4, #0
	str r4, [fp, #-8]
	mov r5, #0
	str r5, [fp, #-4]
	b .L378
.L378:                               	@ predecessors = .L373, .L383                               	@ successors = .L382, .L383
	ldr r6, [fp, #-8]
	ldr r7, [fp, #-4]
	cmp r6, r7
	blt .L383
	b .L382
.L379:                               	@ predecessors = .L382
	mov r0, #0
	b .Lrevert_END
.L382:                               	@ predecessors = .L378                               	@ successors = .L379
	b .L379
.L383:                               	@ predecessors = .L378                               	@ successors = .L378
	ldr r8, [fp, #-16]
	ldr r9, [fp, #-8]
	mov r10, #4
	mul r4, r9, r10
	add r5, r8, r4
	ldr r6, [r5]
	str r6, [fp, #-12]
	ldr r7, [fp, #-16]
	ldr r9, [fp, #-4]
	mov r10, #4
	mul r8, r9, r10
	add r4, r7, r8
	ldr r5, [r4]
	ldr r6, [fp, #-16]
	ldr r9, [fp, #-8]
	mov r10, #4
	mul r7, r9, r10
	add r8, r6, r7
	str r5, [r8]
	ldr r4, [fp, #-12]
	ldr r9, [fp, #-16]
	ldr r10, [fp, #-4]
	mov r6, #4
	mul r7, r10, r6
	add r5, r9, r7
	str r4, [r5]
	ldr r8, [fp, #-8]
	add r10, r8, #1
	str r10, [fp, #-8]
	ldr r6, [fp, #-4]
	sub r9, r6, #1
	str r9, [fp, #-4]
	b .L378
.Lrevert_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global arrCopy
	.type arrCopy , %function
arrCopy:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #12
.L401:                               	@ successors = .L405
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	mov r4, #0
	str r4, [fp, #-4]
	b .L405
.L405:                               	@ predecessors = .L401, .L410                               	@ successors = .L409, .L410
	ldr r5, [fp, #-4]
	ldr r6, addr_1_n
	ldr r7, [r6]
	cmp r5, r7
	blt .L410
	b .L409
.L406:                               	@ predecessors = .L409
	mov r0, #0
	b .LarrCopy_END
.L409:                               	@ predecessors = .L405                               	@ successors = .L406
	b .L406
.L410:                               	@ predecessors = .L405                               	@ successors = .L405
	ldr r8, [fp, #-12]
	ldr r9, [fp, #-4]
	mov r10, #4
	mul r4, r9, r10
	add r6, r8, r4
	ldr r5, [r6]
	ldr r7, [fp, #-8]
	ldr r9, [fp, #-4]
	mov r10, #4
	mul r8, r9, r10
	add r4, r7, r8
	str r5, [r4]
	ldr r6, [fp, #-4]
	add r9, r6, #1
	str r9, [fp, #-4]
	b .L405
.LarrCopy_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global calSum
	.type calSum , %function
calSum:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #16
.L419:                               	@ successors = .L424
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	mov r4, #0
	str r4, [fp, #-8]
	mov r5, #0
	str r5, [fp, #-4]
	b .L424
.L424:                               	@ predecessors = .L419, .L435                               	@ successors = .L428, .L429
	ldr r6, [fp, #-4]
	ldr r7, addr_1_n
	ldr r8, [r7]
	cmp r6, r8
	blt .L429
	b .L428
.L425:                               	@ predecessors = .L428
	mov r0, #0
	b .LcalSum_END
.L428:                               	@ predecessors = .L424                               	@ successors = .L425
	b .L425
.L429:                               	@ predecessors = .L424                               	@ successors = .L439, .L440
	ldr r9, [fp, #-8]
	ldr r10, [fp, #-16]
	ldr r4, [fp, #-4]
	mov r5, #4
	mul r7, r4, r5
	add r6, r10, r7
	ldr r8, [r6]
	add r4, r9, r8
	str r4, [fp, #-8]
	ldr r5, [fp, #-4]
	ldr r10, [fp, #-12]
	sdiv r7, r5, r10
	mul r9, r7, r10
	sub r6, r5, r9
	ldr r8, [fp, #-12]
	sub r4, r8, #1
	cmp r6, r4
	bne .L440
	b .L439
.L435:                               	@ predecessors = .L440, .L444                               	@ successors = .L424
	ldr r10, [fp, #-4]
	add r7, r10, #1
	str r7, [fp, #-4]
	b .L424
.L439:                               	@ predecessors = .L429                               	@ successors = .L444
	b .L444
.L440:                               	@ predecessors = .L429                               	@ successors = .L435
	ldr r5, [fp, #-16]
	ldr r9, [fp, #-4]
	mov r8, #4
	mul r6, r9, r8
	add r4, r5, r6
	mov r10, #0
	str r10, [r4]
	b .L435
.L444:                               	@ predecessors = .L439                               	@ successors = .L435
	ldr r7, [fp, #-8]
	ldr r9, [fp, #-16]
	ldr r8, [fp, #-4]
	mov r5, #4
	mul r6, r8, r5
	add r4, r9, r6
	str r7, [r4]
	mov r10, #0
	str r10, [fp, #-8]
	b .L435
.LcalSum_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global avgPooling
	.type avgPooling , %function
avgPooling:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #20
.L450:                               	@ successors = .L456
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	mov r4, #0
	str r4, [fp, #-8]
	mov r5, #0
	str r5, [fp, #-12]
	b .L456
.L456:                               	@ predecessors = .L450, .L462                               	@ successors = .L460, .L461
	ldr r6, [fp, #-8]
	ldr r7, addr_1_n
	ldr r8, [r7]
	cmp r6, r8
	blt .L461
	b .L460
.L457:                               	@ predecessors = .L460                               	@ successors = .L506
	ldr r9, addr_1_n
	ldr r10, [r9]
	ldr r4, [fp, #-16]
	sub r5, r10, r4
	add r7, r5, #1
	str r7, [fp, #-8]
	b .L506
.L460:                               	@ predecessors = .L456                               	@ successors = .L457
	b .L457
.L461:                               	@ predecessors = .L456                               	@ successors = .L465, .L466
	ldr r6, [fp, #-8]
	ldr r8, [fp, #-16]
	sub r9, r8, #1
	cmp r6, r9
	blt .L466
	b .L465
.L462:                               	@ predecessors = .L466, .L473                               	@ successors = .L456
	ldr r10, [fp, #-8]
	add r4, r10, #1
	str r4, [fp, #-8]
	b .L456
.L465:                               	@ predecessors = .L461                               	@ successors = .L472
	b .L472
.L466:                               	@ predecessors = .L461                               	@ successors = .L462
	ldr r5, [fp, #-12]
	ldr r7, [fp, #-20]
	ldr r8, [fp, #-8]
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	ldr r4, [r10]
	add r8, r5, r4
	str r8, [fp, #-12]
	b .L462
.L472:                               	@ predecessors = .L465                               	@ successors = .L476, .L477
	ldr r6, [fp, #-8]
	ldr r7, [fp, #-16]
	sub r9, r7, #1
	cmp r6, r9
	beq .L477
	b .L476
.L473:                               	@ predecessors = .L477, .L485                               	@ successors = .L462
	b .L462
.L476:                               	@ predecessors = .L472                               	@ successors = .L485
	b .L485
.L477:                               	@ predecessors = .L472                               	@ successors = .L473
	ldr r10, [fp, #-20]
	mov r5, r10
	ldr r4, [r5]
	str r4, [fp, #-4]
	ldr r8, [fp, #-12]
	ldr r7, [fp, #-16]
	sdiv r6, r8, r7
	ldr r9, [fp, #-20]
	mov r10, r9
	str r6, [r10]
	b .L473
.L485:                               	@ predecessors = .L476                               	@ successors = .L473
	ldr r5, [fp, #-12]
	ldr r4, [fp, #-20]
	ldr r8, [fp, #-8]
	mov r7, #4
	mul r9, r8, r7
	add r6, r4, r9
	ldr r10, [r6]
	add r8, r5, r10
	ldr r7, [fp, #-4]
	sub r4, r8, r7
	str r4, [fp, #-12]
	ldr r9, [fp, #-20]
	ldr r6, [fp, #-8]
	ldr r5, [fp, #-16]
	sub r10, r6, r5
	add r8, r10, #1
	mov r7, #4
	mul r4, r8, r7
	add r6, r9, r4
	ldr r5, [r6]
	str r5, [fp, #-4]
	ldr r10, [fp, #-12]
	ldr r8, [fp, #-16]
	sdiv r7, r10, r8
	ldr r9, [fp, #-20]
	ldr r4, [fp, #-8]
	ldr r6, [fp, #-16]
	sub r5, r4, r6
	add r10, r5, #1
	mov r8, #4
	mul r4, r10, r8
	add r6, r9, r4
	str r7, [r6]
	b .L473
.L506:                               	@ predecessors = .L457, .L511                               	@ successors = .L510, .L511
	ldr r5, [fp, #-8]
	ldr r10, addr_1_n
	ldr r8, [r10]
	cmp r5, r8
	blt .L511
	b .L510
.L507:                               	@ predecessors = .L510
	mov r0, #0
	b .LavgPooling_END
.L510:                               	@ predecessors = .L506                               	@ successors = .L507
	b .L507
.L511:                               	@ predecessors = .L506                               	@ successors = .L506
	ldr r9, [fp, #-20]
	ldr r4, [fp, #-8]
	mov r7, #4
	mul r6, r4, r7
	add r10, r9, r6
	mov r5, #0
	str r5, [r10]
	ldr r8, [fp, #-8]
	add r4, r8, #1
	str r4, [fp, #-8]
	b .L506
.LavgPooling_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	b .LiteralPool1
.LTORG
addr_1_n:
	.word n
.LiteralPool1:
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #264
.L516:                               	@ successors = .L556
	mov r4, #32
	ldr r5, addr_2_n
	str r4, [r5]
	ldr r6, =-264
	add r7, fp, r6
	mov r8, r7
	mov r9, #7
	str r9, [r8]
	ldr r10, =-264
	add r4, fp, r10
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r8, r4, r7
	mov r9, #23
	str r9, [r8]
	ldr r10, =-264
	add r5, fp, r10
	mov r6, #2
	mov r4, #4
	mul r7, r6, r4
	add r8, r5, r7
	mov r9, #89
	str r9, [r8]
	ldr r10, =-264
	add r6, fp, r10
	mov r4, #3
	mov r5, #4
	mul r7, r4, r5
	add r8, r6, r7
	mov r9, #26
	str r9, [r8]
	ldr r10, =-264
	add r4, fp, r10
	mov r5, #4
	mov r6, #4
	mul r7, r5, r6
	add r8, r4, r7
	ldr r9, =282
	str r9, [r8]
	ldr r10, =-264
	add r5, fp, r10
	mov r6, #5
	mov r4, #4
	mul r7, r6, r4
	add r8, r5, r7
	mov r9, #254
	str r9, [r8]
	ldr r10, =-264
	add r6, fp, r10
	mov r4, #6
	mov r5, #4
	mul r7, r4, r5
	add r8, r6, r7
	mov r9, #27
	str r9, [r8]
	ldr r10, =-264
	add r4, fp, r10
	mov r5, #7
	mov r6, #4
	mul r7, r5, r6
	add r8, r4, r7
	mov r9, #5
	str r9, [r8]
	ldr r10, =-264
	add r5, fp, r10
	mov r6, #8
	mov r4, #4
	mul r7, r6, r4
	add r8, r5, r7
	mov r9, #83
	str r9, [r8]
	ldr r10, =-264
	add r6, fp, r10
	mov r4, #9
	mov r5, #4
	mul r7, r4, r5
	add r8, r6, r7
	ldr r9, =273
	str r9, [r8]
	ldr r10, =-264
	add r4, fp, r10
	mov r5, #10
	mov r6, #4
	mul r7, r5, r6
	add r8, r4, r7
	ldr r9, =574
	str r9, [r8]
	ldr r10, =-264
	add r5, fp, r10
	mov r6, #11
	mov r4, #4
	mul r7, r6, r4
	add r8, r5, r7
	ldr r9, =905
	str r9, [r8]
	ldr r10, =-264
	add r6, fp, r10
	mov r4, #12
	mov r5, #4
	mul r7, r4, r5
	add r8, r6, r7
	ldr r9, =354
	str r9, [r8]
	ldr r10, =-264
	add r4, fp, r10
	mov r5, #13
	mov r6, #4
	mul r7, r5, r6
	add r8, r4, r7
	ldr r9, =657
	str r9, [r8]
	ldr r10, =-264
	add r5, fp, r10
	mov r6, #14
	mov r4, #4
	mul r7, r6, r4
	add r8, r5, r7
	ldr r9, =935
	str r9, [r8]
	ldr r10, =-264
	add r6, fp, r10
	mov r4, #15
	mov r5, #4
	mul r7, r4, r5
	add r8, r6, r7
	mov r9, #264
	str r9, [r8]
	ldr r10, =-264
	add r4, fp, r10
	mov r5, #16
	mov r6, #4
	mul r7, r5, r6
	add r8, r4, r7
	ldr r9, =639
	str r9, [r8]
	ldr r10, =-264
	add r5, fp, r10
	mov r6, #17
	mov r4, #4
	mul r7, r6, r4
	add r8, r5, r7
	ldr r9, =459
	str r9, [r8]
	ldr r10, =-264
	add r6, fp, r10
	mov r4, #18
	mov r5, #4
	mul r7, r4, r5
	add r8, r6, r7
	mov r9, #29
	str r9, [r8]
	ldr r10, =-264
	add r4, fp, r10
	mov r5, #19
	mov r6, #4
	mul r7, r5, r6
	add r8, r4, r7
	mov r9, #68
	str r9, [r8]
	ldr r10, =-264
	add r5, fp, r10
	mov r6, #20
	mov r4, #4
	mul r7, r6, r4
	add r8, r5, r7
	ldr r9, =929
	str r9, [r8]
	ldr r10, =-264
	add r6, fp, r10
	mov r4, #21
	mov r5, #4
	mul r7, r4, r5
	add r8, r6, r7
	mov r9, #756
	str r9, [r8]
	ldr r10, =-264
	add r4, fp, r10
	mov r5, #22
	mov r6, #4
	mul r7, r5, r6
	add r8, r4, r7
	mov r9, #452
	str r9, [r8]
	ldr r10, =-264
	add r5, fp, r10
	mov r6, #23
	mov r4, #4
	mul r7, r6, r4
	add r8, r5, r7
	ldr r9, =279
	str r9, [r8]
	ldr r10, =-264
	add r6, fp, r10
	mov r4, #24
	mov r5, #4
	mul r7, r4, r5
	add r8, r6, r7
	mov r9, #58
	str r9, [r8]
	ldr r10, =-264
	add r4, fp, r10
	mov r5, #25
	mov r6, #4
	mul r7, r5, r6
	add r8, r4, r7
	mov r9, #87
	str r9, [r8]
	ldr r10, =-264
	add r5, fp, r10
	mov r6, #26
	mov r4, #4
	mul r7, r6, r4
	add r8, r5, r7
	mov r9, #96
	str r9, [r8]
	ldr r10, =-264
	add r6, fp, r10
	mov r4, #27
	mov r5, #4
	mul r7, r4, r5
	add r8, r6, r7
	mov r9, #36
	str r9, [r8]
	ldr r10, =-264
	add r4, fp, r10
	mov r5, #28
	mov r6, #4
	mul r7, r5, r6
	add r8, r4, r7
	mov r9, #39
	str r9, [r8]
	ldr r10, =-264
	add r5, fp, r10
	mov r6, #29
	mov r4, #4
	mul r7, r6, r4
	add r8, r5, r7
	mov r9, #28
	str r9, [r8]
	ldr r10, =-264
	add r6, fp, r10
	mov r4, #30
	mov r5, #4
	mul r7, r4, r5
	add r8, r6, r7
	mov r9, #1
	str r9, [r8]
	ldr r10, =-264
	add r4, fp, r10
	mov r5, #31
	mov r6, #4
	mul r7, r5, r6
	add r8, r4, r7
	ldr r9, =290
	str r9, [r8]
	ldr r10, =-264
	add r5, fp, r10
	mov r6, r5
	add r4, fp, #-136
	mov r7, r4
	mov r1, r7
	mov r0, r6
	bl arrCopy
	mov r8, r0
	str r8, [fp, #-8]
	add r9, fp, #-136
	mov r10, r9
	mov r0, r10
	bl revert
	mov r5, r0
	str r5, [fp, #-8]
	mov r4, #0
	str r4, [fp, #-4]
	b .L556
.L556:                               	@ predecessors = .L516, .L560                               	@ successors = .L559, .L560
	ldr r7, [fp, #-4]
	cmp r7, #32
	blt .L560
	b .L559
.L557:                               	@ predecessors = .L559                               	@ successors = .L567
	add r6, fp, #-136
	mov r8, r6
	mov r0, r8
	bl bubblesort
	mov r9, r0
	str r9, [fp, #-8]
	mov r10, #0
	str r10, [fp, #-4]
	b .L567
.L559:                               	@ predecessors = .L556                               	@ successors = .L557
	b .L557
.L560:                               	@ predecessors = .L556                               	@ successors = .L556
	ldr r5, [fp, #-4]
	add r4, fp, #-136
	mov r7, #4
	mul r6, r5, r7
	add r8, r4, r6
	ldr r9, [r8]
	str r9, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl putint
	ldr r5, [fp, #-4]
	add r7, r5, #1
	str r7, [fp, #-4]
	b .L556
	b .LiteralPool2
.LTORG
addr_2_n:
	.word n
.LiteralPool2:
.L567:                               	@ predecessors = .L557, .L571                               	@ successors = .L570, .L571
	ldr r4, [fp, #-4]
	cmp r4, #32
	blt .L571
	b .L570
.L568:                               	@ predecessors = .L570                               	@ successors = .L584
	add r6, fp, #-136
	mov r8, r6
	mov r0, r8
	bl getMid
	mov r9, r0
	str r9, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl putint
	add r5, fp, #-136
	mov r7, r5
	mov r0, r7
	bl getMost
	mov r4, r0
	str r4, [fp, #-8]
	ldr r6, [fp, #-8]
	mov r0, r6
	bl putint
	ldr r8, =-264
	add r9, fp, r8
	mov r10, r9
	add r5, fp, #-136
	mov r7, r5
	mov r1, r7
	mov r0, r10
	bl arrCopy
	mov r4, r0
	str r4, [fp, #-8]
	add r6, fp, #-136
	mov r8, r6
	mov r0, r8
	bl bubblesort
	mov r9, r0
	str r9, [fp, #-8]
	mov r5, #0
	str r5, [fp, #-4]
	b .L584
.L570:                               	@ predecessors = .L567                               	@ successors = .L568
	b .L568
.L571:                               	@ predecessors = .L567                               	@ successors = .L567
	ldr r7, [fp, #-4]
	add r10, fp, #-136
	mov r4, #4
	mul r6, r7, r4
	add r8, r10, r6
	ldr r9, [r8]
	str r9, [fp, #-8]
	ldr r5, [fp, #-8]
	mov r0, r5
	bl putint
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L567
.L584:                               	@ predecessors = .L568, .L588                               	@ successors = .L587, .L588
	ldr r10, [fp, #-4]
	cmp r10, #32
	blt .L588
	b .L587
.L585:                               	@ predecessors = .L587                               	@ successors = .L597
	ldr r6, =-264
	add r8, fp, r6
	mov r9, r8
	add r5, fp, #-136
	mov r7, r5
	mov r1, r7
	mov r0, r9
	bl arrCopy
	mov r4, r0
	str r4, [fp, #-8]
	add r10, fp, #-136
	mov r6, r10
	mov r0, r6
	bl insertsort
	mov r8, r0
	str r8, [fp, #-8]
	mov r5, #0
	str r5, [fp, #-4]
	b .L597
.L587:                               	@ predecessors = .L584                               	@ successors = .L585
	b .L585
.L588:                               	@ predecessors = .L584                               	@ successors = .L584
	ldr r7, [fp, #-4]
	add r9, fp, #-136
	mov r4, #4
	mul r10, r7, r4
	add r6, r9, r10
	ldr r8, [r6]
	str r8, [fp, #-8]
	ldr r5, [fp, #-8]
	mov r0, r5
	bl putint
	ldr r7, [fp, #-4]
	add r4, r7, #1
	str r4, [fp, #-4]
	b .L584
.L597:                               	@ predecessors = .L585, .L601                               	@ successors = .L600, .L601
	ldr r9, [fp, #-4]
	cmp r9, #32
	blt .L601
	b .L600
.L598:                               	@ predecessors = .L600                               	@ successors = .L612
	ldr r10, =-264
	add r6, fp, r10
	mov r8, r6
	add r5, fp, #-136
	mov r7, r5
	mov r1, r7
	mov r0, r8
	bl arrCopy
	mov r4, r0
	str r4, [fp, #-8]
	mov r9, #0
	str r9, [fp, #-4]
	mov r10, #31
	str r10, [fp, #-8]
	add r6, fp, #-136
	mov r5, r6
	ldr r7, [fp, #-4]
	ldr r8, [fp, #-8]
	mov r2, r8
	mov r1, r7
	mov r0, r5
	bl QuickSort
	mov r4, r0
	str r4, [fp, #-8]
	b .L612
.L600:                               	@ predecessors = .L597                               	@ successors = .L598
	b .L598
.L601:                               	@ predecessors = .L597                               	@ successors = .L597
	ldr r9, [fp, #-4]
	add r10, fp, #-136
	mov r6, #4
	mul r8, r9, r6
	add r7, r10, r8
	ldr r5, [r7]
	str r5, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r0, r4
	bl putint
	ldr r9, [fp, #-4]
	add r6, r9, #1
	str r6, [fp, #-4]
	b .L597
.L612:                               	@ predecessors = .L598, .L616                               	@ successors = .L615, .L616
	ldr r10, [fp, #-4]
	cmp r10, #32
	blt .L616
	b .L615
.L613:                               	@ predecessors = .L615                               	@ successors = .L625
	ldr r8, =-264
	add r7, fp, r8
	mov r5, r7
	add r4, fp, #-136
	mov r9, r4
	mov r1, r9
	mov r0, r5
	bl arrCopy
	mov r6, r0
	str r6, [fp, #-8]
	add r10, fp, #-136
	mov r8, r10
	mov r1, #4
	mov r0, r8
	bl calSum
	mov r7, r0
	str r7, [fp, #-8]
	mov r4, #0
	str r4, [fp, #-4]
	b .L625
.L615:                               	@ predecessors = .L612                               	@ successors = .L613
	b .L613
.L616:                               	@ predecessors = .L612                               	@ successors = .L612
	ldr r9, [fp, #-4]
	add r5, fp, #-136
	mov r6, #4
	mul r10, r9, r6
	add r8, r5, r10
	ldr r7, [r8]
	str r7, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r0, r4
	bl putint
	ldr r9, [fp, #-4]
	add r6, r9, #1
	str r6, [fp, #-4]
	b .L612
.L625:                               	@ predecessors = .L613, .L629                               	@ successors = .L628, .L629
	ldr r5, [fp, #-4]
	cmp r5, #32
	blt .L629
	b .L628
.L626:                               	@ predecessors = .L628                               	@ successors = .L638
	ldr r10, =-264
	add r8, fp, r10
	mov r7, r8
	add r4, fp, #-136
	mov r9, r4
	mov r1, r9
	mov r0, r7
	bl arrCopy
	mov r6, r0
	str r6, [fp, #-8]
	add r5, fp, #-136
	mov r10, r5
	mov r1, #3
	mov r0, r10
	bl avgPooling
	mov r8, r0
	str r8, [fp, #-8]
	mov r4, #0
	str r4, [fp, #-4]
	b .L638
.L628:                               	@ predecessors = .L625                               	@ successors = .L626
	b .L626
.L629:                               	@ predecessors = .L625                               	@ successors = .L625
	ldr r9, [fp, #-4]
	add r7, fp, #-136
	mov r6, #4
	mul r5, r9, r6
	add r10, r7, r5
	ldr r8, [r10]
	str r8, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r0, r4
	bl putint
	ldr r9, [fp, #-4]
	add r6, r9, #1
	str r6, [fp, #-4]
	b .L625
.L638:                               	@ predecessors = .L626, .L642                               	@ successors = .L641, .L642
	ldr r7, [fp, #-4]
	cmp r7, #32
	blt .L642
	b .L641
.L639:                               	@ predecessors = .L641
	mov r0, #0
	b .Lmain_END
.L641:                               	@ predecessors = .L638                               	@ successors = .L639
	b .L639
.L642:                               	@ predecessors = .L638                               	@ successors = .L638
	ldr r5, [fp, #-4]
	add r10, fp, #-136
	mov r8, #4
	mul r4, r5, r8
	add r9, r10, r4
	ldr r6, [r9]
	str r6, [fp, #-8]
	ldr r7, [fp, #-8]
	mov r0, r7
	bl putint
	ldr r5, [fp, #-4]
	add r8, r5, #1
	str r8, [fp, #-4]
	b .L638
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	b .LiteralPool3
.LTORG
addr_3_n:
	.word n
.LiteralPool3:
addr_4_n:
	.word n
