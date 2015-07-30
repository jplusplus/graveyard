angular.module "graveyard"
  .controller "MainController", ($http, $scope)->
    $http
      .get 'assets/json/projects.json'
      .success (data)=>
        $scope.projects = data
