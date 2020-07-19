examples
eval: aBlock packageRegExps: someRegExps
	"
| ec |
ec := S2ExComp new.
ec eval: [ BankAccountExample new scenario1 ] packageRegExps: { 'Spy2-ExecutionComparison-Example' }.
ec eval: [ BankAccountExample new scenario2 ] packageRegExps: { 'Spy2-ExecutionComparison-Example' }.
ec 

	"

	self addModel: (Dep profile: aBlock onPackagesMatchingExpresions: someRegExps)