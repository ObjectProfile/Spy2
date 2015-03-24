as yet unclassified
computeGroups
	"result contains a list "
	^ self gatherRecordsAsGroups collect: [ :assoc | assoc key -> assoc value size ]