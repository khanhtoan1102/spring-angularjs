(function() {
    'use strict';

    angular
        .module('app.studentedit')
        .controller("studenteditCtrl", function($scope){
        	 $scope.mainGridOptions = {
        			 dataSource: {
                         type: "odata",
                         transport: {   
                             read: {
                            	 url: "/spring/student/all",
                                 dataType: "json"
                             }
                         },
                         schema: {
                             data: function (data) {
                                 return data; // <-- The result is just the data, it doesn't need to be unpacked.
                             },
                             total: function (data) {
                                 return data.length; // <-- The total items count is the data length, there is no .Count to unpack.

                             }

                         },
                         pageSize: 2,
                         serverPaging: true,
                         serverFiltering: true,
                         serverSorting: true
                     },
                     height: 550,
                     filterable: true,
                     sortable: true,
                     pageable: true,
                     columns: [{
                         field: "name",
                         title: "Name",
                         width: "120px"
                         },{
                         field: "address",
                         title: "Address",
                         width: "120px"
                         }]
                 };
        	
        	 
        	 
        })
})();
