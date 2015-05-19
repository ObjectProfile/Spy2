as yet unclassified
removeFromMetacelloPackages: aMetacelloPackagesSpec

	self do: [:each | each removeFromMetacelloPackages: aMetacelloPackagesSpec ]
