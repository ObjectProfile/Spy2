tests
testExampleOnRSLabel
	| hapao b canvas |
	hapao := Hapao2 runTestsForClassNamed: 'RSLabel' asSymbol.
	b := HapaoRoassal3 new.
	b profiler: hapao.
	canvas := b buildCanvas.
	canvas createMorph drawOnMockCanvas.
	