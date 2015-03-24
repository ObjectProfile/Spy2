accessing - computed
spySender

	^ self spyContext sender ifNotNil: [ :frame | frame spyMethod ]