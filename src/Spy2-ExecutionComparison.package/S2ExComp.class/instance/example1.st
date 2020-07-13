examples
example1
	<script: 'self new example1 inspect'>

	| ec |
	ec := S2ExComp new.
	ec addModel: (Dep profile: [ RSShapeExamples new example13Arrow ] onPackagesMatchingExpresions: { 'Roassal3*' }).
	ec addModel: (Dep profile: [ RSShapeExamples new example04LineDashes ] onPackagesMatchingExpresions: { 'Roassal3*' }).
	^ ec visualizeLastTwo.