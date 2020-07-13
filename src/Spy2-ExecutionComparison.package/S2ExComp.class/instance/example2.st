examples
example2
	<script: 'self new example2 inspect'>

	| ec |
	ec := S2ExComp new.
	ec addModel: (Dep profile: [ RSLayoutExamples new example03LayoutColorFadingBasic ] onPackagesMatchingExpresions: { 'Roassal3*' }).
	ec addModel: (Dep profile: [ RSLayoutExamples new example04LayoutColorFadingBasic2 ] onPackagesMatchingExpresions: { 'Roassal3*' }).
	^ ec visualizeLastTwo.