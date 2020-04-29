accessing
incrementBy: anInteger 
	lock critical: [value := value + anInteger]