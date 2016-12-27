(function() {
    'use strict';

    angular
        .module('app.schoolkendo')
        .run(appRun);

    // appRun.$inject = ['routehelper']

    /* @ngInject */
    function appRun(routehelper) {
        routehelper.configureRoutes(getRoutes());
    }

    function getRoutes() {
        return [
            {
                url: '/schoolkendo',
                config: {
                    templateUrl: 'app/schoolkendo/schoolkendo.html',
                    controller: 'schoolkendoCtrl',
                    controllerAs: 'vm',
                    title: 'schoolkendo',
                    settings: {
                        nav: 6,
                        content: '<i></i> schoolkendo'
                    }
                }
            }
        ];
    }
})();
