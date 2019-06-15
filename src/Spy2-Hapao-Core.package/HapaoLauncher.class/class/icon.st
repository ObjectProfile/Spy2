icons
icon
	"Private - Generated method"
	icon ifNotNil: [ ^ icon ].
	^ icon := Form fromBinaryStream: (self iconContents base64Decoded readStream).