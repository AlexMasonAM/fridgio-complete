// angular
//   .module("fridgioApp")
//   .controller("foodController", foodController)
//   .controller("showFoodController", showFoodController);

//   function showFoodController($scope, $http, $resource, $stateParams) {
//     var Food = $resource('api/food/:id', {id:'@id'});
//     $scope.food = Food.get({ id: $stateParams.id });
//   }

//   function foodController($scope, $http, $resource) {
//     var Food = $resource('api/food/:id', {id:'@id'});

//     Food.query(function(data) {
//       console.log('All the food fetched!',data);
//       $scope.foods = data;
//     })
//     ;
