*Spy2-Hapao-Visualization
selfCalledMethods
	| methodAst visitor |
	methodAst := RBParser parseMethod: self sourceCode.
	visitor := SelfCallRBVisitor new.
	methodAst acceptVisitor: visitor.
	^ (self methodClass methods
		select: [ :cm | visitor selectors includes: cm selector ]) asSet