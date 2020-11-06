visualize - buttons
showClusters
	^ (((allObjects values flatCollect: #yourself) groupedBy: #snapshotAsInteger) associations sortedAs: [ :assoc | assoc value size]) reverse inspect