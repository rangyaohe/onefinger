<template>
  <a-layout id="app-layout-sider">
    <a-layout-sider
      v-model="collapsed"
      theme="light"
      class="layout-sider"
    >
      <a-menu class="menu-item" theme="light" mode="inline" :default-selected-keys="['menu_1']" @click="menuHandle">
        <a-menu-item v-for="(menuInfo, index) in menu" :key="index">
          <a-icon :type="menuInfo.icon" />
          <p class="menuInfo-name">{{ menuInfo.title }}</p>
        </a-menu-item>
      </a-menu>
    </a-layout-sider>
    <a-layout>
      <a-layout-content class="layout-content">
        <router-view />
      </a-layout-content>
    </a-layout>
  </a-layout>
</template>
<script>
export default {
  name: 'Home',
  data() {
    return {
      collapsed: true,
      menu: {
        'menu_1' : {
          icon: 'home',
          title: '首页',
          pageName: 'home',
          params: {},
        },
        // 'menu_2' : {
        //   icon: 'home',
        //   title: '功能',
        //   pageName: 'DemoFileIndex',
        //   params: {},
        // },
        // 'menu_2' : {
        //   icon: 'profile',
        //   title: '其它',
        //   pageName: 'OtherIndex',
        //   params: {},
        // }
      }
    };
  },
  created () {},
  mounted () {
    this.menuHandle({key: 'menu_1'})
  },
  methods: {
    menuHandle (item) {
      const linkInfo = this.menu[item.key]
      this.$router.push({ name: linkInfo.pageName, params: linkInfo.params})
    },
  },
};
</script>
<style lang="less" scoped>
// 嵌套
#app-layout-sider {
  height: 100%;
  .logo {
    border-bottom: 1px solid #e8e8e8;
  }
  .pic-logo {
    height: 32px;
    //background: rgba(139, 137, 137, 0.2);
    margin: 10px;
  }
  .layout-sider {
    border-top: 1px solid #e8e8e8;
    border-right: 1px solid #e8e8e8;
        max-width: 140px !important;
    min-width: 140px !important;
    width: 140px !important;
    background-color: #025527;
  }
  .ant-menu{
    background-color: #025527;

  }
  .ant-menu-inline-collapsed{
    width: 140px;
  }
  .menu-item {
    .ant-menu-item {
      background-color: #025527;
      margin-top: 0px;
      margin-bottom: 0px;
      padding: 0 0px !important;
      color: #fff;
    }
  }
  .layout-content {
    //background-color: #fff;
  }
}
.ant-menu-vertical > .ant-menu-item,
 .ant-menu-vertical-left > .ant-menu-item,
  .ant-menu-vertical-right > .ant-menu-item, 
  .ant-menu-inline > .ant-menu-item
{
  height: 75px;
}
.menuInfo-name{
  height: 14px;
  line-height: 14px;
  font-size: 14px;
  padding: 0;
  margin: 0;
  position: relative;
  top: -2px;
}
// .anticon-home{
//   height: auto !important;
// }
</style>
