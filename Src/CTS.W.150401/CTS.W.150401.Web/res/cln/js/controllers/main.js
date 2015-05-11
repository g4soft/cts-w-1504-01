// MainCtrl
ctrls.controller('MainCtrl', function ($scope, $http, $routeParams, $location) {
    // Định nghĩa biến toàn cục
    $scope.data = {};
    $scope.strings = {};
    $scope.style = {};
    $scope.variable = {};
    $scope.tblResult = {};

    // Gán giá trị init
    if ($browserHelper.isDevice()) {
        window.location = '/m/index';
        return;
    }

    /* Định nghĩa phương thức xử lý */
    // Xử lý lấy chuỗi resource
    $scope.getStrings = function () {
        $pc(function () {
            $scope.strings = {
            //                Title: $nm('CLN.MAIN.Title'),
            //                Search: $nm('CLN.MAIN.Search'),
            //                InputSearch: $nm('CLN.MAIN.InputSearch'),
            //                Items: $nm('CLN.MAIN.Items'),
            //                Copyright: $nm('CLN.MAIN.Copyright'),
            //                HomeLink: $nm('CLN.MAIN.HomeLink'),
            //                HomeText: $nm('CLN.MAIN.HomeText')
        };
    });
};
// Xử lý init
$scope.init = function () {
    $pc({
        http: $http,
        url: '/ajx/main.aspx/InitLayout',
        data: {},
        success: function (data) {
            // Gán đối tượng data
            $scope.data.Messages = data.Messages;

            // Gán data
            $scope.tblResult.ListData = data.ListCategories;
      
        }
    });
};
// Xử lý search
$scope.search = function () {
    $pc(function () {
        // Convert chuỗi thành chuỗi latin
        var kw = $dataHelper.toLatinString($scope.data.Keywords, '-');
        // Tiến hành redirect
        $location.path('/items/search/' + kw);
    });
};
// Xử lý chuyển trang
$scope.gotoPage = function (page) {
    $pc(function () {
        // Tiến hành redirect
        $location.path(page);
    });
};
/* Định nghĩa các events */
// Tiến hành lấy chuỗi resource
$scope.getStrings();
// Tiến hành xử lý init
$scope.init();
});