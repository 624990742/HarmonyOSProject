import { SymbolGlyphModifier } from '@kit.ArkUI'
import HomePage from '../pages/Home/HomePage';
import Find from '../pages/Find/FindPage'
import Circle from '../pages/Circle/CirClePage'
import Mine from '../pages/Mine/MinePage'
import FindPage from '../pages/Find/FindPage';
import CirClePage from '../pages/CirCle/CirClePage';
import MinePage from '../pages/Mine/MinePage';

@Entry
@Component
export  default struct  Tabbars {
  @State symbolModifier1: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.home_button'));
  @State symbolModifier2: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.envelope'));
  @State symbolModifier3: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.envelope_open'));
  @State symbolModifier4: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.my_plans'));
  build() {
    Column({space: 5}) {
      Column(){
        Tabs({barPosition: BarPosition.End}) {
          TabContent() {
            HomePage();
          }.tabBar(new BottomTabBarStyle({
            normal: this.symbolModifier1,
          }, '首页'))
          .onWillShow(() => {
            console.info("首页 will show")
          })
          .onWillHide(() => {
            console.info("首页 will hide")
          })

          TabContent() {
            FindPage()
          }.tabBar(new BottomTabBarStyle({
            normal: this.symbolModifier2,
          }, '发现'))
          .onWillShow(() => {
            console.info("发现 will show")
          })
          .onWillHide(() => {
            console.info("发现 will hide")
          })

          TabContent() {
            CirClePage()
          }.tabBar(new BottomTabBarStyle({
            normal: this.symbolModifier3,
          }, '圈子'))
          .onWillShow(() => {
            console.info("圈子 will show")
          })
          .onWillHide(() => {
            console.info("圈子 will hide")
          })

          TabContent() {
            MinePage()
          }.tabBar(new BottomTabBarStyle({
            normal: this.symbolModifier4,
          }, '我的'))
          .onWillShow(() => {
            console.info("我的 will show")
          })
          .onWillHide(() => {
            console.info("我的 will hide")
          })
        }
        .vertical(false)
        .scrollable(true)
        .barMode(BarMode.Fixed)
        .onChange((index:number)=>{
          console.info(index.toString())
        })
        .width('100%')
        .height('100%')
        .backgroundColor(0xF1F3F5)
      }.width('100%')
    }
  }
}