(function() {
    'use strict';

    angular
        .module('app.studentangularjs')
        .run(appRun);

    // appRun.$inject = ['routehelper']

    /* @ngInject */
    function appRun(routehelper) {
        routehelper.configureRoutes(getRoutes());
    }

    function getRoutes() {
        return [
            {
                url: '/studentangularjs',
                config: {
                    templateUrl: 'app/studentangularjs/studentangularjs.html',
                    controller: 'studentangularjsCtrl',
                    controllerAs: 'vm',
                    title: 'studentangularjs',
                    settings: {
                        nav: 5,
                        content: '<i></i> studentAngularJS'
                    }
                }
            }
        ];
    }
})();
