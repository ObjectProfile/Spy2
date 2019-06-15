example
example01
	<script: 'self new example01'>
	| hapao |
	hapao := Hapao2 runTestsForPackagesMatching: 'Roassal3*'.
	self profiler: hapao.
	self open.