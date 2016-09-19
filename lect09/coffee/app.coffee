'use strict'
angular.module('DIApp', [])
  .controller 'DIController', ($scope, $filter) ->
    $scope.name = 'Luis'

    $scope.upper = ->
      upCase = $filter('uppercase')
      $scope.name = upCase($scope.name)
