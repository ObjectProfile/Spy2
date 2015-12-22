examples
example02
	<script>
	
	| e p v |
	p := OB new.
	(p profile: [
	v := RTView new.
	e := (RTBox new size: 30) element.
	v add: e.
	1 to: 100 do: [ :i | e translateBy: 1 @ 1 ].	
	] onPackageNamed: 'Roassal2').
	{ v . e . p } inspect
	