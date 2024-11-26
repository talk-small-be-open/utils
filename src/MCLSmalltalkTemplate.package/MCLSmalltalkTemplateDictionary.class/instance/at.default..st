accessing
at: aKey default: aBlock
	"Convenienve for usage in templates"
	^ self at: aKey ifBlank: aBlock