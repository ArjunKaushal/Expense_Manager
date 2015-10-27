
/* global $rootScope, CanvasJS, angular */

angular.module('myApp.controllers',[])
        .controller('customersCtrl1', function($scope, $http) {
            $http.get('jsonFiles/remainder.json')
            .success(function (response) {$scope.records = response.records;});
        })
        .controller('chart1', function() {
            var chart = new CanvasJS.Chart("chartContainer",{
            data: [{
                    type: "doughnut",
                    dataPoints: [
                      {  y: 53.37, indexLabel: "Food" },
                      {  y: 35.0, indexLabel: "Shopping" },
                      {  y: 7, indexLabel: "Bill" },
                      {  y: 20, indexLabel: "Rent" },
                      {  y: 5, indexLabel: "Others" }
                      ]
                  }]
            });
            chart.render();
        })
        .controller('chart2', function() {
            var chart2 = new CanvasJS.Chart("chartContainer2",{
            data: [{
                    type: "line",
                    dataPoints: [
                      { x: new Date(2015, 00, 1), y: 7500 },
                      { x: new Date(2015, 01, 1), y: 8000 },
                      { x: new Date(2015, 02, 1), y: 6000 },
                      { x: new Date(2015, 03, 1), y: 6500 },
                      { x: new Date(2015, 04, 1), y: 9000 },
                      { x: new Date(2015, 05, 1), y: 7000 },
                      { x: new Date(2015, 06, 1), y: 10000 },
                      { x: new Date(2015, 07, 1), y: 6000 },
                      { x: new Date(2015, 08, 1), y: 8500 },
                      { x: new Date(2015, 09, 1), y: 9000 },
                      { x: new Date(2015, 10, 1), y: 7500 },
                      { x: new Date(2015, 11, 1), y: 6500 }
                      ]
                  }]
            });
            chart2.render();
        })
        .controller('dashbController', function (){
            var chart = new CanvasJS.Chart("chartContainer",{
            data: [{
                    type: "doughnut",
                    dataPoints: [
                      {  y: 53.37, indexLabel: "Food" },
                      {  y: 35.0, indexLabel: "Shopping" },
                      {  y: 7, indexLabel: "Bill" },
                      {  y: 20, indexLabel: "Rent" },
                      {  y: 5, indexLabel: "Others" }
                      ]
                  }]
            });
            chart.render();
            var chart2 = new CanvasJS.Chart("chartContainer2",{
            data: [{
                    type: "line",
                    dataPoints: [
                      { x: new Date(2015, 00, 1), y: 7500 },
                      { x: new Date(2015, 01, 1), y: 8000 },
                      { x: new Date(2015, 02, 1), y: 6000 },
                      { x: new Date(2015, 03, 1), y: 6500 },
                      { x: new Date(2015, 04, 1), y: 9000 },
                      { x: new Date(2015, 05, 1), y: 7000 },
                      { x: new Date(2015, 06, 1), y: 10000 },
                      { x: new Date(2015, 07, 1), y: 6000 },
                      { x: new Date(2015, 08, 1), y: 8500 },
                      { x: new Date(2015, 09, 1), y: 9000 },
                      { x: new Date(2015, 10, 1), y: 7500 },
                      { x: new Date(2015, 11, 1), y: 6500 }
                      ]
                  }]
            });
            chart2.render();
        })
        .controller('TransactionController', function($scope, $http) {
            $http.get('api/transaction.json')
            .success(function (response) {$scope.records = response.records;});
            $scope.add=function (){
                var newrecord = {
                    Description:$scope.Description,
                    Amount:$scope.Amount,
                    Account:$scope.Account,
                    Date:$scope.Date
                };
                $scope.records.push(newrecord);
                $scope.Description='';
                $scope.Amount='';
                $scope.Account='';
                $scope.Date='';
            };
            $scope.update = function(id) {
                var index = getSelectedIndex(id);
                var updaterecord=$scope.records[index];
                $scope.Description=updaterecord.Description;
                $scope.Account=updaterecord.Account;
                $scope.Amount=updaterecord.Amount;
                $scope.Date=updaterecord.Date;
            };
            $scope.getdata=function(id){
                var index = getSelectedIndex(id);
                var updaterecord=$scope.records[index];
                $rootScope.Description=updaterecord.Description;
                $rootScope.Account=updaterecord.Account;
                $rootScope.Amount=updaterecord.Amount;
                $rootScope.Date=updaterecord.Date;
            };
            function getSelectedIndex(id){
                for(var i=0;i<$scope.records.length;i++){
                    if($scope.records[i].id==id){
                        return i;
                    }
                return -1;
                }
            }
            $scope.delete= function(id){
                var result= confirm('Are you sure');
                if(result==true){
                    var index=getSelectedIndex(id);
                    $scope.records.splice(index,1);
                }
            }; 
        })
        .controller('ExpenseController',function($scope,$http){
            $http.get('api/expense.json')
            .success(function (response) {$scope.records = response.records;});
            $scope.payees=["Amazon","Best Buy","Reliance","Walmart","Big Bazaar","other"];
            $scope.categories=["Automobile","Entertainment","Family","Food","Health Care","Home Office", 
						"Insurance","Loans","Other","Personal","Tax","Travel","Utilities","Vacation"];
        })
        .controller('IncomeController',function($scope,$http){
            $http.get('api/income.json')
            .success(function (response) {$scope.records = response.records;});
            $scope.payers=["My Employer","My Bank","My Government","My Pension","NA"];
            $scope.categories=["Salary","Equities","Personal Savings","Rents and royalties","Home equity","Part-time work",
						"Pensions","Annuities","Social Security","Loans","Account Transfer"];
        })
        .controller('CalendarCtrl',function ($scope,$http) {
            'use strict';
			$http.get('api/events.json')
            .success(function (response) {$scope.events = response.events;});
            $scope.changeMode = function (mode) {
                $scope.mode = mode;
            };

            $scope.today = function () {
                $scope.currentDate = new Date();
            };

            $scope.isToday = function () {
                var today = new Date(),
                currentCalendarDate = new Date($scope.currentDate);

                today.setHours(0, 0, 0, 0);
                currentCalendarDate.setHours(0, 0, 0, 0);
                return today.getTime() === currentCalendarDate.getTime();
            };

            $scope.loadEvents = function () {
                
            };

            $scope.onEventSelected = function (event) {
                $scope.event = event;
            };

            function createEvent() {
                
            }
        });