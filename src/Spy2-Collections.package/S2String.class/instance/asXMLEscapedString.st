as yet unclassified
asXMLEscapedString
	| stream |

	stream := (self class new: self size) writeStream.
	"to:do: for performance"
	1 to: self size do: [:i | | nextChar |
		(nextChar := self at: i) == $<
			ifTrue: [stream nextPutAll: '&lt;']
			ifFalse: [
				nextChar == $> "needed to escape ]]> in PCDATA"
					ifTrue: [stream nextPutAll: '&gt;']
					ifFalse: [
						nextChar == $&
							ifTrue: [stream nextPutAll: '&amp;']
							ifFalse: [stream nextPut: nextChar]]]].
	^ stream contents.