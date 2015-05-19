as yet unclassified
mergeIntoMetacelloPackages: aMetacelloPackagesSpec

	self do: [:each | each mergeIntoMetacelloPackages: aMetacelloPackagesSpec ]
