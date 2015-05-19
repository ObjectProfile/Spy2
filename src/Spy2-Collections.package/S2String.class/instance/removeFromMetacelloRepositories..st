as yet unclassified
removeFromMetacelloRepositories: aMetacelloRepositoriesSpec

	aMetacelloRepositoriesSpec addMember: 
		(aMetacelloRepositoriesSpec removeMember 
			name: self;
			yourself)