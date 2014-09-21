// Generated by CoffeeScript 1.8.0
(function() {
  var initScope_module;

  initScope_module = angular.module('classy-initScope', ['classy-core']);

  initScope_module.classy.plugin.controller({
    name: 'initScope',
    options: {
      enabled: true
    },
    init: function(klass, deps, module) {
      var data, key, value;
      if (this.options.enabled && klass.constructor.prototype.initScope) {
        data = klass.constructor.prototype.initScope;
        if (typeof data === 'function') {
          data = data.call(klass);
        }
        for (key in data) {
          value = data[key];
          deps.$scope[key] = value;
        }
      }
    }
  });

}).call(this);
