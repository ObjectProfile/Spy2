as yet unclassified
groupBy: keyBlock having: selectBlock 
	"This message is deprecated. Please use groupedBy:having:. 
	But we let it right now without warning because we are not sure to 
	remove in the next iteration."

	^ self groupedBy: keyBlock having: selectBlock 