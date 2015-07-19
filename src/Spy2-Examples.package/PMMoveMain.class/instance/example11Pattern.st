examples
example11Pattern
	"
	self new example11Pattern
	"
	^ PMMoveMain new
		profilePackages: { 'Patterns' };
		getRecommandationsFor: (RPackageOrganizer default packageNamed: 'Patterns') classes;
		yourself
		
"
Patterns
1 (3)
3 (1)
6 (2)
7,23 (1) Because this will imply completely changing the design. In the case that you are ready to change the design, maybe moving the method would make sense. But it is not clear whether the NamedPattern will be named that way
8 (1)
9,14,16,17,21,22,24 (3) you can do this, but you will need additional argument
10 (1)
11,12,15 (1)
13 (1)
20 (3)
25, 27 (3) not moving, but implementing a similar functionarlities in the target class. The methods are not equals, but should have the same name.
26 (4)
28 (1)
"