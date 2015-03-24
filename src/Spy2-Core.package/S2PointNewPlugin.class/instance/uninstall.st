hooks
uninstall
	originalMethods do: [ :m | 
		m methodClass methodDict at: m selector put: m. 
		m selector flushCache ]