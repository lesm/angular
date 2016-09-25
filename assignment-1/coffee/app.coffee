angular
  .module 'LunchCheck', []
  .controller 'LunchCheckController', ['$scope', ($scope) ->
    $scope.lunch = ''
    
    $scope.showMessage = ->
      meals = numberOfMeal()
      return $scope.message = 'Please enter data first' if meals.length == 0
      return $scope.message = 'Enjoy' if meals.length <= 3
      return $scope.message = 'Too much' if meals.length > 3

    numberOfMeal = ->
      arre = $scope.lunch.split(',')
      meals = []
      for meal in arre
        if meal
          meals.push meal
      meals
  ]
