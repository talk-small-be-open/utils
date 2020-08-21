as yet unclassified
file: aString binaryWriteStreamDo: aBlock
  | stream |
  stream := FileDirectory default forceNewFileNamed: aString.
  stream binary.
  [ aBlock value: stream ]
    ensure: [ stream close ]