examples
example02
	"
	self new example02
	"
	^ self 
			keepTrackOfInstancesOf: { RTElement . RTBox . RTLine . RTPopup . RTDraggable };
			profile: [

	| view es popup draggable |
	view := RTView new.	
	es := RTBox elementsOn: Collection withAllSubclasses.
	popup := RTPopup new.
	draggable := RTDraggable new.
	es @ popup. 
	es @ draggable.
	view addAll: es.
	RTEdge 
		buildEdgesFromObjects: Collection 
		withAllSubclasses from: #superclass to: #yourself inView: view.
	RTTreeLayout on: view elements edges: view edges.
	view @ RTDraggableView.
	view edges do: [ :e | e trachelShape pushBack ].
	
	] 
			onPackageNamed: 'Roassal2';
			inspect