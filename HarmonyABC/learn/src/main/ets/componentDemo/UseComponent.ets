// 默认导入
import HelloComponent from './HelloComponent'
import router from '@ohos.router'
// import BuilderDemo from './builderDemo'

@Entry
@Component
struct UseComponent {

  @State count: number = 0

  build() {
    Column({space: 5}) {
      Text("这是主UI界面")
        .fontSize(30)
        .height(100)
        .width('100%')
        .fontColor(Color.Black)
        .fontWeight(FontWeight.Bold)

      Divider().padding({bottom: 10})
      HelloComponent({ userName: 'testName' })
      Divider().padding({bottom: 10})

      Button('点击跳转BuilderDemo页面')
        .onClick(()=>{
          router.pushUrl({url: 'componentDemo/builderDemo'})
        })
    }
  }
}