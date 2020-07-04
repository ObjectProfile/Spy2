public - profiling
getCompiledBlockFromCodeAsString: codeAsString
	| newCode |
	newCode := self addBracketsTo: codeAsString.
	^ OpalCompiler evaluate: newCode