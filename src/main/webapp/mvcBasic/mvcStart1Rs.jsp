<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>
Highcharts.chart('container', {
    chart: {
        type: 'area'
    },
    title: {
        text: '장훈이가 수정한 차트'
    },
    subtitle: {
        text: 'Source: in my mind'
    },
    xAxis: {
        categories: ['0시', '4시', '8시', '12시', '16시', '20시', '24시'],
        tickmarkPlacement: 'on',
        title: {
            enabled: false
        }
    },
    yAxis: {
        labels: {
            format: '{value}%'
        },
        title: {
            enabled: false
        }
    },
    tooltip: {
        pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.percentage:.1f}%</b> ({point.y:,.0f} millions)<br/>',
        split: true
    },
    plotOptions: {
        area: {
            stacking: 'percent',
            lineColor: '#ffffff',
            lineWidth: 1,
            marker: {
                lineWidth: 1,
                lineColor: '#ffffff'
            },
            accessibility: {
                pointDescriptionFormatter: function (point) {
                    function round(x) {
                        return Math.round(x * 100) / 100;
                    }
                    return (point.index + 1) + ', ' + point.category + ', ' +
                        point.y + ' millions, ' + round(point.percentage) + '%, ' +
                        point.series.name;
                }
            }
        }
    },
    series: [{
        name: '졸음',
        data: [50, 45, 30, 10, 20, 40, 70]
    }, {
        name: '배고픔',
        data: [0, 20, 40, 60, 30, 10, 25]
    }, {
        name: '피곤함',
        data: [38, 10, 39, 28, 11, 31, 38]
    }, {
        name: '행복함',
        data: [12, 31, 54, 44, 77, 22, 12]
    }]
});