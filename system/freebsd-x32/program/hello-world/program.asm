	BITS	32
	GLOBAL	_start


	SECTION	.data
message:
	DB	"Hello, World!", 0x0A
message_length:
	DD	$ - message


	SECTION	.bss


	SECTION	.text
_start:
	MOV	EAX, [message_length]
	PUSH	DWORD EAX
	PUSH	DWORD message
	PUSH	DWORD 1
	MOV	EAX, 4
	PUSH	DWORD EAX
	INT	0x80
	ADD	ESP, 12
	
	PUSH	DWORD 0
	MOV	EAX, 1
	PUSH	DWORD EAX
	INT	0x80
	ADD	ESP, 4
