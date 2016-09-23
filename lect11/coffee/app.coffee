'use strict'

angular.module('MsgApp', [])
  .controller 'MsgController', ($scope) ->
    $scope.name = 'Luis'
    $scope.state = 'tux'
    $scope.sayMessage = ->
      'Luis likes to eat healthy snacks at night'
    $scope.feedLuis = ->
      $scope.state = 'tux_dos'

