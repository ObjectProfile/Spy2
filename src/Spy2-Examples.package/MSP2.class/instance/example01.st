examples
example01
	"
	self new example01
	"
	^ self 
			keepTrackOfInstancesOf: { String } , ((self packageForName: 'AST-Core') classes) asOrderedCollection;
			profile: [ 
				(RTShape withAllSubclasses flatCollect: #methods) 
					do: [:cm | RBParser parseMethod: cm getSource ] ] 
			onPackageNamed: 'AST-Core';
			inspect