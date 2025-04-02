@Component
export  default struct CirCleHeader {
  build() {
    Row(){
      Column(){
        Image($r("app.media.back")).width(16).height(16)
      }.width(60)

      Column(){
        Text("动物书籍列表")
      }
    }.height(48)
    .width('100%')
    .backgroundColor('#F7F8FA')
  }
}