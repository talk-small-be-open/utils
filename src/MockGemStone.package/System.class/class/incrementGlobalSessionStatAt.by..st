Global Session Statistics
incrementGlobalSessionStatAt: anIndex by: anInteger 
	| arrayIndex |
	arrayIndex := anIndex + 1.
	mutex critical: 
			[stats at: arrayIndex put: (stats at: arrayIndex) + anInteger.
			^ stats at: arrayIndex]