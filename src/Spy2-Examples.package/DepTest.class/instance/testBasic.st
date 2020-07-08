tests
testBasic

	| pr |
	pr := Dep profile: [ ] onPackagesMatchingExpresions: {'Roassal3*'}.
	self assert: pr packages size > 5