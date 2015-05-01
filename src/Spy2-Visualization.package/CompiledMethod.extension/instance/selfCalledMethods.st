*Spy2-Visualization
selfCalledMethods
	| methodAst visitor |
	methodAst := RBParser parseMethod: self getSource.
	visitor := SelfCallRBVisitor new.
	methodAst acceptVisitor: visitor.
	^ (self methodClass methods select: [ :cm | visitor selectors includes: cm selector ]) asSet