
import  ListPageDataModel from '../ViewModel/ListPageDataModel';
import CommonConstants from  '../common/constant/CommonConstants';
import ToDoItem from '../view/ToDoItem';



@Entry
@Component
struct  ToDoListPage {
  private totalTasks: Array<string> = [];
  /**
   * aboutToAppear函数在创建自定义组件的新实例后执行，然后再执行其build（）函数。
   */
  aboutToAppear(): void {
   this.totalTasks = ListPageDataModel.getData();
   console.log('============================');
   console.log(this.totalTasks.length.toString());
  }

  build() {
    Column({ space: CommonConstants.COLUMN_SPACE }) {
      Text($r('app.string.page_title'))
        .fontSize($r('app.float.title_font_size'))
        .fontWeight(FontWeight.Bold)
        .lineHeight($r('app.float.title_font_height'))
        .width(CommonConstants.TITLE_WIDTH)
        .margin({
          top: $r('app.float.title_margin_top'),
          bottom: $r('app.float.title_margin_bottom')
        })
        .textAlign(TextAlign.Center)

      ForEach(this.totalTasks, (item: string) => {
        ToDoItem({ content: item })
      }, (item: string) => JSON.stringify(item))

    }
    .width(CommonConstants.FULL_LENGTH)
    .height(CommonConstants.FULL_LENGTH)
    .backgroundColor($r('app.color.page_background'))
   }

  }