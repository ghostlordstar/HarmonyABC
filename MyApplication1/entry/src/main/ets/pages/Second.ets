import { router } from '@kit.ArkUI'
import { BusinessError } from '@kit.BasicServicesKit'

@Entry
@Component
struct Second {

  build() {
    RelativeContainer() {
      Text('Second Page')
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.Black)
        .height(50)
        .alignRules({
          top: {anchor: '__container__', align: VerticalAlign.Top},
          middle: {anchor: '__container__', align: HorizontalAlign.Center},
          bias: { vertical: 0.3 }
        })
        .id("title1")

      Button() {
        Text('Back')
          .fontSize(20)
          .fontColor(Color.Black)
          .fontWeight(FontWeight.Bold)
      }
      .type(ButtonType.Capsule)
      .width(100)
      .alignRules({
        top: { anchor: 'title1', align: VerticalAlign.Bottom },
        middle: {anchor: 'title1', align: HorizontalAlign.Center},
        bias: { vertical: 0.5}
      })
      .onClick(()=>{
        try {
          router.back()
          console.log('Back to index page.')
        } catch (err) {
          let berr = err as BusinessError
          console.log(`Back to index page failed, error messge: ${berr.message}, code: ${berr.code}`)
        }
      })

    }
  }
}