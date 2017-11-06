examples
example02
	<script: 'TypeAndNN new example02 inspect'>
	^ ( TypeAndNN
			profile: [ (RTRoassalExample selectors select: [ :s | s beginsWith: 'example' ]) do: [ :s | RTRoassalExample new perform: s ] ]
			onPackagesNamed: { 'Roassal2' . 'Trachel' })
	