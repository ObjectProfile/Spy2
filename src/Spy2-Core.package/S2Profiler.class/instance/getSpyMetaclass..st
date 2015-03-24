accessing - metamodel
getSpyMetaclass: class

	^ (class baseClass getSpy: self) ifNotNil: #metaclassSpy