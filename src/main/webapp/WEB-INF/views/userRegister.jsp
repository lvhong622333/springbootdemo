<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.getContextPath()}/static/css/element-ui.css"/>
    <script type="text/javascript" src="${pageContext.request.getContextPath()}/static/js/vue.js"></script>
    <script type="text/javascript" src="${pageContext.request.getContextPath()}/static/js/vue-resource.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.getContextPath()}/static/js/element-ui.js"></script>
    <style>
        body {
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body background="${pageContext.request.getContextPath()}/static/pic/logon.jpg">
<div id="app">
    <el-form ref="form" :model="form" style="margin-top: 180px;margin-left: 560px">
        <el-form-item>
            <el-input style="width: 300px;"
                      v-model="form.telephone" placeholder="手机号码"></el-input>
        </el-form-item>
        <el-form-item>
            <el-input style="width: 300px;"
                      v-model="form.userName" placeholder="用户名"></el-input>
        </el-form-item>

        <el-form-item>
            <el-input style="width: 300px;"
                      v-model="form.password" placeholder="密码" show-password></el-input>
        </el-form-item>
        <el-form-item>
            <el-input style="width: 300px;"
                      v-model="form.passwordOne" placeholder="再次输入密码" show-password></el-input>
        </el-form-item>
        <el-form-item>
            <el-button type="primary" style="width:300px" @click="onsubmit">注册</el-button>
        </el-form-item>
    </el-form>
</div>
<script>
    new Vue({
        el: '#app',
        data: {
            form: {
                telephone: '',
                userName: '',
                password: '',
                passwordOne: ''
            }
        },
        methods: {
            onsubmit: function () {
                this.$http.post('/urlInfo/onSubmit', {
                    mobile: this.form.telephone,
                    userName: this.form.userName,
                    userPwd: this.form.password,
                    userPwdConfirm:this.form.passwordOne
                }, {emulateJSON: true}).then(function (res) {
                    debugger;
                    if(res.bodyText == '/'){
                        window.location.href = '${pageContext.request.getContextPath()}' + res.bodyText;
                    }else{
                        this.$alert(res.data.msg, '提示', {
                            confirmButtonText: '确定'
                        })
                    }
                }, function (res) {
                    if(res.body.errors.length > 0){
                        this.$alert(res.body.errors[0].defaultMessage, '提示', {
                            confirmButtonText: '确定'
                        })
                    }
                });
            }
        }
    }).$mount('#app')
</script>
</body>
</html>
