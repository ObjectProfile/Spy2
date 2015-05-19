as yet unclassified
ssXX
	"Return the sum of square. Works only on a collection of numbers"

	"
	{ 0 .
	   2.39789527279837 .
	   3.04452243772342 } ssXX
	=>   5.145715101176377
	"
	^ self squared sum - (self sum squared / self size)