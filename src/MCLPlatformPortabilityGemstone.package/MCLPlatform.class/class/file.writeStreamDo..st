as yet unclassified
file: aString writeStreamDo: aBlock
  | stream |
  stream := FileDirectory default forceNewFileNamed: aString.
  [ aBlock value: stream ]
    ensure: [ stream close ]