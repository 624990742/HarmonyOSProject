import { router } from '@kit.ArkUI'
import { BusinessError } from '@kit.BasicServicesKit'
@Entry
@Component
struct Second {
@State message: string = '我要回去'
  build() {
  Row(){
    Column(){
      Text(this.message)
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
      Button(){
        Text('返回')
          .fontSize(25)
          .fontWeight(FontWeight.Bold)
      }
      .type(ButtonType.Capsule)
      .margin({
        top: 20
      })
      .backgroundColor('#0D9FFB')
      .width('40%')
      .height('5%')
      .onClick(()=> {
        console.info('成功点击返回按钮')
        try {
          // 返回第一页
          router.back()
          console.info('Succeeded in returning to the first page.')
        } catch (err) {
          let code = (err as BusinessError).code;
          let message = (err as BusinessError).message;
          console.error(`Failed to return to the first page. Code is ${code}, message is ${message}`)
        }

      })
    }
    .width('100%')
  }
  .height('100%')
  }
}