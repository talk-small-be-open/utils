Persistent Counters
persistentCounterAt: index incrementBy: amount

"Increments the persistent shared counter at index by the specified
 amount.  Amount must be a SmallInteger, a LargePositiveInteger,
 or a LargeNegativeInteger.  In the later two cases, amount must
 be representable as a signed 64-bit integer (between 
 -9223372036854775808 and 9223372036854775807).

 Returns the new value of the counter after the increment.

 See the method: 
   System>>_updateSharedCounterAt: index by: amount withOpCode: code
 for more information on persistent shared counters."

	^persistentCounter at: index put: (persistentCounter at: index) + amount