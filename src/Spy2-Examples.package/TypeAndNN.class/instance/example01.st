examples
example01	
	<script: 'TypeAndNN new example01 inspect'>
	^ ( TypeAndNN
			profile: [ RTRoassalExample new exampleLabelledEncapsulating ]
			onPackagesNamed: { 'Roassal2' . 'Trachel' })
	