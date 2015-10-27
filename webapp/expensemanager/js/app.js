

var app = angular.module('myApp', ['myApp.controllers','ui.rCalendar','ngRoute']).config(['$routeProvider', function($routeProvider) {
  
  $routeProvider
    .when('/', {
                templateUrl: 'partials/dashboard.html',
                controller: 'dashbController'
            })
    .when('/income', {
		templateUrl: 'partials/income.html',
		controller: 'chart1'
            })
    .when('/budget', {
		templateUrl: 'partials/budget.html'
		
            })
    .when('/expense', {
		templateUrl: 'partials/expense.html',
		controller: 'chart1'
            })
    .when('/activity', {
                templateUrl: 'partials/activity.html',
		controller: 'chart2'
            })
    .when('/trans', {
                templateUrl: 'partials/trans.html',
                controler:''
            })
    .when('/reminders', {
		templateUrl: 'partials/reminder.html'
            })
    .otherwise({redirectTo: '/'});
}]);