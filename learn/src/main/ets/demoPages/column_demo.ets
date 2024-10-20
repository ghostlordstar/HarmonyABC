@Entry
@Component

struct columnDemo {

  @State demo_name: string = 'Column demo.'

  build() {
    Column() {
      // 头部标题
      Text('Column demo.')
        .textAlign(TextAlign.Center)
        .margin({bottom: 20})
      Divider().margin({ bottom: 20})

      // space 属性, 垂直间距
      Column({ space: 10 }) {
        Column().width('100%').height(30).backgroundColor(Color.Gray)
        Column().width('100%').height(30).backgroundColor(Color.Gray)
      }
      .width('90%')
      .backgroundColor(Color.White)
      .border({width: 1.0})
      Divider().margin({ bottom: 20})

      // alignItems，水平对齐方式
      Column() {
        Column().width('60%').height(30).backgroundColor(Color.Red)
        Column().width('60%').height(30).backgroundColor(Color.Pink)
      }
      .width('90%')
      .alignItems(HorizontalAlign.Start) // 居左对齐，另外还有Center, End
      .backgroundColor(Color.White)
      .border({width: 1.0})
      Divider().margin({ bottom: 20})

      // justifyContent, 垂直对齐方式
      Column() {
        Column().width('60%').height(30).backgroundColor(Color.Red)
        Column().width('60%').height(30).backgroundColor(Color.Pink)
      }
      .width('90%')
      .height(100)
      .alignItems(HorizontalAlign.Center) // Center, End
      .justifyContent(FlexAlign.Start) // 居上对齐, 还有 Center，End
      .backgroundColor(Color.White)
      .border({width: 1.0})
      Divider().margin({ bottom: 20})

    }
  }
}

