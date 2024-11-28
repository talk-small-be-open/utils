as yet unclassified
removeCount: maxToRemove
	| count |
	count := maxToRemove min: collection size.
	^ collection removeFirst: count