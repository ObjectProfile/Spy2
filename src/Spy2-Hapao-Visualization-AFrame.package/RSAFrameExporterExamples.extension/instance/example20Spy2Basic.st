*Spy2-Hapao-Visualization-AFrame
example20Spy2Basic
	<script: 'self new example20Spy2Basic'>
	| hapao b |
	hapao := Hapao2 runTestsForClassNamed: 'RSLabel' asSymbol.
	b := HapaoRoassal3 new.
	b profiler: hapao.
	b aFrameExporter
		fileName: 'test';
		depthSize: 0.005;
		scale: 0.002;
		exportAndOpen.