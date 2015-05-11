// Cấu hình routeProvider
app.config(function ($routeProvider) {
    $routeProvider.when('/index', {
        templateUrl: '/vws/cln/index.html',
        controller: 'IndexCtrl'
    });
    $routeProvider.otherwise({ redirectTo: '/index' });
});