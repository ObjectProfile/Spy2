*Spy2-Examples
ssXY
	"Return the sum of square. Works only on a collection of points"

	"
	{ 0 @ 0.24 . 
	   2.39789527279837 @ 0.57 .
	   3.04452243772342 @ 0.6} ssXY
	=>  0.6355774441838813	
	"
	^ (self collect: [ :p | p x * p y ]) sum - ((self collect: #x) sum * (self collect: #y) sum/ self size)