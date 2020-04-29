Persistent Counters
persistentCounterAt: index

"Returns the value of the persistent shared counter at index, which
 may be a SmallInteger, LargePositiveInteger, or LargeNegativeInteger.

 See the method: 
   System>>_updateSharedCounterAt: index by: amount withOpCode: code
 for more information on persistent shared counters."

	^persistentCounter at: index