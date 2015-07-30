angular.module "graveyard"
  .controller "MainController", ($http)->
    $http
      .get 'assets/json/projects.json'
      .success (data)=>
        @projects = data

    @select = (project=null)=>
        if project isnt null
          @is_selected = yes
          @selected = project
        else
          @is_selected = no
    return @
