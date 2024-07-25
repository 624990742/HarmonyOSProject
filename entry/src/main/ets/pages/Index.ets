@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State tipMsg: string = '卷王回归';

  build() {
    RelativeContainer() {


      Text(this.message)
        .id('HelloWorldId')
        .fontSize(49)
        .fontStyle(FontStyle.Normal)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          // : { anchor: 'tipMsgId', align: HorizontalAlign.Start },
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })

        Button(){
        Text('下一个')
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .margin({top: 100})
        .backgroundColor('#0D9FFB')
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
          //上边与父布局顶部对齐
          // top: {anchor: "__container__", align: VerticalAlign.Center},
          // //右边与父布局右边对齐
          // right: {anchor: "__container__", align: HorizontalAlign.Center}
        })
        .width('40%')
        .height('5%')
        .id('NextId')



      Text(this.tipMsg)
        .id('tipMsgId')
        .fontSize(30)
        .fontStyle(FontStyle.Normal)
        .fontWeight(FontWeight.Bold)
        .fontColor('red')
        .alignRules({
          top: { anchor: 'NextId', align: VerticalAlign.Top },
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })


    }
    .height('100%')
    .width('100%')
  }
}