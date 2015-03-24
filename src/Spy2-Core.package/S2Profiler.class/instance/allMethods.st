accessing - read only
allMethods
	"Return the list of all the methods"
	
	| methods |
	allMethodsCache ifNotNil: [ ^ allMethodsCache ].
	
	methods := OrderedCollection new.
	self packages do: [:p | 
		methods addAll: p allMethods ].
	^ methods 