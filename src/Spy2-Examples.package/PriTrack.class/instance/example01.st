example
example01

	PriTrack new 
		logToFile: '/tmp/tt.txt';
		profile: [ RTMondrianExample new exampleRadialTree open ] onPackagesMatching: 'Athens*'.
		