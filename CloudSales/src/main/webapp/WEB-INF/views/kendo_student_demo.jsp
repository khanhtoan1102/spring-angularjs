<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <style>html { font-size: 14px; font-family: Arial, Helvetica, sans-serif; }</style>
    <title></title>
    <link rel="stylesheet" href="//kendo.cdn.telerik.com/2016.1.412/styles/kendo.common-bootstrap.min.css" />
    <link rel="stylesheet" href="//kendo.cdn.telerik.com/2016.1.412/styles/kendo.bootstrap.min.css" />

    <script src="//kendo.cdn.telerik.com/2016.1.412/js/jquery.min.js"></script>
    <script src="//kendo.cdn.telerik.com/2016.1.412/js/kendo.all.min.js"></script>
</head>
<body>
        <div id="example">
            <div id="grid"></div>

            <script>
                $(document).ready(function () {
                    var crudServiceBaseUrl = "/web/student",
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
                                    	crudServiceBaseUrl + "/delete/" + data.models[data.models.length - 1].id;
                                    },
                                    dataType: "json",
                                    contentType: "application/json",
                                    type: "delete",
                                    complete: function(e){
                                    	$("grid").data("kendoGrid").dataSource.read();
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
                                    } else if(operation == "create" && options.models[0]){
                                    	return kendo.stringify(options.models[0]);
                                    } else if(operation == "update" && options.models[0]){
                                    	return kendo.stringify(options.models[0]);
                                    } else if(operation == "destroy" && options.models){
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
                                        name: { validation: { required: true } },
                                        sex: { validation: { required: true } },
                                        dateOfBirth: { type: "date",  validation: { required: true} },
                                        address: { validation: { required: true } },
                                        school: { defaultValue: { id: 1, name: "MTA"} }
                                    }
                                }
                            }
                        });

                    $("#grid").kendoGrid({
                        dataSource: dataSource,
                        pageable: true,
                        height: 550,
                        toolbar: ["create"],
                        columns: [
                            { field:"name", title: "Name", width: "120px" },
                            { field: "sex", title:"Sex", width: "120px" },
                            { field: "dateOfBirth", title:"Date Of Birth", width: "250px" },
                            { field: "address", title: "Address", width: "250px" },
                            { field: "school", title: "School", width: "120px" , editor: categoryDropDownEditor, template: "#=school.name#" },
                            { command: ["edit", "destroy"], title: "&nbsp;", width: "250px" }],
                        editable: "popup"
                    });
                });
                
                
                function categoryDropDownEditor(container, options) {
                    $('<input required data-text-field="name" data-value-field="id" data-bind="value:' + options.field + '"/>')
                        .appendTo(container)
                        .kendoDropDownList({
                            autoBind: false,
                            dataSource: {
                                type: "odata",
                                transport: {
                                    read: {
                                    	url: "/web/school/all",
                                        dataType: "json",
                                    }
                                },
                                schema: {
                                    data: function (data) {
                                        return data; // <-- The result is just the data, it doesn't need to be unpacked.
                                    },
                                    total: function (data) {
                                        return data.length; // <-- The total items count is the data length, there is no .Count to unpack.

                                    }

                                }
                            }
                        });
                }
            </script>
        </div>


</body>
</html>