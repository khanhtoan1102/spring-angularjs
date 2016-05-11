(function() {
    'use strict';

    angular
        .module('app.schoolkendo')
        .controller("schoolkendoCtrl", function($scope){
        	$(document).ready(function () {
                var crudServiceBaseUrl = "/web/school",
                    dataSource = new kendo.data.DataSource({
                        transport: {
                            read:  {
                                url: crudServiceBaseUrl + "/all",
                                dataType: "json",
                                contentType: "application/json",
                                type: "get"
                            },
                            update: {
                                url: function(data){
                                	return crudServiceBaseUrl + "/update/" + data.models[0].id;
                                },
                                dataType: "json",
                                contentType: "application/json",
                                type: "put",
                                complete: function(e){
                                	$("#grid").data("kendoGrid").dataSource.read();
                                }
                  
                            },
                            destroy: {
                                url: function(data){
                                	return crudServiceBaseUrl + "/delete/" + data.models[data.models.length - 1].id;
                                },
                                dataType: "json",
                                contentType: "application/json",
                                type: "delete",
                                complete: function(e){
                                	$("#grid").data("kendoGrid").dataSource.read();
                                	$("#grid").data("kendoGrid").refresh();
                                }
                            },
                            create: {
                                url: crudServiceBaseUrl + "/add",
                                dataType: "json",
                                contentType: "application/json",
                                type: "post",
                                complete: function(e){
                                	$("#grid").data("kendoGrid").dataSource.read();
                                }
                            },
                            parameterMap: function(options, operation) {
                                if (operation == "read" && options.models) {
                                    return {models: kendo.stringify(options.models)};
                                } else if(operation == "create" && options.models){
                                	return kendo.stringify(options.models[0]);
                                } else if(operation == "update" && options.models){
                                	return kendo.stringify(options.models[0]);
                                }  else if(operation == "destroy" && options.models){
                                	return kendo.stringify(options.models[0]);
                                } 
                            }
                        },
                        batch: true,
                        pageSize: 3,
                        schema: {
                            model: {
                                id: "id",
                                fields: {
                                    id: { editable: false, nullable: true },
                                    name: { validation: { required: true } }
                                }
                            }
                        }
                    });

                $("#grid").kendoGrid({
                    dataSource: dataSource,
                    pageable: true,
                    toolbar: ["create"],
                    columns: [
                        { field:"name", title: "Name", width: "120px" },
                        { command: ["edit", "destroy"], title: "&nbsp;", width: "250px" }],
                    editable: "popup"
                });
            });
        })
})();
