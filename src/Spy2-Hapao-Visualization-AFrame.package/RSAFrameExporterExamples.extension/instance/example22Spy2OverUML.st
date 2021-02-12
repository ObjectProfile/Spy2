*Spy2-Hapao-Visualization-AFrame
example22Spy2OverUML
	<script: 'self new example22Spy2OverUML'>
	| hapao b |
	hapao := Hapao2 runTestsForPackagesMatching: 'Roassal3-UML*'.
	b := HapaoRoassal3 new.
	b profiler: hapao.
	
	b aFrameExporter
		fileName: 'test';
		depthSize: 0.005;
		scale: 0.002;
		exportAndOpen.