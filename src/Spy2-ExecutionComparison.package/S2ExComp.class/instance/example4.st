examples
example4
	<script: 'self new example4 inspect'>

	| ec |
	ec := S2ExComp new.
	ec addModel: (Dep profile: [ RSShapeExamples new example27MultilineLabelBasic ] onPackagesMatchingExpresions: { 'Roassal3*' }).
	ec addModel: (Dep profile: [ RSShapeExamples new example28MultilineLabel ] onPackagesMatchingExpresions: { 'Roassal3*' }).
	^ ec visualizeLastTwo.