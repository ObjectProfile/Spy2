examples
example10RewriteTool
	"
	self new example10RewriteTool
	"
	^ PMMoveMain new
		profilePackages: { 'RewriteTool' };
		getRecommandationsFor: (RPackageOrganizer default packageNamed: 'RewriteTool') classes;
		yourself
"
Rewrite tool
2 (2)
4 (2)
5 (2)
6 (1) because it cannot be called otherwise
8 (1)
9 (5)
10 (1)
11 (2)
15 (1)
"