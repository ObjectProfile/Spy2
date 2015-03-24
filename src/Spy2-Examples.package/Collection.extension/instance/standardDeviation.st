*Spy2-Examples
standardDeviation	
	"Returns the Standard Deviation, as calculated by Octave and SpreadSheets:	 the square root of the bias-corrected variance.	http://mathworld.wolfram.com/StandardDeviation.html"	
	|mean|	
	mean:= self average.	
	^ ((self sum:[:each | (each - mean) squared]) / (self size - 1)) sqrt.