<!DOCTYPE html>
<html data-ng-app="app" ng-strict-di>
<head>
	<base href="/spring/">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no" />
    <title data-ng-bind="title"></title>
    <style>
        /* This helps the ng-show/ng-hide animations start at the right place. */
        /* Since Angular has this but needs to load, this gives us the class early. */
        .ng-hide {
            display: none!important;
        }
    </style>

    <!-- inject-vendor:css -->
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="bower_components/toastr/toastr.css" rel="stylesheet" />
    <!-- endinject -->

<link rel="stylesheet" href="//kendo.cdn.telerik.com/2016.1.412/styles/kendo.common.min.css" />
    <link rel="stylesheet" href="//kendo.cdn.telerik.com/2016.1.412/styles/kendo.default.min.css" />

    <!-- inject:css -->
    <link href="content/customtheme.css" rel="stylesheet">
    <link href="content/styles.css" rel="stylesheet" />
    <!-- endinject -->
</head>
<body>
    <div>
        <div data-ng-include="'app/layout/shell.html'"></div>
        <div id="splash-page" data-ng-show="false">
            <div class="page-splash">
                <div class="page-splash-message">
                    Angular Modular Demo
                </div>
                <div class="progress progress-striped active page-progress-bar">
                    <div class="bar"></div>
                </div>
            </div>
        </div>
    </div>

    <!-- inject-vendor:js -->
    <script src="bower_components/jquery/dist/jquery.js"></script>
    <script src="bower_components/angular/angular.js"></script>
    <script src="bower_components/angular-animate/angular-animate.js"></script>
    <script src="bower_components/angular-route/angular-route.js"></script>
    <script src="bower_components/angular-sanitize/angular-sanitize.js"></script>
    <script src="bower_components/bootstrap/dist/js/bootstrap.js"></script>
    <script src="bower_components/toastr/toastr.js"></script>
    <script src="bower_components/moment/moment.js"></script>
    <script src="bower_components/extras.angular.plus/ngplus-overlay.js"></script>
    
    
	<script src="http://kendo.cdn.telerik.com/2016.1.412/js/kendo.all.min.js"></script>

    
    <!-- endinject -->


    <!-- inject:js -->
    <!-- Bootstrapping -->
    <script src="app/app.module.js"></script>

    <!-- Reusable Blocks/Modules -->
    <script src="app/blocks/exception/exception.module.js"></script>
    <script src="app/blocks/exception/exception-handler.provider.js"></script>
    <script src="app/blocks/exception/exception.js"></script>
    <script src="app/blocks/logger/logger.module.js"></script>
    <script src="app/blocks/logger/logger.js"></script>
    <script src="app/blocks/router/router.module.js"></script>
    <script src="app/blocks/router/routehelper.js"></script>

    <!-- core module -->
    <script src="app/core/core.module.js"></script>
    <script src="app/core/constants.js"></script>
    <script src="app/core/config.js"></script>
    <script src="app/core/dataservice.js"></script>

    <!-- layout -->
    <script src="app/layout/layout.module.js"></script>
    <script src="app/layout/shell.js"></script>
    <script src="app/layout/sidebar.js"></script>

    <!--widgets-->
    <script src="app/widgets/widgets.module.js"></script>
    <script src="app/widgets/ccSidebar.js"></script>
    <script src="app/widgets/ccSpinner.js"></script>
    <script src="app/widgets/ccWidgetClose.js"></script>
    <script src="app/widgets/ccWidgetHeader.js"></script>
    <script src="app/widgets/ccWidgetMinimize.js"></script>

    <!-- dashboard -->
    <script src="app/dashboard/dashboard.module.js"></script>
    <script src="app/dashboard/config.route.js"></script>
    <script src="app/dashboard/dashboard.js"></script>

    <!--avengers module-->
    <script src="app/avengers/avengers.module.js"></script>
    <script src="app/avengers/config.route.js"></script>
    <script src="app/avengers/avengers.js"></script>
    <!-- endinject -->
    <!--  students module-->
    <script src="app/student/student.module.js"></script>
    <script src="app/student/config.route.js"></script>
    <script src="app/student/student.controller.js"></script>
    <!-- studentkendo module -->
    <script src="app/studentkendo/studentkendo.module.js"></script>
    <script src="app/studentkendo/config.route.js"></script>
    <script src="app/studentkendo/studentkendo.controller.js"></script>
    <script src="app/studentkendo/students.js"></script>
</body>
</html>