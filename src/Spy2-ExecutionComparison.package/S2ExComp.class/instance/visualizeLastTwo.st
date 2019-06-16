visualization
visualizeLastTwo
	"Visualize the two last models"
	self assert: [ models size >= 2 ] description: 'Not enough models'.
	self visualizeOldModel: models allButLast last newModel: models last