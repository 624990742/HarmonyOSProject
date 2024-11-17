import { router } from '@kit.ArkUI'
import { BusinessError } from '@kit.BasicServicesKit'
@Entry
@Component
export  default struct  MinePage {
  @State message: string = '我的';
  build() {
    Column(){
      Text(this.message)
        .fontSize(24)
        .fontWeight(700)
        .width('100%')
        .textAlign(TextAlign.Center)
        .padding({left: 16})
        .fontFamily('HarmonyHeiTi-Bold')
        .lineHeight(50)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#00CB87')
  }
}

