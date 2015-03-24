examples
example01
	"
	self new example01
	"
	^ (MSP1 profile: [(RTObject withAllSubclasses flatCollect: #methods) do: [:cm | RBParser parseMethod: cm getSource ] ] onPackageNamed: 'AST-Core' ) inspect