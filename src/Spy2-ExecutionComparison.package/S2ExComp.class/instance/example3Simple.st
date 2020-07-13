examples
example3Simple
	<script: 'self new example3Simple inspect'>

	| ec |
	ec := S2ExComp new.
	ec addModel: (Dep profile: [ S2ECE new callFoo: 5 ] onPackageNamed: 'Spy2-ExecutionComparison-Example').
	ec addModel: (Dep profile: [ S2ECE new callFoo: 5 ] onPackageNamed: 'Spy2-ExecutionComparison-Example').
	^ ec visualizeLastTwo.