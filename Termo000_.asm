
Termo000.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	35 c0       	rjmp	.+106    	; 0x6c <__ctors_end>
   2:	42 c0       	rjmp	.+132    	; 0x88 <__bad_interrupt>
   4:	41 c0       	rjmp	.+130    	; 0x88 <__bad_interrupt>
   6:	40 c0       	rjmp	.+128    	; 0x88 <__bad_interrupt>
   8:	3f c0       	rjmp	.+126    	; 0x88 <__bad_interrupt>
   a:	3e c0       	rjmp	.+124    	; 0x88 <__bad_interrupt>
   c:	3d c0       	rjmp	.+122    	; 0x88 <__bad_interrupt>
   e:	3c c0       	rjmp	.+120    	; 0x88 <__bad_interrupt>
  10:	3b c0       	rjmp	.+118    	; 0x88 <__bad_interrupt>
  12:	3b c0       	rjmp	.+118    	; 0x8a <__vector_9>

00000014 <__trampolines_end>:
  14:	ae 20       	and	r10, r14
  16:	00 b0       	in	r0, 0x00	; 0
  18:	c8 00       	.word	0x00c8	; ????
  1a:	10 40       	sbci	r17, 0x00	; 0
  1c:	81 3f       	cpi	r24, 0xF1	; 241
  1e:	a1 a6       	std	Z+41, r10	; 0x29
  20:	a8 2f       	mov	r26, r24
  22:	a4 d3       	rcall	.+1864   	; 0x76c <__LOCK_REGION_LENGTH__+0x36c>
  24:	00 d5       	rcall	.+2560   	; 0xa26 <__LOCK_REGION_LENGTH__+0x626>
  26:	f0 d9       	rcall	.-3104   	; 0xfffff408 <__eeprom_end+0xff7ef408>
  28:	22 da       	rcall	.-3004   	; 0xfffff46e <__eeprom_end+0xff7ef46e>
  2a:	12 db       	rcall	.-2524   	; 0xfffff650 <__eeprom_end+0xff7ef650>
  2c:	20 8d       	ldd	r18, Z+24	; 0x18
  2e:	14 af       	std	Z+60, r17	; 0x3c

00000030 <ssd1306xled_font6x8>:
  30:	00 3e 51 49 45 3e 00 00 42 7f 40 00 00 42 61 51     .>QIE>..B.@..BaQ
  40:	49 46 00 21 41 45 4b 31 00 18 14 12 7f 10 00 27     IF.!AEK1.......'
  50:	45 45 45 39 00 3c 4a 49 49 30 00 01 71 09 05 03     EEE9.<JII0..q...
  60:	00 36 49 49 49 36 00 06 49 49 29 1e                 .6III6..II).

0000006c <__ctors_end>:
  6c:	11 24       	eor	r1, r1
  6e:	1f be       	out	0x3f, r1	; 63
  70:	cf e9       	ldi	r28, 0x9F	; 159
  72:	cd bf       	out	0x3d, r28	; 61

00000074 <__do_clear_bss>:
  74:	20 e0       	ldi	r18, 0x00	; 0
  76:	a0 e6       	ldi	r26, 0x60	; 96
  78:	b0 e0       	ldi	r27, 0x00	; 0
  7a:	01 c0       	rjmp	.+2      	; 0x7e <.do_clear_bss_start>

0000007c <.do_clear_bss_loop>:
  7c:	1d 92       	st	X+, r1

0000007e <.do_clear_bss_start>:
  7e:	a6 36       	cpi	r26, 0x66	; 102
  80:	b2 07       	cpc	r27, r18
  82:	e1 f7       	brne	.-8      	; 0x7c <.do_clear_bss_loop>
  84:	f8 d0       	rcall	.+496    	; 0x276 <main>
  86:	98 c1       	rjmp	.+816    	; 0x3b8 <_exit>

00000088 <__bad_interrupt>:
  88:	bb cf       	rjmp	.-138    	; 0x0 <__vectors>

