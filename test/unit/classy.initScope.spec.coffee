# Test Data

app = angular.module 'classyInitScopeTest', [
    'classy'
    'classy-initScope'
]
        
app.classy.controller
    name: 'InitController'
   
    inject: ['$scope']
   
    initScope: ->
        a: 'a'
        b: 'b'
        c: 'c'
        objectA: 
            item1: 1
            item2: 2 
        
# Tests

describe 'Classy initScope (classy-initScope.coffee)', ->
    beforeEach module 'classyInitScopeTest'
    
    initController = null
    scope = null
    
    beforeEach ->
        inject ($controller, $rootScope) ->
            scope = $rootScope.$new()
            initController = $controller 'InitController', 
                $scope: scope
            return
        return
    
    it 'should initialize scope values', ->
        expect(scope.a).toBe 'a'
        expect(scope.b).toBe 'b'
        expect(scope.c).toBe 'c'
        expect(scope.objectA).toEqual
            item1: 1
            item2: 2
        
        return
         