as yet unclassified
sortBy: aOneArgumentBlock
	"Sort the values now.
	Useful, if you want to simply sort strings after you already gathered the data"
	
	array sort: [:a :b | (aOneArgumentBlock value: a) <= (aOneArgumentBlock value: b)]