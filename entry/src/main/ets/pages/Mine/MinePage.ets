import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';
import MyWebHtml from '../../View/MyWebHtml';

@Entry
@Component
export  default  struct MainPage {

  localStorage: LocalStorage = new LocalStorage();
  private showWebComponent: boolean = false; // 状态变量，用于控制 MyWebHtml 组件的显示


  constructor() {
    super();
    this.localStorage.set('username','晨仔')
  }

  build() {
    Column() {

      Text(`LocalStorage 中的值：${this.localStorage.get('username')}`)
        .fontSize(20)
        .margin(10)

      // 头部信息
      Row() {
        Image($r('app.media.touxiang')) // 替换为你的头像图片资源路径
          .width(50)
          .height(50)
          .borderRadius(25)
        Column() {
          Text('90后晨仔')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
          Text('微信号：12345678')
            .fontSize(16)
            .fontColor('#888888')
        }
        .margin({ left: 10 })
        .layoutWeight(1)
        Image($r('app.media.tutorial_pic1')) // 替换为状态图标资源路径
          .width(24)
          .height(24)
      }
      .padding({ top: 20, bottom: 20, left: 16, right: 16 })
      .backgroundColor('#FFFFFF')

      // 菜单列表
      List() {
        // 服务
        ListItem() {
          Row() {
            Image($r('app.media.icon'))// 替换为服务图标资源路径
              .margin({left:20})
              .width(24)
              .height(24)


            Text('服务')
              .fontSize(18)
              .margin({ left: 10 })
          }
          .onClick(() => {
            // 跳转到服务页面
            router.pushUrl({ url: 'View/MyWebHtml' });
          })
        }
        .height(56)


        // 收藏
        ListItem() {
          Row() {
            Image($r('app.media.icon')) // 替换为收藏图标资源路径
              .margin({left:20})
              .width(24)
              .height(24)
            Text('收藏')
              .fontSize(18)
              .margin({ left: 10 })
          }
          .onClick(() => {
            // 跳转到收藏页面
            // router.push({
            //   uri: 'pages/collect/collect'
            // })
          })
        }
        .height(56)

        // 朋友圈
        ListItem() {
          Row() {
            Image($r('app.media.icon')) // 替换为朋友圈图标资源路径
              .width(24)
              .height(24)
              .margin({left:20})

            Text('朋友圈')
              .fontSize(18)
              .margin({ left: 10 })
          }
          .onClick(() => {
            // 跳转到朋友圈页面
            // router.push({
            //   uri: 'pages/moments/moments'
            // })
          })
        }
        .height(56)

        // 视频号
        ListItem() {
          Row() {
            Image($r('app.media.icon'))
              .width(24)
              .height(24)
              .margin({left:20})

            Text('视频号')
              .fontSize(18)
              .margin({ left: 10 })
          }
          .onClick(() => {
            // 跳转到视频号页面
            // router.push({
            //   uri: 'pages/video/video'
            // })
          })
        }
        .height(56)

        // 卡包
        ListItem() {
          Row() {
            Image($r('app.media.icon')) // 替换为卡包图标资源路径
              .width(24)
              .height(24)
              .margin({left:20})

            Text('卡包')
              .fontSize(18)
              .margin({ left: 10 })
          }
          .onClick(() => {
            // 跳转到卡包页面
            // router.push({
            //   uri: 'pages/card/card'
            // })
          })
        }
        .height(56)

        // 表情
        ListItem() {
          Row() {
            Image($r('app.media.icon'))
              .width(24)
              .height(24)
              .margin({left:20})

            Text('表情')
              .fontSize(18)
              .margin({ left: 10 })
          }
          .onClick(() => {
            // 跳转到表情页面
            // router.push({
            //   uri: 'pages/emoji/emoji'
            // })
          })
        }
        .height(56)

        // 设置
        ListItem() {
          Row() {
            Image($r('app.media.icon'))
              .width(24)
              .height(24)
              .margin({left:20})

            Text('设置')
              .fontSize(18)
              .margin({ left: 10 })
          }
          .onClick(() => {
            // 跳转到设置页面
            // router.push({
            //   uri: 'pages/settings/settings'
            // })
          })
        }
        .height(56)

        if (this.showWebComponent){
          MyWebHtml();
        }
      }
      .divider({ strokeWidth: 1, color: '#FFFFFF' })
      .backgroundColor('#FFFFFF')
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F5F5')
  }
}