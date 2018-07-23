images
image 
	[^ PNGReadWriter formFromStream: ([self imageSource base64Decoded readStream]). ] on: Error do: [ :ex | ^ nil ]