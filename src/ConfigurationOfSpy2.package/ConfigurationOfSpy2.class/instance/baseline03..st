baseline03
baseline03: spec
	<version: '0.3-baseline'>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec repository: 'http://smalltalkhub.com/mc/ObjectProfile/Spy2/main'.
			self projectRoassal03: spec.
			
			self definitionSpy03: spec.
			self definitionHapao03: spec.
			
			self groupsSpy03: spec.
			self groupsHapao03: spec ]