testing
instantiateAllOf: aClass
	"Return true if I am directly instantiating some instances of the class provided as argument"
	"Return false if I am not directly instantiating aClass (i.e., if some of my children are instantiating aClass)"
	(counting includesKey: aClass)
		ifFalse: [ ^ false ].
		
	^ (counting at: aClass) > (self calledMethods collect: [ :m | m counting at: aClass ifAbsent: [ 0 ] ]) sum