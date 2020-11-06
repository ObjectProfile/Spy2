examples
example04

	"This example identifies the methods that produces the most instances of Roassal"
	<script: 'self new example04'>
	^ (MSP profile: [  MSP browse ] onPackagesMatching: 'Calypso-Browser' ) inspect