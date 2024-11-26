compiling
asBlock
	"Compiles the receiver's template and returns a BlockClosure. Does error handling"
	^ [ self compile ] on: SyntaxErrorNotification do: [ :e |
"			self db isDevelopment
				ifTrue: [e pass]"
				^ [:input | '(Fehler in der Vorlagendatei!)' ] ]