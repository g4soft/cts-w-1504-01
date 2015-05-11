// IndexCtrl
ctrls.controller('IndexCtrl', function ($scope, $http, $routeParams) {
    // Định nghĩa biến toàn cục
    $scope.data = {};
    $scope.strings = {};
    $scope.style = {};
    $scope.variable = {};
    // Gán giá trị init
    /* Định nghĩa phương thức xử lý */
    // Xử lý lấy chuỗi resource
    $scope.getStrings = function () {
        $pc(function () {
            $scope.strings = {
//                NewItems: $nm('CLN.INDEX.NewItems'),
//                ShowLargeImage: $nm('CLN.INDEX.ShowLargeImage')
            };
        });
    };
    // Xử lý init
    $scope.init = function () {
        $pc({
            http: $http,
            url: '/ajx/cln/index.aspx/InitLayout',
            data: {},
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
    // Xử lý load slide
    $scope.$on('slidesLoaded', function (e) {
        // Flexslider
        $('#slMain').flexslider({
            slideshowSpeed: 3000,
            controlsContainer: '.flexslider'
        });
    });
    // Xử lý load new item
    $scope.$on('newItemsLoaded', function (e) {
        // Colorbox (error: device)
        $('.lightbox').colorbox({ rel: 'lightbox', photo: true });
    });
});