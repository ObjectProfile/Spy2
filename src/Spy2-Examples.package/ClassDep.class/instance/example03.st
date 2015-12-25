examples
example03
	<script: 'self new example03 inspect'>
	^ ClassDep new 
		thresholdNumberOfMethods: 700;
		profile: [GTInspector inspect: Object ] onPackagesMatchingExpressions: { 'GT-Inspector' . 'Glamour*' }