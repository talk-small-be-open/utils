baselines
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [

			spec package: 'MCLTempFile' with: [ ].
			spec package: 'MCLSystemCommand' with: [ spec requires: #('MCLPlatformPortability') ].
			spec package: 'MCLSmalltalkTemplate' with: [ ].

			spec package: 'MCLSendEmail' with: [
				spec requires: #('MCLTempFile' 'MCLSystemCommand')].

			spec package: 'MCLPlatformPortability' with: [ ].

			spec package: 'MCL-Utils-CollectionSugar' with: [ ].
			spec package: 'MCL-Utils-Blankness' with: [ ].

			spec group: 'default' with: #('').

		].

	spec
		for: #'pharo'
		do: [ 

		spec package: 'MCLPlatformPortabilityPharo' with: [ 
			spec
				requires: #('MCLPlatformPortability' 'OSSubprocess').
		].

		spec package: 'MCLPlatformPortability' with: [ 
			spec
				includes: #('MCLPlatformPortabilityPharo').
		].

		spec package: 'MockGemStone' with: [
			spec
				requires: #('Seaside3')
		].
			
		spec group: 'Core' with: #('MCLPlatformPortabilityPharo')

	].



	spec for: #'gemstone' do: [ 

		spec package: 'MCLPlatformPortabilityGemstone' with: [ ].
			
		spec package: 'MCLPlatformPortability' with: [ 
			spec
				includes: #('MCLPlatformPortabilityGemstone').
		].

	]