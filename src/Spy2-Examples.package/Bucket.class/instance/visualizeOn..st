visualization
visualizeOn: v
	"
	#(4 5 5 5 5 6 7 8 8 8 8 8) groupedBy: #yourself
	"
	"| delta allElement values shape es  allLabels label labels |
	delta := 100.
	allElement := RTGroup new.
	allLabels := RTGroup new.
	data associationsDo: [ :assoc |
		values := assoc value collect: [ :vv | (vv / delta) asInteger ].
		values := values groupedBy: #yourself.
		values := values associations collect: [ :as | as key -> as value size ].
		shape := RTEllipse new color: Color blue trans.
		es := shape elementsOn: (values collect: [ :vv | assoc key -> vv ]).
		RTMetricNormalizer new
			elements: es;
			normalizeX: [ :ass | ass value key ] min: 0 max: 300.
		allElement add: es.
		es @ RTPopup.
		v addAll: es.
		label := RTLabel elementOn: assoc key.
		allLabels add: label.
	].
	RTVerticalLineLayout on: allElement.
	RTVerticalLineLayout on: allLabels.
	TRConstraint move: allLabels onTheLeftOf: allElement.
	RTMetricNormalizer new
		elements: (allElement flatCollect: #yourself);
		normalizeSize: [ :ass | ass value value ].
	
	labels := OrderedCollection new.
	data associations with: allElement do: [ :assoc :elements |
		label := RTLabel elementOn: assoc key.
		v add: label.
		labels add: label.
		TRConstraint stick: label onTheLeftOf: elements first.
	].
	RTAlignment new elements: labels; left.
	^ v"