<template>
    <div class="printer-list-page">
        <ul class="home-ul">
            <li v-for="(item,index) in menuList" :key="index" @click="installPrinter(item)">
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
                  name:"安装人工智能小镇2号楼5楼打印机",
                  scriptName:"(老园区)setup2#5lkonica.bat"
              },
              {
                  name:"安装人工智能小镇2号楼9楼打印机",
                  scriptName:"(老园区)setup2#9lkonica.bat"
              },
              {
                  name:"安装新园区主楼13楼打印机",
                  scriptName:"setup1#13Lkonica.bat"
              },
              {
                  name:"安装新园区主楼14楼打印机",
                  scriptName:"setup1#14Lkonica.bat"
              },
              {
                  name:"安装新园区主楼15楼打印机",
                  scriptName:"setup1#15Lkonica.bat"
              },
              {
                  name:"安装新园区主楼16楼打印机",
                  scriptName:"setup1#16Lkonica.bat"
              },
              {
                  name:"安装新园区2号楼4楼打印机",
                  scriptName:"setup2#4Lkonica.bat"
              },
              {
                  name:"安装新园区2号楼B2楼打印机",
                  scriptName:"setup2#B2Lkonica.bat"
              },
              {
                  name:"安装新园区4号楼B4楼打印机",
                  scriptName:"setup4#B4Lkonica.bat"
              },
              {
                  name:"安装新园区4号楼C4楼打印机",
                  scriptName:"setup4#C4Lkonica.bat"
              },
              {
                  name:"安装新园区4号楼C526楼打印机",
                  scriptName:"setup4#C526konica.bat"
              },
              {
                  name:"安装新园区6号楼4楼打印机",
                  scriptName:"setup6#4Lkonica.bat"
              },
              {
                  name:"安装新园区7号楼4楼打印机",
                  scriptName:"setup7#4Lkonica.bat"
              },
              {
                  name:"安装新园区8号楼1楼打印机",
                  scriptName:"setup8#1Lkonica.bat"
              },
              {
                  name:"安装新园区8号楼2楼打印机",
                  scriptName:"setup8#2Lkonica.bat"
              },
              {
                  name:"安装新园区8号楼A213打印机",
                  scriptName:"setup8#A213konica.bat"
              },
              {
                  name:"安装新园区8号楼3楼打印机",
                  scriptName:"setup8#3Lkonica.bat"
              },
              {
                  name:"安装新园区8号楼A3楼打印机",
                  scriptName:"setup8#A3Lkonica.bat"
              },
              {
                  name:"安装新园区8号楼4楼打印机",
                  scriptName:"setup8#4L403konica.bat"
              },
              {
                  name:"安装新园区8号楼4楼打印机",
                  scriptName:"setup8#5Lkonica.bat"
              },
              {
                  name:"安装新园区11号楼2楼打印机",
                  scriptName:"setup11#2Lkonica.bat"
              },
              {
                  name:"安装新园区11号楼5楼打印机",
                  scriptName:"setup11#5Lkonica.bat"
              }
          ]
      }
  },
  methods:{
      installPrinter(item){
        request({
            url:"/api/v1/example/openSoftware",
            method: 'post',
            data: {id:item.scriptName}
        }).then(res =>{
            if (res.code !== 0) {
                this.$message.info(res.msg)
                return false
            }
        }).catch(err => {
			console.log('err:', err)
		})
      }
  }
}
  </script>
  
<style scoped>
ul li { padding: 0px; margin: 0px;}
.home-ul{
    padding-top: 40px;
    background-color: #fff;
}
.home-ul li{
    text-align: left;
    line-height: 30px;
    cursor: pointer;
    padding:  10px;
    /* border-bottom: 1px solid #999; */
}
</style>