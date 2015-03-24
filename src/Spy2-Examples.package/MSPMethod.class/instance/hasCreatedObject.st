hooks
hasCreatedObject
	^ counting notEmpty and: [ counting values asSet asArray ~= #(0) ]