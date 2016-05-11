(function(){
	'use strict';
	
	 angular
     .module('app.studentangularjs').factory("studentService", ['$scope','$http', '$q', function($scope ,$http, $q){
    	 return {
    		 findAllStudent: function(){
    			 return $http({
    				 method: "get",
    				 url: "/web/student/all",
    				 header: {
    					 'contentType': "json"
    				 }
    			 }).then(function success(response){
    				 return response.data;
    			 }, function error(errResponse){
    				 console.error('Error while findAllStudent');
    				 return $q.reject(errResponse);
    			 })
    		 },
    		 
    		 addStudent: function(student){
    			 return $http({
    				 method: "post",
    				 url: "/web/student/add",
    				 header: {
    					'contentType': "json" 
    				 },
    				 data: student
    			 }).then(function success(response){
    				 return response.data;
    			 }, function error(errResponse){
    				 console.error('Error while addStudent');
    				 return $q.reject(errResponse);
    			 })
    		 },
    		
    		 updateStudent: function(student, id){
    			 return $http({
    				 method: "put",
    				 url: "/web/student/update/" +id,
    				 header: {
    					 'contentType': "json"
    				 },
    				 data: student
    			 }).then(function success(response){
    				 return response.data;
    			 }, function error(errResponse){
    				 console.error("Error while updateStudent");
    				 return $q.reject(errResponse);
    			 })
    		 },
    		 
    		 deleteStudent: function(id){
    			 return $http({
    				 method: "delete",
    				 url: "/web/student/delete/" + id,
    				 header: {
    					 'contentType': "json"
    				 }
    			 }).then(function success(response){
    				 return response.data;
    			 }, function error(errResponse){
    				 console.error('Error while delete Student');
    				 return $q.reject(errResponse);
    			 })
    		 }
    		 
    	 }
     }])
})();