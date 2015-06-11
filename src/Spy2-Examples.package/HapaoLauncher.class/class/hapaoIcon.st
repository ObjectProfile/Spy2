menu
hapaoIcon
	"Private - Generated method"
	icon ifNotNil: [ ^ icon ].
	^ icon := Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self hapaoIconContents readStream).