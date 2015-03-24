visualize - buttons
showClusters
	^ (((allObjects values flatCollect: #yourself) groupedBy: #snapshotAsInteger) reverseSortedAs: [ :assoc | assoc value size]) inspect