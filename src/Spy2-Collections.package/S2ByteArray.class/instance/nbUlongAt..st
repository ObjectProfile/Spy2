as yet unclassified
nbUlongAt: index
	"Read unsigned long at one-based index.
	Note, there is no range checking "

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^ self nbCallout 
		options: #( optCheckFailOnEveryArgument );
	
		function: #(ulong (self, ulong index)) emit: [:gen |
			| asm |
			
			asm := gen asm.
			asm 
				pop: asm EAX;  "pointer to receiver's first byte"
				pop: asm ECX; "index"
				mov: asm EAX ptr + asm ECX -1 to: asm EAX. ]