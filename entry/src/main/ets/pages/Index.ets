import { router } from '@kit.ArkUI'
import { BusinessError } from '@kit.BasicServicesKit'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State tipMsg: string = '卷王回归';

  build() {
    RelativeContainer() {

      Row(){
        Column(){

          Text(this.message)
            .id('HelloWorldId')
            .fontSize(49)
            .fontStyle(FontStyle.Normal)
            .fontWeight(FontWeight.Bold)


          Button(){
            Text('下一个')
              .fontSize(30)
              .fontWeight(FontWeight.Bold)
          }
          .type(ButtonType.Capsule)
          .margin({top: 20})
          .backgroundColor('#0D9FFB')
          // .alignRules({
          //   center: { anchor: '__container__', align: VerticalAlign.Center },
          //   middle: { anchor: '__container__', align: HorizontalAlign.Center }
          // })
          // .alignRules({
          //   top: { anchor: 'HelloWorldId', align: VerticalAlign.Center }, // 顶部居中
          //   left: { anchor: '__container__', align: HorizontalAlign.Center } // 左侧居中
          // })
          .width('40%')
          .height('5%')
          .id('NextId')
          .onClick(()=> {
            console.info('点击‘下一步’按钮成功')
            router.pushUrl({url: 'pages/Second'}).then(()=> {
              console.info('成功跳转到第二页')
            }).catch((err: BusinessError) => {
              console.error(`Failed to jump to the second page. Code is ${err.code}, message is ${err.message}`)
            })
          })

          Text(this.tipMsg)
            .id('tipMsgId')
            .fontSize(30)
            .fontStyle(FontStyle.Normal)
            .fontWeight(FontWeight.Bold)
            .fontColor('red')
            .margin({top: 20})
            // .alignRules({
            //   top: { anchor: 'NextId', align: VerticalAlign.Top },
            //   center: { anchor: '__container__', align: VerticalAlign.Center },
            //   middle: { anchor: '__container__', align: HorizontalAlign.Center }
            // })
        }
        .width('100%')
      }
      .height('100%')
    }
    .height('100%')
    .width('100%')
  }
}