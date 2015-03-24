action
onBasicNew: obj
	(self classesToTrack includes: obj class) ifTrue: [ 
		(obj class getSpy: self) ifNotNil: [:spy | spy record: obj ] ]