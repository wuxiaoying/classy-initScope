initScope_module = angular.module 'classy-initScope', ['classy-core']

initScope_module.classy.plugin.controller
	name: 'initScope'

	options:
		enabled: true
		
	init: (klass, deps, module) ->
		# Adds objects returned by or set by initScope to the `$scope`
		if @options.enabled and klass.constructor::initScope
		    data = klass.constructor::initScope
		    data = data.call klass if typeof data is 'function' 
		    for key, value of data
		        deps.$scope[key] = value
		return
