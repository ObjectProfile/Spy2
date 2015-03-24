hooks
uninstallFrom: aMethod
	"A change is an array composed by #( method literalIndex originalLiteral)"
	| methodChanges |
	methodChanges := changes select: [ :chg | chg first = aMethod ].
	methodChanges do: [ :chg | |method index originalLiteral|
		method := chg first.
		index := chg second.
		originalLiteral := chg third.
		
		method literalAt: index put: originalLiteral ]