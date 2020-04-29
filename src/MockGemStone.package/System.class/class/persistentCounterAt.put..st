Persistent Counters
persistentCounterAt: index put: value

"Sets the persistent shared counter at index to the specified
 value.  value must be a SmallInteger, a LargePositiveInteger,
 or a LargeNegativeInteger.  In the later two cases, value must
 be representable as a signed 64-bit integer (between 
 -9223372036854775808 and 9223372036854775807).

 Returns value, the new value of the counter.

 See the method: 
   System>>_updateSharedCounterAt: index by: amount withOpCode: code
 for more information on persistent shared counters."

	^persistentCounter at: index put: value