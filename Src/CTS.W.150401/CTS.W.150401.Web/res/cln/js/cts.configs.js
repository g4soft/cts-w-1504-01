// Cấu hình routeProvider
app.config(function ($routeProvider) {
    $routeProvider.when('/index', {
        templateUrl: '/vws/cln/index.html',
        controller: 'IndexCtrl'
    });
    $routeProvider.when('/product', {
        templateUrl: '/vws/cln/product.html',
        controller: 'ProductCtrl'
    });
    $routeProvider.otherwise({ redirectTo: '/index' });
});