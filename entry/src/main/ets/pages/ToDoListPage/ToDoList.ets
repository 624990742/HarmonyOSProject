import TodoSth from '../../common/TodoSth'
import { ListData, ObjectData } from '../../ViewModel/taskListDataViewModel';

@Entry
@Component
export  default  struct TodoList {
  // 所有的列表
  @State myLists:Array<ObjectData> = []
  // 当前要渲染的列表
  @State curList:Array<ObjectData> = []

  @State inputText:string = ""

  aboutToAppear(){
    this.myLists = new ListData().getLists()
    this.curList = this.myLists;
  }



  build() {

    Stack({alignContent:Alignment.Bottom}){
      Row() {
        Column(){
          Text("任务列表")
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
            .margin({top:20})

          Row({space:20}){
            Button("全部").backgroundColor(Color.Red)
              .onClick(() =>{
                this.curList = this.myLists
              })
            Button("已完成").backgroundColor(Color.Blue)
              .onClick(() =>{
                this.curList = this.myLists.filter(item => item.status)
              })
            Button("未完成").backgroundColor(Color.Blue)
              .onClick(() =>{
                this.curList = this.myLists.filter(item => !item.status)
              })
          }.margin({top:20})

          TodoSth({lists:$curList})


        }
        .width('100%')
        .height('100%')
      }
      .height('100%')
      // .backgroundColor(0xcccccc)
      .backgroundColor(Color.Green)
      .alignItems(VerticalAlign.Top)


      //   输入框
      Row(){
        TextInput({placeholder:"请输入待办任务",text:this.inputText})
          .width('60%')
          .height(50)
          .backgroundColor(Color.White)
          .onChange( value =>{
            this.inputText = value
          })

        Button("添加")
          .width('30%')
          .height(50)
          .margin({left:20})
          .onClick(() =>{
            console.info('click',this.inputText)

            if(this.inputText){
              this.myLists.push(new ObjectData(this.myLists.length+1,this.inputText,false))
              this.inputText = ""
            }


          })
      }
      .margin({bottom:20})
    }

  }
}