0000008a <__vector_9>:
  8a:	1f 92       	push	r1
  8c:	0f 92       	push	r0
  8e:	0f b6       	in	r0, 0x3f	; 63
  90:	0f 92       	push	r0
  92:	11 24       	eor	r1, r1
  94:	2f 93       	push	r18
  96:	3f 93       	push	r19
  98:	5f 93       	push	r21
  9a:	6f 93       	push	r22
  9c:	7f 93       	push	r23
  9e:	8f 93       	push	r24
  a0:	9f 93       	push	r25
  a2:	af 93       	push	r26
  a4:	bf 93       	push	r27
  a6:	20 91 62 00 	lds	r18, 0x0062	; 0x800062 <value>
  aa:	30 91 63 00 	lds	r19, 0x0063	; 0x800063 <value+0x1>
  ae:	84 b1       	in	r24, 0x04	; 4
  b0:	95 b1       	in	r25, 0x05	; 5
  b2:	67 e2       	ldi	r22, 0x27	; 39
  b4:	70 e0       	ldi	r23, 0x00	; 0
  b6:	5b d1       	rcall	.+694    	; 0x36e <__mulhi3>
  b8:	63 e6       	ldi	r22, 0x63	; 99
  ba:	70 e0       	ldi	r23, 0x00	; 0
  bc:	69 d1       	rcall	.+722    	; 0x390 <__udivmodhi4>
  be:	26 0f       	add	r18, r22
  c0:	37 1f       	adc	r19, r23
  c2:	30 93 63 00 	sts	0x0063, r19	; 0x800063 <value+0x1>
  c6:	20 93 62 00 	sts	0x0062, r18	; 0x800062 <value>
  ca:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <adc_counter>
  ce:	90 91 65 00 	lds	r25, 0x0065	; 0x800065 <adc_counter+0x1>
  d2:	01 96       	adiw	r24, 0x01	; 1
  d4:	90 93 65 00 	sts	0x0065, r25	; 0x800065 <adc_counter+0x1>
  d8:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <adc_counter>
  dc:	bf 91       	pop	r27
  de:	af 91       	pop	r26
  e0:	9f 91       	pop	r25
  e2:	8f 91       	pop	r24
  e4:	7f 91       	pop	r23
  e6:	6f 91       	pop	r22
  e8:	5f 91       	pop	r21
  ea:	3f 91       	pop	r19
  ec:	2f 91       	pop	r18
  ee:	0f 90       	pop	r0
  f0:	0f be       	out	0x3f, r0	; 63
  f2:	0f 90       	pop	r0
  f4:	1f 90       	pop	r1
  f6:	18 95       	reti

000000f8 <ssd1306_xfer_start>:
  f8:	c2 9a       	sbi	0x18, 2	; 24
  fa:	c0 9a       	sbi	0x18, 0	; 24
  fc:	c0 98       	cbi	0x18, 0	; 24
  fe:	c2 98       	cbi	0x18, 2	; 24
 100:	08 95       	ret

00000102 <ssd1306_xfer_stop>:
 102:	c2 98       	cbi	0x18, 2	; 24
 104:	c0 98       	cbi	0x18, 0	; 24
 106:	c2 9a       	sbi	0x18, 2	; 24
 108:	c0 9a       	sbi	0x18, 0	; 24
 10a:	08 95       	ret

0000010c <ssd1306_send_byte>:
 10c:	20 e0       	ldi	r18, 0x00	; 0
 10e:	30 e0       	ldi	r19, 0x00	; 0
 110:	90 e0       	ldi	r25, 0x00	; 0
 112:	ac 01       	movw	r20, r24
 114:	02 2e       	mov	r0, r18
 116:	01 c0       	rjmp	.+2      	; 0x11a <ssd1306_send_byte+0xe>
 118:	44 0f       	add	r20, r20
 11a:	0a 94       	dec	r0
 11c:	ea f7       	brpl	.-6      	; 0x118 <ssd1306_send_byte+0xc>
 11e:	47 ff       	sbrs	r20, 7
 120:	02 c0       	rjmp	.+4      	; 0x126 <ssd1306_send_byte+0x1a>
 122:	c0 9a       	sbi	0x18, 0	; 24
 124:	01 c0       	rjmp	.+2      	; 0x128 <ssd1306_send_byte+0x1c>
 126:	c0 98       	cbi	0x18, 0	; 24
 128:	c2 9a       	sbi	0x18, 2	; 24
 12a:	c2 98       	cbi	0x18, 2	; 24
 12c:	2f 5f       	subi	r18, 0xFF	; 255
 12e:	3f 4f       	sbci	r19, 0xFF	; 255
 130:	28 30       	cpi	r18, 0x08	; 8
 132:	31 05       	cpc	r19, r1
 134:	71 f7       	brne	.-36     	; 0x112 <ssd1306_send_byte+0x6>
 136:	c0 9a       	sbi	0x18, 0	; 24
 138:	c2 9a       	sbi	0x18, 2	; 24
 13a:	c2 98       	cbi	0x18, 2	; 24
 13c:	08 95       	ret

