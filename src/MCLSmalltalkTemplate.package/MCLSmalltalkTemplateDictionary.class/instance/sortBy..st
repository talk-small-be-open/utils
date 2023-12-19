sorting
sortBy: aTwoArgumentBlock
	| associations |
	"Sort the values now.
	Useful, if you want to simply sort strings after you already gathered the data"
	
	associations := keyValueDictionary associations sortedBy: [:assoc |
		aTwoArgumentBlock value: assoc key value: assoc value ].
		
	keyValueDictionary := keyValueDictionary species newFrom: associations