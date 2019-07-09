
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

	;初始化栈帧指针
    push ebp
    mov ebp,esp
	;加载参数值
    mov eax,[ebp+8]
    mov ecx,[ebp+12]

	;求和
    add eax,ecx

	;恢复父函数的栈帧指针

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