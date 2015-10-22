/**
 * Created by lishuang on 2015/7/11.
 */
'use strict';



/* Filters */
// 将时间戳转换成时间的过滤器。
angular.module('app')
    .filter('simpleDate', function(TimeService) {

        //传入的参数既可以是一个整形的timestamp，也可以是一个yyyy-MM-dd或者yyyy-MM-ddTHH:mm格式的字符串
        return function(params) {
            return TimeService.str2simpleDate(params);
        }
    })
    .filter('simpleDateTime', function(TimeService) {
        //传入的参数既可以是一个整形的timestamp，也可以是一个yyyy-MM-dd或者yyyy-MM-ddTHH:mm格式的字符串
        return function(params) {
            return TimeService.str2simpleDateTime(params);
        }
    })
    .filter('simpleTime', function(TimeService) {
        //传入的参数既可以是一个整形的timestamp，也可以是一个yyyy-MM-dd或者yyyy-MM-ddTHH:mm格式的字符串
        return function(params) {
            return TimeService.str2simpleTime(params);
        }
    })
    .filter('competitionTypeNameFilter', function() {

        return function(competitionType) {
            if(competitionType=="INVITATION"){
                return "邀请赛";
            }else if(competitionType=="SNATCH"){
                return "抢夺赛";
            }else if(competitionType=="NORMAL"){
                return "常规赛";
            }else if(competitionType=="ALL"){
                return "所有类型";
            }else{
                return "未知类型";
            }
        }
    })
    .filter('competitionTypeClassFilter', function() {

        return function(competitionType) {
            //console.log(competitionType);
            if(competitionType=="INVITATION"){
                return "info";
            }else if(competitionType=="SNATCH"){
                return "primary";
            }else if(competitionType=="NORMAL"){
                return "success";
            }else if(competitionType=="ALL"){
                return "dark";
            }else{
                return "未知类型";
            }
        }
    })
    .filter('statusNameFilter', function() {

        return function(status) {
            if(status=="NEW"){
                return "新建";
            }else if(status=="OK"){
                return "正常";
            }else if(status=="DISABLED"){
                return "被禁用";
            }else if(status=="DELETED"){
                return "删除";
            }else if(status=="ALL"){
                return "所有状态";
            }else if(status=="WAITING"){
                return "等待支付";
            }else{
                return "未知状态";
            }
        }
    })
    .filter('statusClassFilter', function() {

        return function(status) {
            //console.log(competitionState);
            if(status=="OK"){
                return "success";
            }else if(status=="DISABLED"){
                return "warning";
            }else if(status=="DELETED"){
                return "danger";
            }else if(status=="NEW"){
                return "primary";
            }else if(status=="WAITING"){
                return "danger";
            }else if(status=="ALL"){
                return "dark";
            }
        }
    })
;
