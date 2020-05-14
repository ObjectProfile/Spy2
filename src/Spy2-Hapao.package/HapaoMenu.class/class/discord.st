accessing
discord
	^ discord ifNil: [ discord := PNGReadWriter formFromStream: self discordPNGByteArray readStream ]