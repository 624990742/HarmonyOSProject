

@ComponentV2
export  default   struct CustomNavgation {
  private arr: number[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  @Param currentIndex: number = 0
  @Local searchKeyword: string = '';///存储关键字

  @Builder NavigationTitle() {
    Column() {
      Text('发现')
        .fontColor('#182431')
        .fontSize(30)
        .lineHeight(41)
        .fontWeight(700)
        .margin({left: 10})

      Text('永远要用心去发现世界的美！')
        .fontColor('#182431')
        .fontSize(14)
        .lineHeight(19)
        .opacity(0.4)
        .margin({left: 10, top: 2, bottom: 20 })

    }.alignItems(HorizontalAlign.Start)
  }

  @Builder NavigationMenus() {
    Row() {
      Image($r("app.media.touxiang"))
        .width(24)
        .height(24)
      Image($r("app.media.startIcon"))
        .width(24)
        .height(24)
        .margin({ left: 24 })
      Image($r("app.media.ic_start_icon"))
        .width(24)
        .height(24)
        .margin({ left: 24 })
    }

  }

  @Computed  get filteredItems() {
    console.log('filteredItems called with searchIndex:', this.searchKeyword); // 调试输出
    if (!this.searchKeyword) {
      return this.arr; // 如果没有输入索引值，显示全部12条数据
    }
    const index = parseInt(this.searchKeyword, 10);
    if (isNaN(index) || index < 0 || index >= this.arr.length) {
      return []; // 输入无效索引值时，不显示任何数据
    }
    return [this.arr[index]]; // 根据输入的索引值筛选数据
  }


  build() {
    Column() {
      Navigation() {
        TextInput({ placeholder: 'search...' })
          .width('90%')
          .height(40)
          .backgroundColor('#FFFFFF')
          .margin({ top: 8 })
          .onChange((value: string) => {
            this.searchKeyword = value
          })

        List({ space: 12, initialIndex: 0 }) {
          ForEach(this.filteredItems, (item: number) => {
            ListItem() {
            Row(){
              Text((item + 1).toString())
                .margin({left : 15 })
                .width('%40')
                .height(72)
                .fontSize(20)
                .fontColor('black')
                .fontWeight(500)
                .textAlign(TextAlign.Start)

              Image($r("app.media.touxiang"))
                .width(56)
                .height(56)
                .margin({ left: 20 })
                .borderRadius(5)

               }
               .width('90%')
               .height(86)
               .backgroundColor('#FFFFFF')
               .borderRadius(24)
            }
          }, (item: number) => item.toString())
        }
        .height('90%')
        .width('100%')
        .margin({ top: 12, left: '10%' })
      }
      .title(this.NavigationTitle)
      .menus(this.NavigationMenus)
      .titleMode(NavigationTitleMode.Full)
      .hideTitleBar(false)
      .hideToolBar(false)
      .onTitleModeChange((titleModel: NavigationTitleMode) => {
        console.info('titleMode' + titleModel)
      })
    }.width('100%').height('100%').backgroundColor('#F1F3F5')
  }

}