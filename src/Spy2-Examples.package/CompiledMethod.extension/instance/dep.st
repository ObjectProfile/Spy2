*Spy2-Examples-PMove
dep
	"Return the list of dependencies of the receiving method, as described in the article 'Recommending Move Method Refactorings using Dependency Sets' @ WCRE'13"
	| dep |
	(self hasPragmaNamed: #dep)
		ifTrue: [ ^ self propertyValueAt: #dep ].
	dep := PMMoveMain depOfMethod: self.
	self propertyValueAt: #dep put: dep.
	^ dep