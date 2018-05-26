;; function printArray
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

segment .data
	error_msg_printArray db	"Function printArray not implemented yet!",10,0
	comma		db		", ", 0

segment .text

printArray:
;	mov	eax, error_msg_printArray
;	call	print_string
	push	ebp
	mov		ebp, esp
	mov		ebx, [ebp + 8]
	mov 	ecx, [ebp + 12]
	dec 	ecx

print_start:
	mov 	eax, [ebx]
	call 	print_int
	mov 	eax, comma
	call 	print_string
	add 	ebx, 004h
	loop 	print_start
	mov 	eax, [ebx]
	call 	print_int
	call 	print_nl
	mov 	esp, ebp
	pop 	ebp
	ret


;; function transformedSum
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

segment .data
	error_msg_transformedSum db "Function transformedSum not implemented yet!",10,0

segment .text

transformedSum:
;	mov	eax, error_msg_transformedSum
;	call	print_string
	push	ebp
	mov		ebp, esp
	sub 	esp, 004h
	mov		ebx, [ebp + 8]
	mov 	ecx, [ebp + 12]
	mov 	dword [ebp - 4], 0

sum_start:
	push 	dword [ebx]
	call 	[ebp + 16]
	add 	esp, 004h
	add 	[ebp - 4], eax
	add 	ebx, 004h
	loop 	sum_start
	mov		eax, [ebp - 4]
	mov 	esp, ebp
	pop 	ebp
	ret



;; function transformValue
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

segment .data
	error_msg_transformValue db "Function transformValue not implemented yet!",10,0

segment .text

transformValue:
;	mov	eax, error_msg_transformValue
;	call	print_string
	push	ebp
	mov		ebp, esp
	mov 	ebx, [ebp + 8]
	push	dword [ebx]
	call	[ebp + 12]
	mov 	[ebx], eax
	mov 	esp, ebp
	pop 	ebp
	ret
