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

app.classy.controller
    name: 'InitWithObjectController'

    inject: ['$scope']
   
    initScope: 
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
    initObjectController = null
    scope = null
    objectScope = null
    
    beforeEach ->
        inject ($controller, $rootScope) ->
            scope = $rootScope.$new()
            objectScope = $rootScope.$new()
            initController = $controller 'InitController', 
                $scope: scope
            initObjectController = $controller 'InitWithObjectController',
                $scope: objectScope
            return
        return
    
    it 'should initialize scope values when initScope is a function', ->
        expect(scope.a).toBe 'a'
        expect(scope.b).toBe 'b'
        expect(scope.c).toBe 'c'
        expect(scope.objectA).toEqual
            item1: 1
            item2: 2
        
        return

    it 'should initialize scope values when initScope is an object', ->
        expect(objectScope.a).toBe 'a'
        expect(objectScope.b).toBe 'b'
        expect(objectScope.c).toBe 'c'
        expect(objectScope.objectA).toEqual
            item1: 1
            item2: 2
        
        return
         
    return
