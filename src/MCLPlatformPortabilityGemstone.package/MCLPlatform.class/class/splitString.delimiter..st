as yet unclassified
splitString: aString delimiter: splitChar
  | lines index nextIndex |
  lines := OrderedCollection new.
  aString ifEmpty: [ lines add: aString ].
  index := 1.
  [ index <= aString size ]
    whileTrue: [ 
      nextIndex := aString
        indexOf: splitChar
        startingAt: index
        ifAbsent: [ aString size + 1 ].
      lines add: (aString copyFrom: index to: nextIndex - 1).
      index := nextIndex + 1 ].
  ^ lines