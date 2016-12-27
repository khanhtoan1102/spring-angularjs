(function() {
    'use strict';

    angular
        .module('app.studentcrud')
        .run(appRun);

    // appRun.$inject = ['routehelper']

    /* @ngInject */
    function appRun(routehelper) {
        routehelper.configureRoutes(getRoutes());
    }

    function getRoutes() {
        return [
            {
                url: '/studentcrud',
                config: {
                    templateUrl: 'app/studentcrud/studentcrud.html',
                    controller: 'studentcrudCtrl',
                    controllerAs: 'vm',
                    title: 'studentcrud',
                    settings: {
                        nav: 5,
                        content: '<i></i> studentcrud'
                    }
                }
            }
        ];
    }
})();
