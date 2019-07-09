
; #########################################################################

	.386
	.MODEL flat, c
	option casemap :none   ; case sensitive

; #########################################################################

	includelib kernel32.lib
	includelib user32.lib

; #########################################################################


;external function
public		asm_add_
public		asm_get_inf_
public		asm_cmp_value_

; #########################################################################

.data
num			dword	256
szText		db		"asm code return information",0
szCaption	db		"Win32Asm",0

; #########################################################################
;.code
MessageBoxA PROTO :DWORD,:DWORD,:DWORD,:DWORD

; #########################################################################
.code


asm_get_inf_ proc
	push	ebp
	mov		ebp, esp

	lea eax, szText


	pop ebp
	ret
asm_get_inf_ endp


asm_add_ proc

	;��ʼ��ջָ֡��
    push ebp
    mov ebp,esp
	;���ز���ֵ
    mov eax,[ebp+8]
    mov ecx,[ebp+12]

	;���
    add eax,ecx

	;�ָ���������ջָ֡��

    pop ebp
    ret
asm_add_ endp

asm_cmp_value_ proc
	push	ebp
	mov		ebp,	esp

	mov		eax,	1
	mov		ebx,	[ebp+8]
	cmp		ebx,	[ebp+12]
	jl		short less
	jmp		rt
less:
	mov		eax,	0
	jmp		rt
rt:	
	pop		ebp
	ret
asm_cmp_value_ endp
end