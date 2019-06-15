accessing - metamodel
getSpyMetaclass: class
	^ (class instanceSide getSpy: self) ifNotNil: #metaclassSpy