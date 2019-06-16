examples
example4
	<script: 'self new example4'>

	| ec |
	ec := S2ExComp new.
	ec addModel: (Dep profile: [ RSShapeExamples new example01BasicShape ] onPackageNamed: 'Roassal3').
	ec addModel: (Dep profile: [ RSShapeExamples new example02BasicEdge ] onPackageNamed: 'Roassal3').
	ec visualizeLastTwo.