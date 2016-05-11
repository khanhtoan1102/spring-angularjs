(function() {
    'use strict';

    angular
        .module('app.studentedit')
        .run(appRun);

    // appRun.$inject = ['routehelper']

    /* @ngInject */
    function appRun(routehelper) {
        routehelper.configureRoutes(getRoutes());
    }

    function getRoutes() {
        return [
            {
                url: '/studentedit',
                config: {
                    templateUrl: 'app/studentedit/studentedit.html',
                    controller: 'studenteditCtrl',
                    controllerAs: 'vm',
                    title: 'studentedit',
                    settings: {
                        nav: 5,
                        content: '<i></i> studenEdit'
                    }
                }
            }
        ];
    }
})();
