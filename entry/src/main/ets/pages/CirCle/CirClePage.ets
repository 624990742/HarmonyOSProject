import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';
import CirCleHeader from '../../View/CirCleHeader';
import CirCleBookItem from '../../View/CirCleBookItem';

interface ExpenseItem {
  icon: string;
  title: string;
  date: string;
  price: string;
}

@Component
export default struct CirClePage {
  @State message: string = '圈子';
  @State list: ExpenseItem[] = [
    { icon: 'animalBook1.png', title: "动物书籍1", date: "2025-04-02 14:30:20", price: "70.00" },
    { icon: 'animalBook2.png', title: "动物书籍2", date: "2025-04-02 14:30:20", price: "90.00" },
    { icon: 'animalBook3.png', title: "动物书籍3", date: "2025-04-02 14:30:20", price: "80.00" },
    { icon: 'animalBook4.png', title: "动物书籍4", date: "2025-04-02 14:30:20", price: "100.00" }
  ];

  build() {
    Column() {
      // 修正：Text组件语法正确，但调整了一些不必要的链式调用格式
      Text(this.message)
        .fontSize(24)
        .fontWeight(700)
        .width('100%')
        .textAlign(TextAlign.Center)
        .padding({ left: 16 }) // 修正：`left` 前后空格规范
        .fontFamily('HarmonyHeiTi-Bold')
        .lineHeight(50);

      // 引入自定义组件 CirCleHeader，语法正确，无需修改
      CirCleHeader();

      // 修正：Flex 容器中的子项布局逻辑，并添加必要的属性
      Flex() {
        Column() {
          Text("书籍类型").height(56);
        }.width('50%');

        Column() {
          Text("全部时间").height(56);
        }.width('50%');
      }
      .height(56)
      .width('100%')
      .linearGradient({
        direction: GradientDirection.Top, // 修正：`GradientDirection` 的大小写
        colors: [['#F7F8FA', 0], ['#fff', 1]] // 修正：数组格式需要双层括号
      });

      // 修正：ForEach 的语法和回调参数
      ForEach(this.list, (item: ExpenseItem, index: number) => {
        CirCleBookItem({
          icon: item.icon,
          title: item.title,
          date: item.date,
          price: item.price
        });
      }, (item: ExpenseItem, index: number) => index.toString()); // 修正：keyExtractor 参数格式
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F7F8FA');
  }
}