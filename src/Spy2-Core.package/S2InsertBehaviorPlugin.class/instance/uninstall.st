hooks
uninstall

	newMethods do: [ :method | method isInstalled ifTrue: [ method removeFromSystem ] ].
	self initialize. 