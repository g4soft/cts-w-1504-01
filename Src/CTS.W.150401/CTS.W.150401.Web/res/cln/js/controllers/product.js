// MainCtrl
ctrls.controller('ProductListCtrl', function ($scope, $http, $routeParams, $location) {
    // Định nghĩa biến toàn cục
    $scope.data = {};
    $scope.strings = {};
    $scope.style = {};
    $scope.variable = {};
    $scope.tblResult = {};
    
    // Gán giá trị init
    $scope.tblResult.Page = 1;
    
    if ($browserHelper.isDevice()) {
        window.location = '/m/index';
        return;
    }

    /* Định nghĩa phương thức xử lý */
    // Xử lý lấy chuỗi resource
    $scope.getStrings = function () {
        $pc(function () {
           
        });
    };

    // Xử lý init
    $scope.init = function () {
        $pc({
            http: $http,
            url: '/ajx/cln/product.aspx/InitLayout',
            data: {},
            success: function (data) {
                // Gán đối tượng data
                $scope.data = data;

                // Xử lý filter
                $scope.filter();
            }
        });
    };

    // Xử lý filter
    $scope.filter = function () {
        $pc({
            http: $http,
            url: '/ajx/cln/product.aspx/Filter',
            data: function () {
                var data = { Offset: 0, Limit: 10 };

                // Lấy giá trị Limit
                if ($scope.tblResult.Limit) {
                    data.Limit = $scope.tblResult.Limit;
                }

                // Lấy giá trị offset
                if ($scope.tblResult.Page) {
                    data.Offset = ($scope.tblResult.Page - 1) * $scope.tblResult.Limit;
                }

                // Lấy CategoryDiv
                if ($location.url().indexOf('other') > -1) {
                    data.CategoryDiv = '99';
                }

                // Gán dữ liệu search
                data.ItemSearchName = $routeParams.ItemSearchName;
                data.CategorySearchName = $routeParams.CategorySearchName;
                
                // Kết quả trả về
                return data;
            },
            success: function (data) {
                // Gán đối tượng data
                $scope.data.Messages = data.Messages;
                // Gán data
                $scope.tblResult.Total = data.Total;
                $scope.tblResult.ListData = data.ListData;
            }
        });
    };

    /* Định nghĩa các events */
    // Tiến hành lấy chuỗi resource
    $scope.getStrings();
    // Tiến hành xử lý init
    $scope.init();
    // Xử lý load item
    $scope.$on('itemsLoaded', function (e) {
        // Colorbox (error: device)
        $('.lightbox').colorbox({ rel: 'lightbox', photo: true });
    });
});