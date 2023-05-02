	BITS	32
	GLOBAL	_start
	EXTERN	_GetStdHandle@4
	EXTERN	_WriteFile@20


	SECTION	.data
message:
	DB	"Hello, World!", 0x0D, 0x0A
	DB	0x00
message_length:
	DD	$ - message


	SECTION	.bss


	SECTION	.text
_start:
	PUSH	EBP
	MOV	EBP, ESP
	
	SUB	ESP, 8
	
	PUSH	DWORD 0xFFFFFFF5
	CALL	_GetStdHandle@4
	ADD	ESP, 4
	
	MOV	[EBP - 4], EAX
	
	PUSH	DWORD 0
	LEA	EAX, [EBP - 8]
	PUSH	DWORD EAX
	PUSH	DWORD [message_length]
	PUSH	DWORD message
	PUSH	DWORD [EBP - 4]
	CALL	_WriteFile@20
	ADD	ESP, 20
	
	MOV	ESP, EBP
	POP	EBP
	RET