0000013e <ssd1306_send_command_start>:
 13e:	dc df       	rcall	.-72     	; 0xf8 <ssd1306_xfer_start>
 140:	88 e7       	ldi	r24, 0x78	; 120
 142:	e4 df       	rcall	.-56     	; 0x10c <ssd1306_send_byte>
 144:	80 e0       	ldi	r24, 0x00	; 0
 146:	e2 cf       	rjmp	.-60     	; 0x10c <ssd1306_send_byte>

00000148 <ssd1306_send_command_stop>:
 148:	dc cf       	rjmp	.-72     	; 0x102 <ssd1306_xfer_stop>

0000014a <ssd1306_send_command>:
 14a:	cf 93       	push	r28
 14c:	df 93       	push	r29
 14e:	1f 92       	push	r1
 150:	cd b7       	in	r28, 0x3d	; 61
 152:	dd 27       	eor	r29, r29
 154:	89 83       	std	Y+1, r24	; 0x01
 156:	f3 df       	rcall	.-26     	; 0x13e <ssd1306_send_command_start>
 158:	89 81       	ldd	r24, Y+1	; 0x01
 15a:	d8 df       	rcall	.-80     	; 0x10c <ssd1306_send_byte>
 15c:	0f 90       	pop	r0
 15e:	df 91       	pop	r29
 160:	cf 91       	pop	r28
 162:	cf cf       	rjmp	.-98     	; 0x102 <ssd1306_xfer_stop>

00000164 <ssd1306_send_data_start>:
 164:	c9 df       	rcall	.-110    	; 0xf8 <ssd1306_xfer_start>
 166:	88 e7       	ldi	r24, 0x78	; 120
 168:	d1 df       	rcall	.-94     	; 0x10c <ssd1306_send_byte>
 16a:	80 e4       	ldi	r24, 0x40	; 64
 16c:	cf cf       	rjmp	.-98     	; 0x10c <ssd1306_send_byte>

0000016e <ssd1306_send_data_stop>:
 16e:	c9 cf       	rjmp	.-110    	; 0x102 <ssd1306_xfer_stop>

00000170 <ssd1306_init>:
 170:	1f 93       	push	r17
 172:	cf 93       	push	r28
 174:	df 93       	push	r29
 176:	b8 9a       	sbi	0x17, 0	; 23
 178:	ba 9a       	sbi	0x17, 2	; 23
 17a:	c4 e1       	ldi	r28, 0x14	; 20
 17c:	d0 e0       	ldi	r29, 0x00	; 0
 17e:	1c 2f       	mov	r17, r28
 180:	14 5e       	subi	r17, 0xE4	; 228
 182:	fe 01       	movw	r30, r28
 184:	84 91       	lpm	r24, Z
 186:	e1 df       	rcall	.-62     	; 0x14a <ssd1306_send_command>
 188:	21 96       	adiw	r28, 0x01	; 1
 18a:	1c 13       	cpse	r17, r28
 18c:	fa cf       	rjmp	.-12     	; 0x182 <ssd1306_init+0x12>
 18e:	df 91       	pop	r29
 190:	cf 91       	pop	r28
 192:	1f 91       	pop	r17
 194:	08 95       	ret

