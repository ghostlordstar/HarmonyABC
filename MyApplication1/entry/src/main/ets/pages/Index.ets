// 导入router模块
import { router } from '@kit.ArkUI'
import { BusinessError } from '@kit.BasicServicesKit'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .id("title1")
      // 跳转按钮
      Button() {
        Text('Next')
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
      }
      .type(ButtonType.Capsule)
      .margin({
        top: 20
      })
      .backgroundColor(Color.Blue)
      .width('40%')
      .height('5%')
      .alignRules({
        middle: { anchor: '__container__', align: HorizontalAlign.Center },
        top: { anchor: 'title1', align: VerticalAlign.Bottom },
        bias: { horizontal: 0.2 }
      })
      .onClick(() => {
        router.pushUrl({ url: 'pages/Second' }).then(() => {
          console.log('Succeeded in jumping to the second page.');
        }).catch((err: BusinessError) => {
          console.log(`Failed to jump to the second page, error is ${err}`)
        })
      })
    }
    .height('100%')
    .width('100%')
  }
}