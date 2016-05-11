(function() {
    'use strict';

    angular
        .module('app.studentkendo')
        .controller("studentkendoCtrl", function($scope){
            $scope.mainGridOptions = {
                dataSource: {
                	data: students,
                    schema: {
                        model: {
                            fields: {
                                name: { type: "string" },
                                clas: { type: "string" },
                            }
                        }
                    },
                    pageSize: 5,
                },
                sortable: true,
                pageable: true,
                dataBound: function() {
                    this.expandRow(this.tbody.find("tr.k-master-row").first());
                },
                columns: [{
                    field: "name",title: "Name",width: "120px"},
                    {field: "clas",title: "Class",width: "120px"}]
            }; 
        })
})();
