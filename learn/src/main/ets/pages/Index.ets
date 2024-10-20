@Entry // 装饰器，表示app入口
@Component // 装饰器，表示自定义组件
struct Hello {
  @State message: string = 'Hello Harmony'; // 状态变量

  build() { // UI渲染
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Divider()
        Button('点击')
          .onClick(() => {
            this.message = "点击后的文案"
          })
          .height(50)
          .width(100)
          .margin({top: 20})
      }
    }
  }