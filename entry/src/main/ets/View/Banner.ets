import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit'
/**
 ResourceStr 类型为Resource类型与string类型的联合类型。
 Resource类型在加载本地图片资源时会用到的，而string类型在加载网络图片资源时会用到。
 */
class  BannerClass {
  id: string = '';//唯一标识
  imageSrc: ResourceStr = '';//图片地址。
  url: string = '';//在线网页地址

  //构造函数
  constructor(id: string, imageSrc: ResourceStr, url: string) {
    this.id = id;
    this.imageSrc = imageSrc;
    this.url = url;
  }
}

/**
 * Banner轮播图
 */

@Entry
@Preview
@Component
export default  struct Banner {
  @State  bannerList: Array<BannerClass> = [
    new BannerClass('pic0', $r('app.media.banner_pic0'),
      'https://developer.huawei.com/consumer/cn/training/course/video/C101718352529709527'),
    new BannerClass('pic1', $r('app.media.banner_pic1'),
      'https://developer.huawei.com/consumer/cn/'),
    new BannerClass('pic2', $r('app.media.banner_pic2'),
      'https://developer.huawei.com/consumer/cn/deveco-studio/'),
    new BannerClass('pic3', $r('app.media.banner_pic3'),
      'https://developer.huawei.com/consumer/cn/arkts/'),
    new BannerClass('pic4', $r('app.media.banner_pic4'),
      'https://developer.huawei.com/consumer/cn/arkui/'),
    new BannerClass('pic5', $r('app.media.banner_pic5'),
      'https://developer.huawei.com/consumer/cn/sdk')
  ];

  build() {
    Swiper() {
      ForEach(this.bannerList, (item: BannerClass, index: number) => {
        Image(item.imageSrc)
          .objectFit(ImageFit.Contain)
          .width('100%')
          .padding({ top: 11, left: 16, right: 16 })
          .borderRadius(16)
          .onClick(() =>{

            router.pushUrl({ url: 'pages/WebPage' }).then(() => {
              console.info('成功跳转到第二页')
            }).catch((error: BusinessError) => {
              // console.error(`Failed to jump to the second page. Code is ${err.code}, message is ${err.message}`)
            })
          })
      }, (item: BannerClass, index: number) => item.id)
    }
    .autoPlay(true)
    .loop(true)
    .indicator(
      new DotIndicator()
        .color('#1a000000')
        .selectedColor('#0A59F7'))
  }
}
