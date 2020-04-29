Global Session Statistics
globalSessionStatAt: anIndex put: a32BitSignedInteger 
	^ mutex critical: [stats at: anIndex + 1 put: a32BitSignedInteger]