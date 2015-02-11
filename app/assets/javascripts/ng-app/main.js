angular
  .module("fridgioApp", ['ngResource'])

  .config(function($httpProvider) {
    $httpProvider.defaults.headers.common['X-CSRF-Token'] =
      $('meta[name=csrf-token]').attr('content');
  })
  .controller("foodController", foodController);

function foodController($scope, $http, $resource) {

  var Food = $resource('api/food/:id', {id:'@id'});

  Food.query(function(data) {
    console.log('All the food fetched!',data);
    $scope.foods = data;
  });

}