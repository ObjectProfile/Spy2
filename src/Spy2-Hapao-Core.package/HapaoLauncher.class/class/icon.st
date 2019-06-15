icons
icon
	"Private - Generated method"
	icon ifNotNil: [ ^ icon ].
	^ icon := Form fromBinaryStream: (self iconContents readStream base64Decoded).