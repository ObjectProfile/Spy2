as yet unclassified
ssXY: yValues
	"Return the sum of square. Works only on a collection of numbers"

	"
	{ 0 . 2.39789527279837 . 3.04452243772342 } ssXY: {0.24 . 0.57 . 0.6 }
	=>  0.6355774441838813	
	"
	^ (self with: yValues collect: [ :x :y | x * y ]) sum - (self sum * yValues sum/ self size)