as yet unclassified
valueAtZeroFor: yValues
	"receiver is a collection x values"
	
	^ yValues average - ((self coefficient: yValues) * self average)