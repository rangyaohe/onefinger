(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-fe0c189e"],{"08b5":function(t,e,a){"use strict";a.r(e);var n=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{attrs:{id:"app-demo-extension"}},[t._m(0),a("div",{staticClass:"one-block-2"},[a("a-upload-dragger",{attrs:{name:"file",multiple:!0,action:t.action_url},on:{change:t.handleChange}},[a("p",{staticClass:"ant-upload-drag-icon"},[a("a-icon",{attrs:{type:"inbox"}})],1),a("p",{staticClass:"ant-upload-text"},[t._v(" Click or drag file to this area to upload ")]),a("p",{staticClass:"ant-upload-hint"})])],1),a("div",{staticClass:"one-block-1"},[t._v(" 2. chrome扩展商店（crx下载） ")]),a("div",{staticClass:"one-block-2"},[a("a-space",[t._v(" 极简插件：https://chrome.zzzmh.cn/ ")])],1)])},o=[function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"one-block-1"},[a("span",[t._v(" 1. 上传扩展程序（crx文件格式） ")])])}],i=(a("b0c0"),{data:function(){return{action_url:"/api/v1/example/uploadExtension"}},mounted:function(){this.init()},methods:{init:function(){},handleChange:function(t){var e=t.file.status;if("uploading"!==e&&console.log(t.file),"done"===e){var a=t.file.response;console.log("uploadRes:",a)}else"error"===e&&this.$message.error("".concat(t.file.name," file upload failed."))}}}),s=i,l=(a("469e"),a("2877")),c=Object(l["a"])(s,n,o,!1,null,"69e95420",null);e["default"]=c.exports},"379f":function(t,e,a){},"469e":function(t,e,a){"use strict";a("379f")}}]);
//# sourceMappingURL=chunk-fe0c189e.7bec6119.js.map