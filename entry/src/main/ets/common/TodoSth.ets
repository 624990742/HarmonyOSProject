import {ObjectData,ListData} from '../viewmodel/taskListDataViewModel'

@Component
export  default  struct TodoSth{

  @Link lists:Array<ObjectData>;


  scroller : Scroller = new Scroller()

  @Builder
  taskItem(item:ObjectData){
    Row(){
      Toggle({type:ToggleType.Checkbox,isOn:item.status})
        .onChange( event =>{
          const curTodo = this.lists.find(todo => todo.id == item.id)
          if (curTodo) {
            curTodo.status = event;
          }
        })

      Text(item.task)
        .margin({left:20})
    }
    .width('90%')
    .height(50)
    .padding({left:20})
    .margin({top:20})
    .backgroundColor(Color.White)
    .borderRadius(20)

  }


  build(){

    Scroll(this.scroller){
      Column(){
        ForEach(this.lists,(item: ObjectData) => {
          this.taskItem(item)
        }, (item: ObjectData) => item.id.toString())

      }

    }
    .scrollable(ScrollDirection.Vertical)  //设置滚动方向为垂直滚动
    .scrollBar(BarState.On)
    .scrollBarColor(Color.Gray)
    .scrollBarWidth(10)
    .edgeEffect(EdgeEffect.Spring)
    .margin({bottom:200})

  }
}