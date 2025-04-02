
@Component

export  default  struct CirCleBookItem {
  @Prop icon:string;
  @Prop title:string;
  @Prop date:string;
  @Prop price:string;

  build() {

   Row(){
     Image($rawfile(this.icon)).width(56).height(56).margin({left:16,right:10})

     Column(){
       Text(this.title).textAlign(TextAlign.Start)
       Text(this.date)
     }
     .alignItems(HorizontalAlign.Start)

     Text(`${this.price}元`)
       .width(60)
       .fontSize(14)
       .margin({left:10})
   }
   .width(345)
   .height(90)
   .borderRadius(5)
   .shadow({offsetX:0,offsetY:4,radius:20,color:"#ccc"})
   .margin({top:10})
  }
}
