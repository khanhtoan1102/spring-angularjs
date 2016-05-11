<!DOCTYPE html>
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
                $(document).ready(function() {
                    $("#grid").kendoGrid({
                        dataSource: {
                            type: "odata",
                            transport: {   
                                read: {
                               	 url: "/web/student/all",
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
                            pageSize: 2
                        },
                        height: 550,
                        filterable: true,
                        sortable: true,
                        pageable: true,
                        columns: [{
                            field: "name",title: "Name",width: "120px"},
                            {field: "dateOfBirth",title: "Date Of Birth",width: "120px"},
                            {field: "sex", title: "Sex",width: "120px"},
                            {field: "address",title: "Address", width: "120px"},
                            { field: "school.name",title: "School",width: "120px"}
                            
                            ]
                    });
                });
            </script>
</div>


</body>
</html>
