(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-b014e5c4"],{"229c":function(t,n,e){t.exports=e.p+"img/Windows.1759e8d7.png"},"43f2":function(t,n,e){t.exports=e.p+"img/browser.fd44683f.png"},"6b70":function(t,n,e){t.exports=e.p+"img/submit.7f57d5aa.png"},"6d23":function(t,n,e){t.exports=e.p+"img/Vector.9ee243e2.png"},"77b8":function(t,n,e){"use strict";e.r(n);var i=function(){var t=this,n=t.$createElement,e=t._self._c||n;return e("div",{staticClass:"home-pg-work"},[e("ul",{staticClass:"home-ul"},t._l(t.menuList,(function(n,i){return e("li",{key:i,on:{click:function(e){return t.liClick(n,i)}}},[e("img",{attrs:{src:n.icon,alt:""}}),e("p",[t._v(t._s(n.name))])])})),0)])},c=[],r=e("b775"),s={name:"Home",data:function(){return{menuList:[{name:"打印机安装",scriptName:"",scriptUrl:"",icon:e("9926")},{name:"清除缓存垃圾",scriptName:"DiskClean.bat",scriptUrl:"",icon:e("6d23")},{name:"浏览器清除缓存",scriptName:"ChromeCache_Delete.bat",scriptUrl:"",icon:e("43f2")},{name:"Office激活",scriptName:"officeospp.bat",scriptUrl:"",icon:e("9926")},{name:"Windows激活",scriptName:"win10.bat",scriptUrl:"",icon:e("229c")},{name:"一键提单",scriptName:"",scriptUrl:"",icon:e("6b70")}]}},methods:{installPrinter:function(t){var n=this;Object(r["b"])({url:"/api/v1/example/openSoftware",method:"post",data:{id:t}}).then((function(t){if(0!==t.code)return n.$message.info(t.msg),!1})).catch((function(t){console.log("err:",t)}))},liClick:function(t,n){switch(n){case 0:this.$router.push({path:"/printer-list"});break;default:t.scriptName&&this.installPrinter(t.scriptName);break}}}},a=s,o=(e("abc9"),e("2877")),p=Object(o["a"])(a,i,c,!1,null,"6876f43f",null);n["default"]=p.exports},9926:function(t,n,e){t.exports=e.p+"img/printer.f39ca1c4.png"},"9d74":function(t,n,e){},abc9:function(t,n,e){"use strict";e("9d74")}}]);
//# sourceMappingURL=chunk-b014e5c4.8b744af4.js.map