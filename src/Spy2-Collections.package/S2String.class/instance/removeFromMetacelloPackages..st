as yet unclassified
removeFromMetacelloPackages: aMetacelloPackagesSpec

	aMetacelloPackagesSpec addMember: 
		(aMetacelloPackagesSpec removeMember 
			name: self;
			yourself)