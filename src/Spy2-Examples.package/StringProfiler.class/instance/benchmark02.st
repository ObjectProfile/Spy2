examples
benchmark02
	"
	self new benchmark02
	"
	^ StringProfiler profile: [ (self gatherForPackage: (self packageForName: 'Roassal2')) do: [:cm | (Nautilus openOnMethod: cm) close ] ] onPackagesMatching: 'Naut*'.