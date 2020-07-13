examples
example
	<script: 'self new example inspect'>

	| ec |
	ec := S2ExComp new.
	ec addModel: (Dep new example01).
	ec addModel: (Dep new example02).

	^ ec visualizeLastTwo.