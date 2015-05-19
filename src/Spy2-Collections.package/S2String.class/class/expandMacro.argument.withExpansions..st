as yet unclassified
expandMacro: macroType argument: argument withExpansions: expansions 
	macroType = $s ifTrue: [^expansions at: argument].
	macroType = $p ifTrue: [^(expansions at: argument) printString].
	macroType = $n ifTrue: [^S2String cr].
	macroType = $t ifTrue: [^S2String tab].
	self error: 'unknown expansion type'