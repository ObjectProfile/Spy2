examples
example01
	<script: 'self new example01 inspect'>
	| shapes c eb |
	^ ClassDep profile: [ 
c := RSCanvas new.
shapes := OrderedCollection new.
Collection withAllSubclasses do: [ :cls |
    shapes add: (RSBox new model: cls) ].

c addAll: shapes.

eb := RSEdgeBuilder orthoVertical.
eb withVerticalAttachPoint.
eb canvas: c.
eb shapes: shapes.
eb connectFrom: #superclass.

RSNormalizer size
    shapes: shapes;
    normalize: #numberOfMethods.

RSTreeLayout on: shapes.

c @ RSCanvasController.
c open.
] onPackagesMatching: 'Roassal3*'