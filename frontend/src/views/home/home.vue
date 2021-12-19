<template>
    <div class="home-pg-work">
        <ul class="home-ul">
            <li v-for="(item,index) in menuList" :key="index" @click="liClick(item,index)">
                <img :src="item.icon" alt="">
                <p>{{item.name}}</p>
            </li>
        </ul>
    </div>
</template>
<script >
import request from '@/utils/request'
export default {
  name: 'Home',
  data(){
      return{
          menuList:[
              {
                  name:"打印机安装",
                  scriptName:"",
                  scriptUrl:"",
                  icon:require("../../assets/printer.png")
              },{
                  name:"清除缓存垃圾",
                  scriptName:"DiskClean.bat",
                  scriptUrl:"",
                  icon:require("../../assets/Vector.png")
              },{
                  name:"浏览器清除缓存",
                  scriptName:"ChromeCache_Delete.bat",
                  scriptUrl:"",
                  icon:require("../../assets/browser.png")
              },{
                  name:"Office激活",
                  scriptName:"officeospp.bat",
                  scriptUrl:"",
                  icon:require("../../assets/printer.png")
              },{
                  name:"Windows激活",
                  scriptName:"win10.bat",
                  scriptUrl:"",
                  icon:require("../../assets/Windows.png")
              },{
                  name:"一键提单",
                  scriptName:"",
                  scriptUrl:"",
                  icon:require("../../assets/submit.png")
              }
          ]
      }
  },
  methods:{
      installPrinter(id){
        request({
            url:"/api/v1/example/openSoftware",
            method: 'post',
            data: {id}
        }).then(res =>{
            if (res.code !== 0) {
                this.$message.info(res.msg)
                return false
            }
        }).catch(err => {
			console.log('err:', err)
		})
      },
      liClick(item,index){
          switch (index) {
              case 0:
                  this.$router.push({path:"/printer-list"})
                  break;
              default:
                if(item.scriptName){
                    this.installPrinter(item.scriptName)
                }
                  break;
          }
          
      }
  }
}
</script>
<style scoped>
ul li { list-style: none; padding: 0px; margin: 0px;}
.home-pg-work{
    width: 100%;
    height: 100%;
    
}
.home-ul{
    padding: 100px 20px;
    background-image:url("../../assets/bg.png") ;
    background-size: 100% 100%;
}
.home-ul::after{
    display: block;
    clear: both;
    content: "";
}
.home-ul li{
    float: left;
    background-color: #fff;
    width: 15vw;
    min-width: 240px;
    height: 15vw;
    min-height: 280px;
    border-radius: 20px;
    color: #8098b1;
    margin-left: 80px;
    margin-top: 80px;
    text-align: center;
    font-size: 22px;
    cursor: pointer;
}
.home-ul li img{
    width: 100px;
    margin-top: 64px;
    margin-bottom: 60px;
}
</style>