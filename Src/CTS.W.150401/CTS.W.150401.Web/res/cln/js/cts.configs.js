// Cấu hình routeProvider
app.config(function ($routeProvider) {
    $routeProvider.when('/index', {
        templateUrl: '/vws/cln/index.html',
        controller: 'IndexCtrl'
    });
    $routeProvider.when('/product/list/:CategorySearchName', {
        templateUrl: '/vws/cln/product.html',
        controller: 'ProductListCtrl'
    });
    $routeProvider.when('/product/detail/:ItemSearchName', {
        templateUrl: '/vws/cln/detail.html',
        controller: 'ProductDetailCtrl'
    });
    $routeProvider.otherwise({ redirectTo: '/index' });
});