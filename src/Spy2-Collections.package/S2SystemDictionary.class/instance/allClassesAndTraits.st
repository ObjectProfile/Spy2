as yet unclassified
allClassesAndTraits
	"Return all the classes and traits defined in the Smalltalk SystemDictionary"

	^ self classAndTraitNames collect: [:each | self at: each]