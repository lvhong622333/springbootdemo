<%@ page contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.getContextPath()}/static/css/element-ui.css"/>
    <script type="text/javascript" src="${pageContext.request.getContextPath()}/static/js/vue.js"></script>
    <script type="text/javascript" src="${pageContext.request.getContextPath()}/static/js/vue-resource.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.getContextPath()}/static/js/element-ui.js"></script>

    <style>
        .el-row {
            margin-bottom: 20px;
        }

        .bg-purple {
            background: #d3dce6;
        }

        .grid-content {
            border-radius: 4px;
            min-height: 36px;
            text-align: center;
            line-height: 36px;
        }

        #app {
            margin-top: 240px;
        }

        body {
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body background="${pageContext.request.getContextPath()}/static/pic/logon.jpg">
<div style="height:auto!important;
 min-height:388px;
 height:auto;">
    <div id="app" class="demo-input-suffix">
        <el-row :gutter="20">
            <el-col :span="8">
                <div class="grid-content"></div>
            </el-col>
            <el-col :span="2">
                <div class="grid-content">用户名</div>
            </el-col>
            <el-col :span="5">
                <el-input v-model="userName" id="userName" placeholder="请输入内容"></el-input>
            </el-col>
            <el-col :span="9">
                <div class="grid-content"></div>
            </el-col>
        </el-row>
        <el-row :gutter="20">
            <el-col :span="8">
                <div class="grid-content"></div>
            </el-col>
            <el-col :span="2">
                <div class="grid-content">密&nbsp;&nbsp;&nbsp;&nbsp;码</div>
            </el-col>
            <el-col :span="5">
                <el-input id="password" v-model="password" placeholder="请输入内容" show-password>
                </el-input>
            </el-col>
            <el-col :span="9">
                <div class="grid-content"></div>
            </el-col>
        </el-row>
        <el-row :gutter="20">
            <el-col :span="10">
                <div class="grid-content"></div>
            </el-col>
            <el-col :span="4">
                <el-button type="primary">登 录</el-button>
                <el-button type="primary">注 册</el-button>
            </el-col>
            <el-col :span="10">
                <div class="grid-content"></div>
            </el-col>
        </el-row>
    </div>
    <div id="appN" style="margin-top: 160px;text-align: center">
        <el-row :gutter="20">
            <el-col :span="9">
                <div class="grid-content"></div>
            </el-col>
            <el-col :span="6">
                © 2019-2021 honglv.org.cn 版权所有 备案号：
                <a href="http://beian.miit.gov.cn/?spm=a3c00.7621333.7y9jhqsfz.110.1813ykNIykNIie" target="_blank"
                   data-spm-anchor-id="a3c00.7621333.7y9jhqsfz.110">苏ICP备19051692号</a>
            </el-col>
            <el-col :span="9">
                <div class="grid-content"></div>
            </el-col>
        </el-row>
    </div>
</div>
<script>
    var hk = new Vue({
        el: '#app',
        data: {
            message: '查询',
            userName: '',
            password: ''
        },
        methods: {
            query: function () {
                //发送get请求
                this.$http.get('/urlInfo/loadInfo').then(function (res) {
                    debugger;
                    document.getElementById('textId').innerHTML = res.bodyText;
                }, function () {
                    console.log('请求失败处理');
                });
            }
        }
    })

    hk.$mount('#app')

    new Vue({
        el: '#appN',
        data: {}
    }).$mount('#appN')

</script>

</body>
</html>
