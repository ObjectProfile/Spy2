private - action
instrumentMethods: ringMethods 
	ringMethods do: [ :ringMethod | | method |
		ringMethod compiledMethod ifNotNil: [ 
			self methodPlugins do: [:plugin | plugin installOn: ringMethod compiledMethod ].
			method := ringMethod compiledMethod.
			self installOnMethod: method.
			 ] ]
	