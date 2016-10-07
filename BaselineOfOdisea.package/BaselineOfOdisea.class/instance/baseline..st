as yet unclassified
baseline: spec
	<baseline>
	spec for: #common do: [ spec

		package: 'Odisea';
		package: 'Odisea-Tests' with:[spec requires: #'Odisea'];

		group: 'core'
			with: #(Odisea 'Odisea-Tests')
	]