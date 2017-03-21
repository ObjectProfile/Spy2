enumerating
select: aBlock 
	^ mutex critical: [ dict select: aBlock ]