00000196 <ssd1306_setpos>:
 196:	1f 93       	push	r17
 198:	cf 93       	push	r28
 19a:	df 93       	push	r29
 19c:	1f 92       	push	r1
 19e:	cd b7       	in	r28, 0x3d	; 61
 1a0:	dd 27       	eor	r29, r29
 1a2:	18 2f       	mov	r17, r24
 1a4:	69 83       	std	Y+1, r22	; 0x01
 1a6:	cb df       	rcall	.-106    	; 0x13e <ssd1306_send_command_start>
 1a8:	69 81       	ldd	r22, Y+1	; 0x01
 1aa:	80 eb       	ldi	r24, 0xB0	; 176
 1ac:	86 0f       	add	r24, r22
 1ae:	ae df       	rcall	.-164    	; 0x10c <ssd1306_send_byte>
 1b0:	81 2f       	mov	r24, r17
 1b2:	82 95       	swap	r24
 1b4:	8f 70       	andi	r24, 0x0F	; 15
 1b6:	80 61       	ori	r24, 0x10	; 16
 1b8:	a9 df       	rcall	.-174    	; 0x10c <ssd1306_send_byte>
 1ba:	81 2f       	mov	r24, r17
 1bc:	8f 70       	andi	r24, 0x0F	; 15
 1be:	a6 df       	rcall	.-180    	; 0x10c <ssd1306_send_byte>
 1c0:	0f 90       	pop	r0
 1c2:	df 91       	pop	r29
 1c4:	cf 91       	pop	r28
 1c6:	1f 91       	pop	r17
 1c8:	9c cf       	rjmp	.-200    	; 0x102 <ssd1306_xfer_stop>

000001ca <ssd1306_fill4>:
 1ca:	ef 92       	push	r14
 1cc:	ff 92       	push	r15
 1ce:	0f 93       	push	r16
 1d0:	1f 93       	push	r17
 1d2:	cf 93       	push	r28
 1d4:	df 93       	push	r29
 1d6:	e8 2e       	mov	r14, r24
 1d8:	f6 2e       	mov	r15, r22
 1da:	04 2f       	mov	r16, r20
 1dc:	12 2f       	mov	r17, r18
 1de:	60 e0       	ldi	r22, 0x00	; 0
 1e0:	80 e0       	ldi	r24, 0x00	; 0
 1e2:	d9 df       	rcall	.-78     	; 0x196 <ssd1306_setpos>
 1e4:	bf df       	rcall	.-130    	; 0x164 <ssd1306_send_data_start>
 1e6:	c0 e0       	ldi	r28, 0x00	; 0
 1e8:	d1 e0       	ldi	r29, 0x01	; 1
 1ea:	8e 2d       	mov	r24, r14
 1ec:	8f df       	rcall	.-226    	; 0x10c <ssd1306_send_byte>
 1ee:	8f 2d       	mov	r24, r15
 1f0:	8d df       	rcall	.-230    	; 0x10c <ssd1306_send_byte>
 1f2:	80 2f       	mov	r24, r16
 1f4:	8b df       	rcall	.-234    	; 0x10c <ssd1306_send_byte>
 1f6:	81 2f       	mov	r24, r17
 1f8:	89 df       	rcall	.-238    	; 0x10c <ssd1306_send_byte>
 1fa:	21 97       	sbiw	r28, 0x01	; 1
 1fc:	b1 f7       	brne	.-20     	; 0x1ea <ssd1306_fill4+0x20>
 1fe:	df 91       	pop	r29
 200:	cf 91       	pop	r28
 202:	1f 91       	pop	r17
 204:	0f 91       	pop	r16
 206:	ff 90       	pop	r15
 208:	ef 90       	pop	r14
 20a:	7b cf       	rjmp	.-266    	; 0x102 <ssd1306_xfer_stop>

