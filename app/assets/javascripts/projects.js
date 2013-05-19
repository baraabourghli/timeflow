var app = angular.module("Project", ["ngResource"]);

app.factory("Project", ["$resource", function($resource) {
  var Project = $resource("/projects/:id", {id: "@id"}, {update: {method: "PUT"}});
  return Project;
}]);


window.ProjectsCtrl = function ($scope, Project) {

	$scope.projects = Project.query();

	$scope.addProject = function(){
		project = Project.save($scope.newProject)
    	$scope.projects.push(project)
    	$scope.newProject = {}
	}

	$scope.addIssue = function(){
	}
}