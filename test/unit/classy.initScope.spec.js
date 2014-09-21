(function() {
  var app;

  app = angular.module('classyInitScopeTest', ['classy', 'classy-initScope']);

  app.classy.controller({
    name: 'InitController',
    inject: ['$scope'],
    initScope: function() {
      return {
        a: 'a',
        b: 'b',
        c: 'c',
        objectA: {
          item1: 1,
          item2: 2
        }
      };
    }
  });

  describe('Classy initScope (classy-initScope.coffee)', function() {
    var initController, scope;
    beforeEach(module('classyInitScopeTest'));
    initController = null;
    scope = null;
    beforeEach(function() {
      inject(function($controller, $rootScope) {
        scope = $rootScope.$new();
        initController = $controller('InitController', {
          $scope: scope
        });
      });
    });
    return it('should initialize scope values', function() {
      expect(scope.a).toBe('a');
      expect(scope.b).toBe('b');
      expect(scope.c).toBe('c');
      expect(scope.objectA).toEqual({
        item1: 1,
        item2: 2
      });
    });
  });

}).call(this);
