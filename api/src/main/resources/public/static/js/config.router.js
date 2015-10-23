'use strict';

/**
 * Config for the router
 */
angular.module('app')
  .run(
    [          '$rootScope', '$state', '$stateParams',
      function ($rootScope,   $state,   $stateParams) {
          $rootScope.$state = $state;
          $rootScope.$stateParams = $stateParams;        
      }
    ]
  )
  .config(
    [          '$stateProvider', '$urlRouterProvider', 'JQ_CONFIG', 
      function ($stateProvider,   $urlRouterProvider, JQ_CONFIG) {
          
          $urlRouterProvider
              .otherwise('/app/experiment_booking');
          $stateProvider
              .state('app', {
                  abstract: true,
                  url: '/app',
                  templateUrl: '/static/tpl/app.html'
              })

              .state('app.experiment_booking', {
                  url: '/experiment_booking',
                  templateUrl: '/static/page/experiment_booking/index.html'
              })

              .state('app.my_booking', {
                  abstract: true,
                  url: '/my_booking',
                  template: '<div ui-view class="fade-in-up"></div>'
              })
              .state('app.my_booking.index', {
                  url: '/my_booking/index',
                  templateUrl: '/static/page/my_booking/index.html'
              })

              .state('app.my_grade', {
                  abstract: true,
                  url: '/my_grade',
                  template: '<div ui-view class="fade-in-up"></div>'
              })
              .state('app.my_grade.index', {
                  url: '/my_grade/index',
                  templateUrl: '/static/page/my_grade/index.html'
              })



              .state('app.ui', {
                  url: '/ui',
                  template: '<div ui-view class="fade-in-up"></div>'
              })
              .state('app.ui.toaster', {
                  url: '/toaster',
                  templateUrl: '/static/page/ui_toaster.html',
                  resolve: {
                      deps: ['$ocLazyLoad',
                          function( $ocLazyLoad){
                              return $ocLazyLoad.load('toaster').then(
                                  function(){
                                      return $ocLazyLoad.load('/static/js/controllers/toaster.js');
                                  }
                              );
                          }]
                  }
              })

              .state('access', {
                  abstract: true,
                  url: '/access',
                  templateUrl: '/static/tpl/access.html'
              })
              .state('access.404', {
                  url: '/404',
                  templateUrl: '/static/tpl/404.html'
              })


      }
    ]
  );
