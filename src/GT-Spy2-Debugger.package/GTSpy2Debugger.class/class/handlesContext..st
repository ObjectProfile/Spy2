testing
handlesContext: aContext

	^ (aContext findContextSuchThat: [ :ctxt | ctxt method selector == #profile:onMethods: ]) notNil