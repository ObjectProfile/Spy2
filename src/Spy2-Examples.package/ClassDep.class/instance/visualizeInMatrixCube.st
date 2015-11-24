visualization
visualizeInMatrixCube

"
To execute this method, you need to have Matrix cube and Woden. 

Gofer new smalltalkhubUser: 'ronsaldo' project: 'Woden'; package: 'ConfigurationOfWoden'; load. (Smalltalk at: #ConfigurationOfWoden) loadBleedingEdge.
-------

profile := ClassDep new example02.
cube := MatrixCube new.
profile depFrames doWithIndex: [ :f :timeIndex |
	f relevantClasses do: [ :cls |
		(f dependenciesOfClass: cls) do: [ :c | 
			self assert: [ timeIndex isInteger ].
			cube addAtTime: timeIndex sizeValue: 10 colorValue: 0.8 x: cls name asString y: c name asString
		]
	]
].
cube draw
"