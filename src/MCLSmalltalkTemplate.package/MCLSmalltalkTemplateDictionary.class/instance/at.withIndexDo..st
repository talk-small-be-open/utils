as yet unclassified
at: aKeySymbol withIndexDo: aBlock
	"Convenience. Für bessere Lesbarkeit in Templates"
	^self at: aKeySymbol asSymbol ifPresent: [:collection | collection withIndexDo: aBlock]