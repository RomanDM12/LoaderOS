	BITS 16
	mov	ax, 0x7c0
	mov	ds, ax
	mov	ax, 0xb800
	mov 	es, ax
	mov 	ax, 3	
	int 	0x10	      ;вызов прерывания для отчистки экрана
	xor	di, di
	mov	si, msg
	mov 	ah, 0xf0

next:	lodsb
	test 	al, al
	jz	end
	stosw
	jmp	next

end:	jmp	$

msg:	db 	"Hello, world"
	times 	510 - ($-$$) db 0
	dw 	0xAA55
