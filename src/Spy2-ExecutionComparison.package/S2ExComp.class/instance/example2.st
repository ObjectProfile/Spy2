examples
example2
	<script: 'self new example2'>

	| ec |
	ec := S2ExComp new.
	ec addModel: (Dep profile: [ RSLayoutExamples new example03LayoutColorFadingBasic ] onPackageNamed: 'Roassal3').
	ec addModel: (Dep profile: [ RSLayoutExamples new example04LayoutColorFadingBasic2 ] onPackageNamed: 'Roassal3').
	ec visualizeLastTwo.