accessing-computed
allMethods
	| coll |
	coll := OrderedCollection new.
	self classes do: [:cls | 
		coll addAll: cls methods. 
		coll addAll: cls metaclassSpy methods ].
	^ coll