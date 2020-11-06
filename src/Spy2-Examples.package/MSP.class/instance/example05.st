examples
example05

	"This example identifies the methods that produces the most instances of Roassal"
	<script: 'self new example05'>
	^ (MSP profile: [ self example10Code] onPackagesNamed: #('Roassal3' 'Roassal3-Shapes') ) inspect