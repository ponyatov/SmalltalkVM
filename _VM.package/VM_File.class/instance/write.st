writing
write
	| stream |
	stream := FileStream forceNewFileNamed: self val.
	dat do: [ :x | stream nextPutAll: ( x , String lf ) ].
	stream close