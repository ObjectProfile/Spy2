examples
example
	<script: 'self new example'>

	| ec |
	ec := S2ExComp new.
	ec addModel: (Dep profile: [ TSBoundingTest debug: #testDrawBorder ] onPackagesMatching: 'Roassal3*').
	ec addModel: (Dep profile: [ TSBoundingTest debug: #testDrawBoxCornerRadius ] onPackagesMatching: 'Roassal3*').
	ec visualizeLastTwo.