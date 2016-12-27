(function() {
    'use strict';

    angular
        .module('app.studentkendo')
        .run(appRun);

    // appRun.$inject = ['routehelper']

    /* @ngInject */
    function appRun(routehelper) {
        routehelper.configureRoutes(getRoutes());
    }

    function getRoutes() {
        return [
            {
                url: '/studentkendo',
                config: {
                    templateUrl: 'app/studentkendo/studentkendo.html',
                    controller: 'studentkendoCtrl',
                    controllerAs: 'vm',
                    title: 'studentkendo',
                    settings: {
                        nav: 4,
                        content: '<i></i> studenkendo'
                    }
                }
            }
        ];
    }
})();
