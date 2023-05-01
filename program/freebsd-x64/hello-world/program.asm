	BITS	64
	GLOBAL	_start


	SECTION	.data
message:
	DB	"Hello, World!", 0x0A
message_length:
	DQ	$ - message


	SECTION	.bss


	SECTION	.text
_start:
	MOV	RAX, 4
	MOV	RDI, 1
	MOV	RSI, message
	MOV	RDX, [message_length]
	SYSCALL
	
	MOV	RAX, 1
	MOV	RDI, 0
	SYSCALL
