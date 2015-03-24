installing
uninstall

	self theClass methodDict at: self selector put: self originalMethod.
	self flushCache