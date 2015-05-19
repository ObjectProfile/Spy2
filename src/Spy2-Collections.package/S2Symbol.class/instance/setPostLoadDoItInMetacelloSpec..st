as yet unclassified
setPostLoadDoItInMetacelloSpec: aMetacelloSpec
    self precedence == 0
        ifTrue: [ self error: 'Invalid selector' ].
    aMetacelloSpec
        setPostLoadDoIt:
            (aMetacelloSpec project valueHolderSpec
                value: self;
                yourself)