exporting
exportAsCSVInFolder: folderNameAsString
	"Create a folder if it does not exist, and export each frame as a csv file"
	| f ff s |
	f := folderNameAsString asFileReference.
	f exists ifFalse: [ f createDirectory ].
	depFrames doWithIndex: [ :frame :index |
		ff := f / (index asTwoCharacterString, '.csv').
		s := ff writeStream.
		frame exportAsCSVOn: s.
		s close.
	]