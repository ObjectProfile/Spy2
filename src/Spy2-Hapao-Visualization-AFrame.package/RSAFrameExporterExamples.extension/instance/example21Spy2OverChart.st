*Spy2-Hapao-Visualization-AFrame
example21Spy2OverChart
	<script: 'self new example21Spy2OverChart'>
	| hapao b |
	hapao := Hapao2 runTestsForPackagesMatching: 'Roassal3-UML*'.
	b := HapaoRoassal3 new.
	b profiler: hapao.
	b aFrameExporter
		fileName: 'test';
		scale: 0.003;
		exportAndOpen.