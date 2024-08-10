import ArticleClass from '../Model/ArticleClass';
import TutorialItem from '../View/TutorialItem';
import TutorialViewDataModel from '../ViewModel/TutorialViewDataModel';
@Component
export  default struct TutorialView {
  private tutorialList: Array<ArticleClass> = [];
  /**
   * aboutToAppear函数在创建自定义组件的新实例后执行，然后再执行其build（）函数。
   */
  aboutToAppear(): void {
    this.tutorialList = TutorialViewDataModel.getData();
  }


  build() {
    Column() {
      Text('入门教程')
        .fontColor('#182431')
        .fontSize(16)
        .fontWeight(500)
        .fontFamily('HarmonyHeiTi-medium')
        .textAlign(TextAlign.Start)
        .padding({ left: 16 })
        .margin({ bottom: 8.5 })
      List({ space: 12 }) {
        ForEach(this.tutorialList, (item: ArticleClass) => {
          ListItem() {
            TutorialItem({ tutorialItem: item })
          }
        }, (item: ArticleClass) => item.id)
      }
      .scrollBar(BarState.Off)
      .padding({ left: 16, right: 16 })
    }
    .margin({ top: 18 })
    .alignItems(HorizontalAlign.Start)
  }
}