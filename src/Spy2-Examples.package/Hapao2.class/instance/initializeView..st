visualization
initializeView: builder
	"super initializeView: builder."
	builder canvas addMenu: 'get list' callback: [ self visualizeAsList ]