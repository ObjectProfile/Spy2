*Spy2-Core
allSuperclassesInPackage

	^ self allSuperclasses select: [ :cls | cls package = self package ]