import ArticleClass from '../Model/ArticleClass';


/**
 *@Prop装饰器：父子单向同步
 * @Prop装饰的变量可以和父组件建立单向的同步关系。@Prop装饰的变量是可变的，但是变化不会同步回其父组件。
 */

@Component
export  default  struct  TutorialItem {

  @Prop tutorialItem: ArticleClass;
  // private title: string = 'Step1 快速入门介绍'
  // private brief: string = '本篇教程实现了快速入门——一个用于了解和学习HarmonyOS的应用程序 。';
  build() {
    Row(){
      Column(){
        // Text(this.title)
        Text(this.tutorialItem.title)
          .height(19)
          .width('100%')
          .fontSize(14)
          .textAlign(TextAlign.Start)
          .textOverflow({ overflow: TextOverflow.Ellipsis})
          .maxLines(1)
          .fontWeight(400)
          .margin({top: 4})

        // Text(this.brief)
        Text(this.tutorialItem.brief)
          .height(32)
          .width('100%')
          .fontSize(12)
          .textAlign(TextAlign.Start)
          .textOverflow({ overflow: TextOverflow.Ellipsis})
          .maxLines(2)
          .fontWeight(400)
          .fontColor('rgba(0, 0, 0, 0.6)')
          .margin({ top: 5 })
      }
      .height('100%')
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Start)
      .margin({ right: 12})

      // Image($r('app.media.enablement_pic1'))
      Image(this.tutorialItem.imageSrc)
      .height(64)
        .width(64)
        .objectFit(ImageFit.Cover)
        .borderRadius(16)
    }
    .width('100%')
    .height(88)
    .borderRadius(16)
    .backgroundColor(Color.White)
    .padding(12)
    .alignItems(VerticalAlign.Top)
  }
}
