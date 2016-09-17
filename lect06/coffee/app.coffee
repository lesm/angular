app = angular.module('myApp', [])

app.controller 'NameCaculatorController', ($scope) ->
  $scope.name = ''
  $scope.totalValue = 0

  $scope.displayNumeric = ->
    totalNameValue = calculatNumericForString($scope.name)
    $scope.totalValue = totalNameValue

  calculatNumericForString = (string) ->
    totalStringValue = 0
    for n in string
      totalStringValue += n.charCodeAt()
    totalStringValue
