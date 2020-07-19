examples
eval: aBlock
	"
| ec |
ec := S2ExComp new.
ec packages: { 'Spy2-ExecutionComparison-Example' }.
ec eval: [ BankAccountExample new scenario1 ].
ec eval: [ BankAccountExample new scenario2 ].
ec 

	"

	self addModel: (Dep profile: aBlock onPackagesMatchingExpresions: packageRegExps)