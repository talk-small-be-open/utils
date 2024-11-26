as yet unclassified
at: aKeySymbol do: aBlock
	"Convenience. Für bessere Lesbarkeit in Templates"
	^self at: aKeySymbol asSymbol ifPresent: [:collection | collection do: aBlock]