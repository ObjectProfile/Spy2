examples
example02
	<script: 'self new example02 inspect'>
	^ ClassDep new 
		thresholdNumberOfMethods: 50;
		profile: [ RTPieExample new examplePieAndLegend build ] onPackageNamed: 'Roassal2'