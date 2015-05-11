// -----------------------------------------------------------------
// Common AngularJS Plugin
// -----------------------------------------------------------------
// Yêu cậu khi import plugin:
//   + AngularJS Plugin
//   + Angular Datatables Plugin
//   + Angular Treeview Plugin
//   + Angular Strap Plugin
//   + CTS Helper Plugin
// -----------------------------------------------------------------
'use strict';
// -----------------------------------------------------------------
// Định nghĩa module controllers
// -----------------------------------------------------------------
var ctrls = angular.module('controllers', []);
// -----------------------------------------------------------------
// Định nghĩa các module
// -----------------------------------------------------------------
var app = angular.module('app', [
    'ngRoute',
    'ngAnimate',
    'ngSanitize',
    'ngTouch',
    'treeControl',
    'datatables',
    'ui.utils',
    'ui.tinymce',
    'uiGmapgoogle-maps',
    'mgcrea.ngStrap.typeahead',
    'mgcrea.ngStrap.select',
    'mgcrea.ngStrap.datepicker',
    'ui.bootstrap.pagination',
    'ui.bootstrap.modal',
    'ui.bootstrap.tpls',
    'controllers'
]);
// -----------------------------------------------------------------
// Định nghĩa đối tượng $global
// -----------------------------------------------------------------
app.factory('$global', function () {
    return {
        fn: cts.helper.PageHelper.callFuncByKey
    };
});
// -----------------------------------------------------------------
// Định nghĩa các config
// -----------------------------------------------------------------
app.config(function ($locationProvider) {
    $locationProvider.html5Mode({
        enabled: true,
        requireBase: false
    });
});
// Module 'mgcrea.ngStrap.datepicker'
app.config(function ($datepickerProvider) {
    angular.extend($datepickerProvider.defaults, {
        dateFormat: 'ddMMyyyy',
        autoclose: true
    });
});
// -----------------------------------------------------------------
// Định nghĩa các filter
// -----------------------------------------------------------------
// format
app.filter('ctsformat', function () {
    return function (input, format) {
        if (!input) {
            input = '';
        }
        if (format) {
            return cts.helper.DataHelper.replaceAll('{#}', input, format);
        } else {
            return input;
        }
    };
});
// -----------------------------------------------------------------
// Cập nhật giá trị các constant
// -----------------------------------------------------------------
app.run(function (paginationConfig) {
    paginationConfig.maxSize = 5;
    paginationConfig.previousText = cts.helper.PageHelper.decodeHtml('&lsaquo;');
    paginationConfig.nextText = cts.helper.PageHelper.decodeHtml('&rsaquo;');
    paginationConfig.firstText = cts.helper.PageHelper.decodeHtml('&laquo;');
    paginationConfig.lastText = cts.helper.PageHelper.decodeHtml('&raquo;');
});

// -----------------------------------------------------------------
// Định nghĩa các directive
// -----------------------------------------------------------------
// loaded
app.directive('ctsLoaded', function ($timeout) {
    // Khởi tạo biến cục bộ
    var directive = {};
    // Gán giá trị vào đối tượng directive
    directive.restrict = 'A';
    // Tạo hàm compile
    directive.compile = function (elem, attrs) {
        var fnLink = function (scope, elem, attrs) {
            $timeout(function () {
                scope.$emit(attrs['ctsLoaded']);
            });
        }
        return fnLink;
    }
    // Kết quả xử lý
    return directive;
});
// repeat loaded
app.directive('ctsRepeatLoaded', function ($timeout) {
    // Khởi tạo biến cục bộ
    var directive = {};
    // Gán giá trị vào đối tượng directive
    directive.restrict = 'A';
    // Tạo hàm compile
    directive.compile = function (elem, attrs) {
        var fnLink = function (scope, elem, attrs) {
            if (scope.$last) {
                $timeout(function () {
                    scope.$emit(attrs['ctsRepeatLoaded']);
                });
            }
        }
        return fnLink;
    }
    // Kết quả xử lý
    return directive;
});