0000020c <ssd1306_char_font6x8>:
 20c:	ef 92       	push	r14
 20e:	ff 92       	push	r15
 210:	0f 93       	push	r16
 212:	1f 93       	push	r17
 214:	cf 93       	push	r28
 216:	df 93       	push	r29
 218:	1f 92       	push	r1
 21a:	cd b7       	in	r28, 0x3d	; 61
 21c:	dd 27       	eor	r29, r29
 21e:	89 83       	std	Y+1, r24	; 0x01
 220:	a1 df       	rcall	.-190    	; 0x164 <ssd1306_send_data_start>
 222:	89 81       	ldd	r24, Y+1	; 0x01
 224:	80 53       	subi	r24, 0x30	; 48
 226:	90 e0       	ldi	r25, 0x00	; 0
 228:	66 e0       	ldi	r22, 0x06	; 6
 22a:	70 e0       	ldi	r23, 0x00	; 0
 22c:	a0 d0       	rcall	.+320    	; 0x36e <__mulhi3>
 22e:	8c 01       	movw	r16, r24
 230:	e1 2c       	mov	r14, r1
 232:	f1 2c       	mov	r15, r1
 234:	f7 01       	movw	r30, r14
 236:	e0 0f       	add	r30, r16
 238:	f1 1f       	adc	r31, r17
 23a:	e0 5d       	subi	r30, 0xD0	; 208
 23c:	ff 4f       	sbci	r31, 0xFF	; 255
 23e:	84 91       	lpm	r24, Z
 240:	65 df       	rcall	.-310    	; 0x10c <ssd1306_send_byte>
 242:	8f ef       	ldi	r24, 0xFF	; 255
 244:	e8 1a       	sub	r14, r24
 246:	f8 0a       	sbc	r15, r24
 248:	86 e0       	ldi	r24, 0x06	; 6
 24a:	e8 16       	cp	r14, r24
 24c:	f1 04       	cpc	r15, r1
 24e:	91 f7       	brne	.-28     	; 0x234 <ssd1306_char_font6x8+0x28>
 250:	0f 90       	pop	r0
 252:	df 91       	pop	r29
 254:	cf 91       	pop	r28
 256:	1f 91       	pop	r17
 258:	0f 91       	pop	r16
 25a:	ff 90       	pop	r15
 25c:	ef 90       	pop	r14
 25e:	51 cf       	rjmp	.-350    	; 0x102 <ssd1306_xfer_stop>

00000260 <ssd1306_string_font6x8>:
 260:	cf 93       	push	r28
 262:	df 93       	push	r29
 264:	ec 01       	movw	r28, r24
 266:	89 91       	ld	r24, Y+
 268:	88 23       	and	r24, r24
 26a:	11 f0       	breq	.+4      	; 0x270 <ssd1306_string_font6x8+0x10>
 26c:	cf df       	rcall	.-98     	; 0x20c <ssd1306_char_font6x8>
 26e:	fb cf       	rjmp	.-10     	; 0x266 <ssd1306_string_font6x8+0x6>
 270:	df 91       	pop	r29
 272:	cf 91       	pop	r28
 274:	08 95       	ret

