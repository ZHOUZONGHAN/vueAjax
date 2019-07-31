<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js/vue.js"></script>
  	<script src="https://cdn.staticfile.org/vue-resource/1.5.1/vue-resource.min.js"></script>
  </head>
  
  <body>
    <div id="app">
    	<input type="text" name="username" @blur.prevent="check" ref="username" />
<!--     	<input type="text" name="username" @blur.prevent="check" v-model="username" /> -->
    </div>
  </body>
  <script type="text/javascript">
  	var vm = new Vue({
  		el:"#app",
  		methods:{
  			check:function(){
//   				alert(this.$refs.username.value);
// //   				alert(this.username);
// 				this.$http.get('checkusername',{params:{username:this.$refs.username}}).then(function(res){
// 					//.body显示内容  没有则显示object对象
// 					alert(res.body);
// 				}),function(){
// 					alert("请求失败");
// 				}
				this.$http.post('checkusername',{params:{username:this.$refs.username.value},{emulateJSON:true}}).then(function(res){
					//.body显示内容  没有则显示object对象
					alert(res.body);
				}),function(){
					alert("请求失败");
				}
  			}
  		}
  	})
  </script>
</html>
