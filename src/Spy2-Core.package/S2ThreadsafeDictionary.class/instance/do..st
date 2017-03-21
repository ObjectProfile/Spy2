accessing
do: aBlock
	^ mutex critical: [ dict do: aBlock ]