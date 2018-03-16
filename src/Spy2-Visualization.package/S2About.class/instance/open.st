instance creation
open
	| v labels |
	v := RTView new.
"	v add: (RTBitmap new form: TRPlatform current roassalIcon) element."
	labels := RTLabel
		elementsOn:
			#('Spy is a profiling framework for Pharo and VisualWorks' 'Spy is useful to obtain information' 'when code is being executed').
	labels
		add:
			((RTLabel new color: Color veryVeryDarkGray)
				elementOn: 'https://github.com/ObjectProfile/Spy2').

	v addAll: labels.
	RTVerticalLineLayout on: labels.
"	TRConstraint move: v elements first onTheLeftOf: labels."

	"Adding animation"
	self addAnimationTo: v.
	v openTitled: 'The Spy profiling framework'