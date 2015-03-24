private - method template
generateTemplates
	"
	self generateTemplates
	"
	| argString parameterString |
	self class compileSilently: 'with0Arg ', String cr, (self templateCode expandMacrosWith: '#()') classified: 'private - method template'.
	1 to: 15 do: [ :i |
		parameterString := ''.
		argString := '{'.
		1 to: i do: [ :ii | 
			parameterString := parameterString, 'arg: ', 'v', ii printString, ' '.
			argString := argString, 'v', ii printString, '.'].
		
		argString := argString allButLast, '}'.

		self class 
				compile: 'with', i printString, parameterString, String cr, (self templateCode expandMacrosWith: argString)
				classified: 'private - method template'.
	]