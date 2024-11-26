examples
test3
	| sttTest data |
	
	sttTest := '
		<HTML>
		<HEAD><TITLE>Test 3</TITLE></HEAD>

		<BODY>
			<TABLE>
				<?stt me at: #numbers do: [ :each | ?>
			        <TR>
					   <TD><?stt= each@#asString ?></TD>
					   <TD><?stt= each@#twice ?></TD>
			        </TR>
			   	<?stt ] ?>
			</TABLE>
		</BODY>
		</HTML>'.

	data := MCLSmalltalkTemplateDictionary new.
	data 
		at: #numbers put: (MCLSmalltalkTemplateDictionary map: {#asString. #twice->[:i | (i * 2) asString]} collection: #(1 2 3)).
		
	^ (MCLSmalltalkTemplate on: sttTest) evaluateFor: data.