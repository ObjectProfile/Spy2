intialization
keepTrackOfInstancesOf: classCollection

	classesToTrack := classCollection asIdentitySet.
	trackStrings := classCollection includes: String.
	trackPoints := classCollection includes: Point.