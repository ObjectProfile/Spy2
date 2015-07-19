examples
example10RewriteTool
	"
	self new example10RewriteTool
	"
	^ PMMoveMain new
		profilePackages: { 'RewriteTool' };
		getRecommandationsFor: (RPackageOrganizer default packageNamed: 'RewriteTool') classes;
		yourself