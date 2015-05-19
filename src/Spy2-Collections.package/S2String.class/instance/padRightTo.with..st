as yet unclassified
padRightTo: length with: char
	^ self, (String new: (length - self size max: 0) withAll: char)