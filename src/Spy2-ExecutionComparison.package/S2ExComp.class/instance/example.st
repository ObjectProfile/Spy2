examples
example
	<script: 'self new example'>

	| ec |
	ec := S2ExComp new.
	ec addModel: (Dep profile: [ RSShapeExamples new example13Arrow ] onPackageNamed: 'Roassal3').
	ec addModel: (Dep profile: [ RSShapeExamples new example03LinePath ] onPackageNamed: 'Roassal3').
	ec visualizeLastTwo.