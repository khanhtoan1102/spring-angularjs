(function() {
    'use strict';

    angular
        .module('app.student')
        .controller('StudentController', Students);

    /* @ngInject */
    function Students(dataservice, logger) {
        /*jshint validthis: true */
        var vm = this;
        vm.students = [{name:'Jonh',clas:'TH11A'},
                       {name:'Hege',clas:'TH11B'},
                       {name:'Kai',clas:'TH12A'}];
        vm.title = 'Students';

        activate();

        function activate() {
//            Using a resolver on all routes or dataservice.ready in every controller
//            var promises = [getAvengers()];
//            return dataservice.ready(promises).then(function(){
            return getStudents();
        }

        function getStudents() {
                return vm.students;
        }
    }
})();
