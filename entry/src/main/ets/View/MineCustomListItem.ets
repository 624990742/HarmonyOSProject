//
// import { router } from '@kit.ArkUI';
// import { BusinessError } from '@kit.BasicServicesKit';
//
// @Component
// export  default  struct CustomListItem {
//   @State icon: Resource
//   @State text: string
//   @State onClick: () => void
//
//   build() {
//     ListItem() {
//       Row() {
//         Image(this.icon)
//           .width(24)
//           .height(24)
//           .margin({ right: 16 })
//         Text(this.text)
//           .fontSize(18)
//       }
//       // .padding({ vertical: 16, horizontal: 16 })
//       .onClick(this.onClick)
//     }
//     .height(56) // 统一设置ListItem的高度
//   }
// }