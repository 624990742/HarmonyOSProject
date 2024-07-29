 import  CommonConstants from '../common/constant/CommonConstants';
@Component
 export  default  struct ToDoItem {
  private  content: string = '';
  @State isComplete: boolean = false;
  //封装一个可以重复创建Image的方法
  @Builder labelIcon(icon: Resource) {

    Image(icon)
      .objectFit(ImageFit.Contain)
      .width($r('app.float.checkbox_width'))
      .height($r('app.float.checkbox_width'))
      .margin($r('app.float.checkbox_margin'))
  }


  build() {
    Row(){
      if (this.isComplete){
        this.labelIcon($r('app.media.ic_ok'));
      } else {
        this.labelIcon($r('app.media.ic_default'));
      }

      Text(this.content)
        .fontSize($r('app.float.item_font_size'))
        .fontWeight(CommonConstants.FONT_WEIGHT)
        .opacity(this.isComplete ? CommonConstants.OPACITY_COMPLETED : CommonConstants.OPACITY_DEFAULT)
        .decoration({type: this.isComplete ? TextDecorationType.LineThrough : TextDecorationType.None})
    }
    .borderRadius(CommonConstants.BORDER_RADIUS)
    .background()
    .backgroundColor($r('app.color.start_window_background'))
    .width(CommonConstants.LIST_DEFAULT_WIDTH)
    .height($r('app.float.list_item_height'))
    .onClick(() => {
      this.isComplete = !this.isComplete;
    })
  }
}