as yet unclassified
at: aKeySymbol do: aBlock separatedBy: aSeparatedBlock
	"Convenience. Für bessere Lesbarkeit in Templates"
	^self at: aKeySymbol asSymbol ifPresent: [:collection | collection do: aBlock separatedBy: aSeparatedBlock]