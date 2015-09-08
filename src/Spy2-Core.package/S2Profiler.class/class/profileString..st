public - profiling
profileString: codeAsString
	"This method is invoked with source code as argument"

	| compiledBlock method classBindings classes |
	compiledBlock := self getCompiledBlockFromCodeAsString: codeAsString.
	method := compiledBlock method.
	classBindings := method literals
		select: [ :l | l class == GlobalVariable ].
	classes := (classBindings collect: #value) copyWithout: nil class.
	^ self profile: compiledBlock onClasses: classes