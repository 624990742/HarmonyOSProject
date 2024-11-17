import { router } from '@kit.ArkUI'
import { BusinessError } from '@kit.BasicServicesKit'
import CustomNavgation from '../../View/CustomNavgation';
@Component
export  default struct  FindPage {
    build() {
      Column(){
        CustomNavgation()
      }
      .width('100%')
      .height('100%')
      .backgroundColor('#00CB87')
    }
}

