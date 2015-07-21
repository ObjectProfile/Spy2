accessing
getDescription
	"Return a textual description that can be pasted in a Number sheet"
	| s |
	s := WriteStream on: String new.
	recommandations do: [ :r |
		r printWithoutScoreOn: s.
		s tab.
		r printScoreOn: s.
		s cr.
	].
	^ s contents