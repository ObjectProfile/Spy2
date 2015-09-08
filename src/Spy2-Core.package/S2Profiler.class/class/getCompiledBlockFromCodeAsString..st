public - profiling
getCompiledBlockFromCodeAsString: codeAsString
	| newCode |
	newCode := self addBracketsTo: codeAsString.
	^ Compiler evaluate: newCode