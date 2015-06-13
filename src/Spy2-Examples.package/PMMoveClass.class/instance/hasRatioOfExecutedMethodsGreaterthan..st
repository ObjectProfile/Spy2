as yet unclassified
hasRatioOfExecutedMethodsGreaterthan: ratio

	^ ((self methods select: #hasBeenExecuted) size / self methods size) > ratio