00000276 <main>:
 276:	cf 93       	push	r28
 278:	df 93       	push	r29
 27a:	cd b7       	in	r28, 0x3d	; 61
 27c:	dd 27       	eor	r29, r29
 27e:	c3 50       	subi	r28, 0x03	; 3
 280:	cd bf       	out	0x3d, r28	; 61
 282:	8f e0       	ldi	r24, 0x0F	; 15
 284:	97 e2       	ldi	r25, 0x27	; 39
 286:	01 97       	sbiw	r24, 0x01	; 1
 288:	f1 f7       	brne	.-4      	; 0x286 <main+0x10>
 28a:	00 c0       	rjmp	.+0      	; 0x28c <main+0x16>
 28c:	00 00       	nop
 28e:	70 df       	rcall	.-288    	; 0x170 <ssd1306_init>
 290:	8f e0       	ldi	r24, 0x0F	; 15
 292:	97 e2       	ldi	r25, 0x27	; 39
 294:	01 97       	sbiw	r24, 0x01	; 1
 296:	f1 f7       	brne	.-4      	; 0x294 <main+0x1e>
 298:	00 c0       	rjmp	.+0      	; 0x29a <main+0x24>
 29a:	00 00       	nop
 29c:	20 e0       	ldi	r18, 0x00	; 0
 29e:	40 e0       	ldi	r20, 0x00	; 0
 2a0:	60 e0       	ldi	r22, 0x00	; 0
 2a2:	80 e0       	ldi	r24, 0x00	; 0
 2a4:	92 df       	rcall	.-220    	; 0x1ca <ssd1306_fill4>
 2a6:	87 e0       	ldi	r24, 0x07	; 7
 2a8:	87 bb       	out	0x17, r24	; 23
 2aa:	18 ba       	out	0x18, r1	; 24
 2ac:	87 b1       	in	r24, 0x07	; 7
 2ae:	83 60       	ori	r24, 0x03	; 3
 2b0:	87 b9       	out	0x07, r24	; 7
 2b2:	86 b1       	in	r24, 0x06	; 6
 2b4:	8e 68       	ori	r24, 0x8E	; 142
 2b6:	86 b9       	out	0x06, r24	; 6
 2b8:	47 9a       	sbi	0x08, 7	; 8
 2ba:	a3 9a       	sbi	0x14, 3	; 20
 2bc:	78 94       	sei
 2be:	0a e0       	ldi	r16, 0x0A	; 10
 2c0:	10 e0       	ldi	r17, 0x00	; 0
 2c2:	84 e6       	ldi	r24, 0x64	; 100
 2c4:	e8 2e       	mov	r14, r24
 2c6:	f1 2c       	mov	r15, r1
 2c8:	90 e3       	ldi	r25, 0x30	; 48
 2ca:	d9 2e       	mov	r13, r25
 2cc:	36 9a       	sbi	0x06, 6	; 6
 2ce:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <adc_counter>
 2d2:	90 91 65 00 	lds	r25, 0x0065	; 0x800065 <adc_counter+0x1>
 2d6:	8d 32       	cpi	r24, 0x2D	; 45
 2d8:	91 40       	sbci	r25, 0x01	; 1
 2da:	c0 f3       	brcs	.-16     	; 0x2cc <main+0x56>
 2dc:	80 91 62 00 	lds	r24, 0x0062	; 0x800062 <value>
 2e0:	90 91 63 00 	lds	r25, 0x0063	; 0x800063 <value+0x1>
 2e4:	60 91 64 00 	lds	r22, 0x0064	; 0x800064 <adc_counter>
 2e8:	70 91 65 00 	lds	r23, 0x0065	; 0x800065 <adc_counter+0x1>
 2ec:	51 d0       	rcall	.+162    	; 0x390 <__udivmodhi4>
 2ee:	70 93 61 00 	sts	0x0061, r23	; 0x800061 <_edata+0x1>
 2f2:	60 93 60 00 	sts	0x0060, r22	; 0x800060 <_edata>
 2f6:	10 92 65 00 	sts	0x0065, r1	; 0x800065 <adc_counter+0x1>
 2fa:	10 92 64 00 	sts	0x0064, r1	; 0x800064 <adc_counter>
 2fe:	10 92 63 00 	sts	0x0063, r1	; 0x800063 <value+0x1>
 302:	10 92 62 00 	sts	0x0062, r1	; 0x800062 <value>
 306:	83 ed       	ldi	r24, 0xD3	; 211
 308:	90 e3       	ldi	r25, 0x30	; 48
 30a:	01 97       	sbiw	r24, 0x01	; 1
 30c:	f1 f7       	brne	.-4      	; 0x30a <main+0x94>
 30e:	00 c0       	rjmp	.+0      	; 0x310 <main+0x9a>
 310:	00 00       	nop
 312:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <_edata>
 316:	90 91 61 00 	lds	r25, 0x0061	; 0x800061 <_edata+0x1>
 31a:	b8 01       	movw	r22, r16
 31c:	39 d0       	rcall	.+114    	; 0x390 <__udivmodhi4>
 31e:	80 5d       	subi	r24, 0xD0	; 208
 320:	8b 83       	std	Y+3, r24	; 0x03
 322:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <_edata>
 326:	90 91 61 00 	lds	r25, 0x0061	; 0x800061 <_edata+0x1>
 32a:	b8 01       	movw	r22, r16
 32c:	31 d0       	rcall	.+98     	; 0x390 <__udivmodhi4>
 32e:	cb 01       	movw	r24, r22
 330:	b8 01       	movw	r22, r16
 332:	2e d0       	rcall	.+92     	; 0x390 <__udivmodhi4>
 334:	80 5d       	subi	r24, 0xD0	; 208
 336:	8a 83       	std	Y+2, r24	; 0x02
 338:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <_edata>
 33c:	90 91 61 00 	lds	r25, 0x0061	; 0x800061 <_edata+0x1>
 340:	84 36       	cpi	r24, 0x64	; 100
 342:	91 05       	cpc	r25, r1
 344:	10 f4       	brcc	.+4      	; 0x34a <main+0xd4>
 346:	d9 82       	std	Y+1, r13	; 0x01
 348:	0b c0       	rjmp	.+22     	; 0x360 <main+0xea>
 34a:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <_edata>
 34e:	90 91 61 00 	lds	r25, 0x0061	; 0x800061 <_edata+0x1>
 352:	b7 01       	movw	r22, r14
 354:	1d d0       	rcall	.+58     	; 0x390 <__udivmodhi4>
 356:	cb 01       	movw	r24, r22
 358:	b8 01       	movw	r22, r16
 35a:	1a d0       	rcall	.+52     	; 0x390 <__udivmodhi4>
 35c:	80 5d       	subi	r24, 0xD0	; 208
 35e:	89 83       	std	Y+1, r24	; 0x01
 360:	68 e0       	ldi	r22, 0x08	; 8
 362:	88 e2       	ldi	r24, 0x28	; 40
 364:	18 df       	rcall	.-464    	; 0x196 <ssd1306_setpos>
 366:	ce 01       	movw	r24, r28
 368:	01 96       	adiw	r24, 0x01	; 1
 36a:	7a df       	rcall	.-268    	; 0x260 <ssd1306_string_font6x8>
 36c:	af cf       	rjmp	.-162    	; 0x2cc <main+0x56>

