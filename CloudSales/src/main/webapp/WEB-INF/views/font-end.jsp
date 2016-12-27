<!DOCTYPE html>
<html>
<head>
    <base href="http://demos.telerik.com/kendo-ui/grid/remote-data-binding">
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
                $(document).ready(function() {
                    $("#grid").kendoGrid({
                        dataSource: {
                            type: "odata",
                            transport: {
                                read: "//demos.telerik.com/kendo-ui/service/Northwind.svc/Orders"
                            },
                            schema: {
                                model: {
                                    fields: {
                                        OrderID: { type: "number" },
                                        Freight: { type: "number" },
                                        ShipName: { type: "string" },
                                        OrderDate: { type: "date" },
                                        ShipCity: { type: "string" }
                                    }
                                }
                            },
                            pageSize: 20,
                            serverPaging: true,
                            serverFiltering: true,
                            serverSorting: true
                        },
                        height: 550,
                        filterable: true,
                        sortable: true,
                        pageable: true,
                        columns: [{
                                field:"OrderID",
                                filterable: false
                            },
                            "Freight",
                            {
                                field: "OrderDate",
                                title: "Order Date",
                                format: "{0:MM/dd/yyyy}"
                            }, {
                                field: "ShipName",
                                title: "Ship Name"
                            }, {
                                field: "ShipCity",
                                title: "Ship City"
                            }
                        ]
                    });
                });
            </script>
</div>


</body>
</html>
