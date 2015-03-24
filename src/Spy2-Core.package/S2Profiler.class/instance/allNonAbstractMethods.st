accessing - read only
allNonAbstractMethods
	"Return the list of non abstract methods"
	
	allNonAbstractMethodsCache ifNotNil: [ ^ allNonAbstractMethodsCache ].
	^ allNonAbstractMethodsCache := self allMethods reject: #isAbstract