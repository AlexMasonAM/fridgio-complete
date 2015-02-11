angular
  .module("fridgioApp", ['ngResource', 'ui.router', 'templates'])

  .config(function($httpProvider, $stateProvider, $urlRouterProvider) {
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
    // defines all the routes as a service of ui-router
    $stateProvider
      .state("home",{
        url: "",
        template: "<h1>Sweet, sweet like bear meat</h1>"
      })
      .state("about",{
        url: "/about",
        template: "<h1>My NAME</h1>"
      })
      .state("allfood",{
        url: "/allfood",
        templateUrl: "food/index.html",
        controller: foodController 
      })
      .state("showfood",{
        url: "/food/:id",
        templateUrl: "food/show.html",
        controller: showFoodController 
      });
  })
  .controller("foodController", foodController)
  .controller("showFoodController", showFoodController);

function showFoodController($scope, $http, $resource, $stateParams) {
  var Food = $resource('api/food/:id', {id:'@id'});
  $scope.food = Food.get({ id: $stateParams.id });
}

function foodController($scope, $http, $resource) {
  var Food = $resource('api/food/:id', {id:'@id'});

  Food.query(function(data) {
    console.log('All the food fetched!',data);
    $scope.foods = data;
  });

}