visualization-utils
visualizeLegendOn: view
	"Show legend"

	| b |
	b := RTLegendBuilder new.
	b onDemand.
	b view: view.
	b addText: 'Hapao show the coverage on which you have run it'.
	profiler unitTestResult ifNotNil: 
		[
			b addText: profiler coverage printString , ' % of coverage (excluding tests)'.
			b addText: profiler runCount printString , ' tests run'.
			b addColor: Color lightGreen text: profiler unitTestResult expectedPassCount asString.
			b addColor: Color lightYellow text: profiler unitTestResult failures size asString.
			b addColor: Color lightRed text: profiler unitTestResult errors size asString].
	b addText: 'Big box = classes. Green classes are unit tests'.
	b addText: 'Inner box = method'.
	b addText: 'height = number of lines of code of '.
	b addText: 'width = number of methods that call it'.
	b addText: 'edge = static call between methods. Above calls below'.
	b addColor: Color black text: 'Method well tested'.
	b addColor: Color gray text: 'Method tested'.
	b addColor: Color red text: 'Method not tested'.
	b build