example
example02
	<script: 'self new example02'>
	| hapao |
	hapao := Hapao2 runTestsForClassNamed: 'TSLabel' asSymbol.
	self profiler: hapao.
	self open.