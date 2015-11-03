blacklist
assertBlacklist
	"self assert: (self classes noneSatisfy: [ :cls | cls package name = 'Kernel' ]).
	self assert: (self methods noneSatisfy: [ :m | m package name = 'Kernel' ])"