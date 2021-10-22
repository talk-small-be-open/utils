as yet unclassified
lns: aSource to: aTarget
	^self run: 'ln -s "', aSource, '" "', aTarget, '"'