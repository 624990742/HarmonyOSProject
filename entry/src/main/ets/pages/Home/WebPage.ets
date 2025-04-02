import { webview } from '@kit.ArkWeb';
import { router } from '@kit.ArkUI';

@Entry
@Component
struct WebComponent {
  webviewController: webview.WebviewController = new webview.WebviewController();

  build() {
    Column(){

      Button('返回')
        .type(ButtonType.Capsule)
        .margin({ top: 20 })
        .backgroundColor('#0D9FFB')
        .width('40%')
        .height('5%')
        .onClick(()=> {
        router.back()
      })

      Button('加载Url')
        .type(ButtonType.Capsule)
        .margin({ top: 20 })
        .backgroundColor('#0D9FFB')
        .width('40%')
        .height('5%')
        .onClick(() => {
        try {
          // 点击按钮时，通过loadUrl，跳转到https://cn.devecostudio.huawei.com
          this.webviewController.loadUrl('https://cn.devecostudio.huawei.com');
        } catch (error){
         console.log(error.msg);
        }
      })


      Button('loadData')
        .type(ButtonType.Capsule)
        .margin({ top: 20 })
        .backgroundColor('#0D9FFB')
        .width('40%')
        .height('5%')
        .onClick(() => {
          try {
            // 点击按钮时，通过loadUrl，跳转到https://cn.devecostudio.huawei.com
            // this.webviewController.loadUrl('https://cn.devecostudio.huawei.com');
            // 点击按钮时，通过loadUrl，跳转到local1.html
            this.webviewController.loadUrl($rawfile("userInfo.html"));
          } catch (error){
            console.log(error);
          }
        })

      // 组件创建时，加载网络网址https://www.baidu.com/
      // Web({ src: 'https://www.baidu.com/', controller: this.webviewController })

      // 组件创建时，通过$rawfile加载本地文件local.html
      Web({ src: $rawfile("userInfo.html"), controller: this.webviewController })

    }



  }



}