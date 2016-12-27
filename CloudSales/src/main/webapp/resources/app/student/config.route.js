(function() {
    'use strict';

    angular
        .module('app.student')
        .run(appRun);

    // appRun.$inject = ['routehelper']

    /* @ngInject */
    function appRun(routehelper) {
        routehelper.configureRoutes(getRoutes());
    }

    function getRoutes() {
        return [
            {
                url:'/student',
                config: {
                    templateUrl: 'app/student/student.view.html',
                    controller: 'StudentController',
                    controllerAs: 'vm',
                    title: 'Students ',
                    settings: {
                        nav: 3,
                        content: '<i></i> Students'
                    }
                }
            }
        ];
    }
})();
