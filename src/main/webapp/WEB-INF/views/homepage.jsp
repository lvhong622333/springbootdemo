<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.getContextPath()}/static/css/element-ui.css"/>
    <script type="text/javascript" src="${pageContext.request.getContextPath()}/static/js/vue.js"></script>
    <script type="text/javascript" src="${pageContext.request.getContextPath()}/static/js/vue-resource.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.getContextPath()}/static/js/element-ui.js"></script>
    <style>
        .el-aside {
            color: #333;
        }

        html, body, .el-container, .el-main, .el-header {
            /*设置内部填充为0，几个布局元素之间没有间距*/
            padding: 0px;
            /*外部间距也是如此设置*/
            margin: 0px;
            /*统一设置高度为100%*/
            height: 100%;
        }
    </style>
</head>
<body>
<div id="app">
    <el-container>
        <el-aside width="45px"
                  @mouseenter.native="collapseOpen"
                  @mouseleave.native="collapseClose"
                  id="aside"
        >
            <el-menu :collapse="isCollapse">
                <el-submenu index="1">
                    <template slot="title"><i class="el-icon-menu"></i>菜单</template>
                    <el-submenu index="1-4">
                        <template slot="title">用户管理</template>
                        <el-menu-item index="1-4-1">信息查询</el-menu-item>
                        <el-menu-item index="1-4-1">信息管理</el-menu-item>
                        <el-menu-item index="1-4-1">信息记录</el-menu-item>
                    </el-submenu>
                </el-submenu>
                <el-submenu index="2">
                    <template slot="title"><i class="el-icon-setting"></i>控制面板</template>
                </el-submenu>
            </el-menu>
        </el-aside>

        <el-container style="height: 650px; border: 1px solid #eee">
            <el-header style="text-align: right; font-size: 12px;height: 40px;">
                <div style="margin-top: 10px">
                    <el-dropdown >
                        <span class="el-dropdown-link">
                            王小虎 <i class="el-icon-arrow-down"></i>
                        </span>
                        <el-dropdown-menu slot="dropdown">
                            <el-dropdown-item>个人中心</el-dropdown-item>
                            <el-dropdown-item>账号设置</el-dropdown-item>
                            <el-dropdown-item @click.native="logout">退出</el-dropdown-item>
                        </el-dropdown-menu>
                    </el-dropdown>
                </div>
            </el-header>
            <el-main>
                <el-table :data="tableData" height="530px" stripe style="text-align: center">
                    <el-table-column type="selection" width="60"></el-table-column>
                    <el-table-column type="index" label="序号" width="60"></el-table-column>
                    <el-table-column prop="date" label="用户名" width="150">
                    </el-table-column>
                    <el-table-column prop="name" label="真实姓名" width="150">
                    </el-table-column>
                    <el-table-column prop="address" label="住址" width="350">
                    </el-table-column>
                    <el-table-column prop="iphone" label="手机号" width="200">
                    </el-table-column>
                    <el-table-column prop="sax" label="性别" width="150">
                    </el-table-column>
                </el-table>
                <div style="text-align: center">
                    <el-pagination
                            @size-change="handleSizeChange"
                            @current-change="handleCurrentChange"
                            :current-page="currentPage4"
                            :page-sizes="[100, 200, 300, 400]"
                            :page-size="100"
                            layout="total, sizes, prev, pager, next, jumper"
                            background
                            :total="400">
                    </el-pagination>
                </div>

            </el-main>
            <el-footer style="height: 40px;">
                <div id="appN" style="margin-top: 5px;text-align: center">
                    © 2019-2021 honglv.org.cn 版权所有 备案号：
                    <a href="http://beian.miit.gov.cn/?spm=a3c00.7621333.7y9jhqsfz.110.1813ykNIykNIie" target="_blank"
                       data-spm-anchor-id="a3c00.7621333.7y9jhqsfz.110">苏ICP备19051692号</a>
                </div>
            </el-footer>
        </el-container>

    </el-container>
</div>
<script>
    var hk = new Vue({
        el: '#app',
        data: {
            collapseBtnClick: false,
            isCollapse: true,
            tableData: [{
                id: '1',
                date: '2016-05-03',
                name: '王小虎',
                address: '上海市普陀区金沙江路 1518 弄'
            }, {
                id: '2',
                date: '2016-05-02',
                name: '王小虎',
                address: '上海市普陀区金沙江路 1518 弄'
            }, {
                id: '3',
                date: '2016-05-02',
                name: '王小虎',
                address: '上海市普陀区金沙江路 1518 弄'
            }, {
                id: '1',
                date: '2016-05-03',
                name: '王小虎',
                address: '上海市普陀区金沙江路 1518 弄'
            }, {
                id: '2',
                date: '2016-05-02',
                name: '王小虎',
                address: '上海市普陀区金沙江路 1518 弄'
            }, {
                id: '3',
                date: '2016-05-02',
                name: '王小虎',
                address: '上海市普陀区金沙江路 1518 弄'
            }, {
                id: '1',
                date: '2016-05-03',
                name: '王小虎',
                address: '上海市普陀区金沙江路 1518 弄'
            }, {
                id: '2',
                date: '2016-05-02',
                name: '王小虎',
                address: '上海市普陀区金沙江路 1518 弄'
            }, {
                id: '3',
                date: '2016-05-02',
                name: '王小虎',
                address: '上海市普陀区金沙江路 1518 弄'
            }, {
                id: '1',
                date: '2016-05-03',
                name: '王小虎',
                address: '上海市普陀区金沙江路 1518 弄'
            }, {
                id: '2',
                date: '2016-05-02',
                name: '王小虎',
                address: '上海市普陀区金沙江路 1518 弄'
            }, {
                id: '3',
                date: '2016-05-02',
                name: '王小虎',
                address: '上海市普陀区金沙江路 1518 弄'
            }, {
                id: '1',
                date: '2016-05-03',
                name: '王小虎',
                address: '上海市普陀区金沙江路 1518 弄'
            }, {
                id: '2',
                date: '2016-05-02',
                name: '王小虎',
                address: '上海市普陀区金沙江路 1518 弄'
            }, {
                id: '3',
                date: '2016-05-02',
                name: '王小虎',
                address: '上海市普陀区金沙江路 1518 弄'
            }],
            currentPage4:0
        },
        methods: {
            collapseStatus() {
                this.collapseBtnClick = this.isCollapse;
                this.isCollapse = !this.isCollapse;
            },
            collapseOpen() {
                if (this.collapseBtnClick) return;
                this.isCollapse = false;
                document.getElementById('aside').style.width = "200px";
            },
            collapseClose() {
                if (this.collapseBtnClick) return;
                this.isCollapse = true;
                document.getElementById('aside').style.width = "45px";
            },logout(){
                this.$http.get('/urlInfo/logout').then(function(data){
                    window.location.href = '/urlInfo/';
                },function(res){

                });
            },
            handleSizeChange(val) {
                console.log('每页 ${val} 条');
            },
            handleCurrentChange(val) {
                console.log('当前页: ${val}');
            }
        }
    })

    hk.$mount('#app')
</script>
</body>
</html>
