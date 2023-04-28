Im a Smalltalk Template. My escaping sequence for embedding Smalltalk expressions is: <?stt > or <?stt= >.

Try this expressions:

(PPLSmalltalkTemplate on: 'Repeating word...{% 10 timesRepeat: [ %} WORD {% ] %}   end!') evaluateFor: nil.

(PPLSmalltalkTemplate on: 'Counting: 
		{% self to: 10 do: [ :each | %}
			[{%= each %}]
		{% ] %}'
) evaluateFor: 1.