0000036e <__mulhi3>:
 36e:	00 24       	eor	r0, r0
 370:	55 27       	eor	r21, r21
 372:	04 c0       	rjmp	.+8      	; 0x37c <__mulhi3+0xe>
 374:	08 0e       	add	r0, r24
 376:	59 1f       	adc	r21, r25
 378:	88 0f       	add	r24, r24
 37a:	99 1f       	adc	r25, r25
 37c:	00 97       	sbiw	r24, 0x00	; 0
 37e:	29 f0       	breq	.+10     	; 0x38a <__mulhi3+0x1c>
 380:	76 95       	lsr	r23
 382:	67 95       	ror	r22
 384:	b8 f3       	brcs	.-18     	; 0x374 <__mulhi3+0x6>
 386:	71 05       	cpc	r23, r1
 388:	b9 f7       	brne	.-18     	; 0x378 <__mulhi3+0xa>
 38a:	80 2d       	mov	r24, r0
 38c:	95 2f       	mov	r25, r21
 38e:	08 95       	ret

00000390 <__udivmodhi4>:
 390:	aa 1b       	sub	r26, r26
 392:	bb 1b       	sub	r27, r27
 394:	51 e1       	ldi	r21, 0x11	; 17
 396:	07 c0       	rjmp	.+14     	; 0x3a6 <__udivmodhi4_ep>

00000398 <__udivmodhi4_loop>:
 398:	aa 1f       	adc	r26, r26
 39a:	bb 1f       	adc	r27, r27
 39c:	a6 17       	cp	r26, r22
 39e:	b7 07       	cpc	r27, r23
 3a0:	10 f0       	brcs	.+4      	; 0x3a6 <__udivmodhi4_ep>
 3a2:	a6 1b       	sub	r26, r22
 3a4:	b7 0b       	sbc	r27, r23

000003a6 <__udivmodhi4_ep>:
 3a6:	88 1f       	adc	r24, r24
 3a8:	99 1f       	adc	r25, r25
 3aa:	5a 95       	dec	r21
 3ac:	a9 f7       	brne	.-22     	; 0x398 <__udivmodhi4_loop>
 3ae:	80 95       	com	r24
 3b0:	90 95       	com	r25
 3b2:	bc 01       	movw	r22, r24
 3b4:	cd 01       	movw	r24, r26
 3b6:	08 95       	ret

000003b8 <_exit>:
 3b8:	f8 94       	cli

000003ba <__stop_program>:
 3ba:	ff cf       	rjmp	.-2      	; 0x3ba <__stop_program>
