import { router } from '@kit.ArkUI'
import { BusinessError } from '@kit.BasicServicesKit'
import Banner from '../../View/Banner';
import EnablementView from '../../View/EnablementView';
import TutorialView from '../../View/TutorialView';
@Entry
@Component
export  default struct  HomePage {
  @State message: string = '晨仔学习的第一个作品';
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

       Scroll() {
         Column() {
           Banner()
           EnablementView()
           TutorialView()
         }
       }
       .layoutWeight(1)
       .scrollBar(BarState.Off)
       .align(Alignment.TopStart)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F1F3F5')
  }

}
