examples
example05Code

	| c |
	c := RSCanvas new.
	c addAll: ((1 to: 10) collect: [:i | 
		| classes group |
		classes := RSObject withAllSubclasses 
			collect: [ :cls | RSBox new color: Color red; model: cls ].
		group := RSGroup new.
		RSEdgeBuilder line
			shapes: classes;
			canvas: group;
			connectFrom: #superclass.
		RSTreeLayout on: classes.
		group asShapeFor: RSObject.
		]).

	RSGridLayout on: c nodes.
	c
