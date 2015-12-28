exporting
exportAsNewCSVInFileNamed: aFilename
	"Create a folder if it does not exist, and export each frame as a csv file"
	| f stream |
	f := aFilename asFileReference.
	f exists ifTrue: [ f delete ].
	[
		stream := f writeStream.
		stream nextPutAll: 'time	n1	n2 	weight'; cr.
		depFrames doWithIndex: [ :frame :index |
			frame exportAsNewCSVOn: stream.
		]
	] ensure: [ stream ifNotNil: [ stream close ] ]