example
example03
	<script: 'self new example03'>
	| hapao |
	hapao := Hapao2 runTestsForPackagesMatching: 'Roassal3-Shapes'.
	self profiler: hapao.
	self open.