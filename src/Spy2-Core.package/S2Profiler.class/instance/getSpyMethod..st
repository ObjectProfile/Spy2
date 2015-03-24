accessing - metamodel
getSpyMethod: method

	^ (method methodClass getSpy: self)ifNotNil: [ :cls | cls localMethodAt: method selector ifAbsent: [ nil ] ]