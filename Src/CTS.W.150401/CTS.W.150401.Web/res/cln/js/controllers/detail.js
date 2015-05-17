// MainCtrl
ctrls.controller('ProductDetailCtrl', function ($scope, $http, $routeParams, $location) {
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
            url: '/ajx/cln/detail.aspx/InitLayout',
            data: { ItemSearchName: $routeParams.ItemSearchName },
            success: function (data) {
                // Gán đối tượng data
                $scope.data = data;
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