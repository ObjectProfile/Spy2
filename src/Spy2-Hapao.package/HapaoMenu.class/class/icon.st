accessing
icon
	^ icon ifNil: [ icon := Form fromBinaryStream: (self iconContents base64Decoded readStream) ].