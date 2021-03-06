// Generated by CoffeeScript 1.10.0
(function() {
  angular.module('LunchCheck', []).controller('LunchCheckController', [
    '$scope', function($scope) {
      var numberOfMeal;
      $scope.lunch = '';
      $scope.showMessage = function() {
        var meals;
        meals = numberOfMeal();
        $scope["class"] = 'danger';
        if (meals.length === 0) {
          return $scope.message = 'Please enter data first';
        }
        $scope["class"] = 'success';
        if (meals.length <= 3) {
          return $scope.message = 'Enjoy';
        }
        if (meals.length > 3) {
          return $scope.message = 'Too much';
        }
      };
      return numberOfMeal = function() {
        var arre, i, len, meal, meals;
        arre = $scope.lunch.split(',');
        meals = [];
        for (i = 0, len = arre.length; i < len; i++) {
          meal = arre[i];
          if (meal) {
            meals.push(meal);
          }
        }
        return meals;
      };
    }
  ]);

}).call(this);
