accessing - metamodel
getSpyPackage: package

	^ packages at: package name ifAbsent: [ nil ]