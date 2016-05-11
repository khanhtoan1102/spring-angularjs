<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="http://demos.telerik.com/kendo-ui/grid/editing-popup">
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
                    var crudServiceBaseUrl = "/web/school",
                        dataSource = new kendo.data.DataSource({
                            transport: {
                                read:  {
                                    url: crudServiceBaseUrl + "/all",
                                    dataType: "jsonp",
                                    contentType: "application/json",
                                    type: "get"
                                },
                                update: {
                                    url: function(data){
                                    	return crudServiceBaseUrl + "/update/" + data.id;
                                    },
                                    dataType: "jsonp",
                                    contentType: "application/json",
                                    type: "put",
                                    complete: function(e){
                                    	$("#grid").data("kendoGrid").dataSource.read();
                                    }
                                },
                                destroy: {
                                    url: function(data){
                                    	return crudServiceBaseUrl + "/delete/" + data.id;
                                    },
                                    
                                    dataType: "jsonp",
                                    contentType: "application/json",
                                    type: "delete",
                                    complete: function(e){
                                    	$("grid").data("kendoGrid").dataSource.read();
                                    }
                                },
                                create: {
                                    url: crudServiceBaseUrl + "/add",
                                    dataType: "jsonp",
                                    contentType: "application/json",
                                    type: "post",
                                    complete: function(e){
                                    	$("#grid").data("kendoGrid").dataSource.read();
                                    }
                                },
                                parameterMap: function(options, operation) {
                                    if (operation !== "read" && options.models) {
                                        return {models: kendo.stringify(options.models)};
                                    }
                                }
                            },
                            batch: true,
                            pageSize: 20,
                            schema: {
                                model: {
                                    id: "ProductID",
                                    fields: {
                                        ProductID: { editable: false, nullable: true },
                                        ProductName: { validation: { required: true } },
                                        UnitPrice: { type: "number", validation: { required: true, min: 1} },
                                        Discontinued: { type: "boolean" },
                                        UnitsInStock: { type: "number", validation: { min: 0, required: true } }
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
                            { field:"ProductName", title: "Product Name" },
                            { field: "UnitPrice", title:"Unit Price", format: "{0:c}", width: "120px" },
                            { field: "UnitsInStock", title:"Units In Stock", width: "120px" },
                            { field: "Discontinued", width: "120px" },
                            { command: ["edit", "destroy"], title: "&nbsp;", width: "250px" }],
                        editable: "popup"
                    });
                });
            </script>
        </div>


</body>
</html>