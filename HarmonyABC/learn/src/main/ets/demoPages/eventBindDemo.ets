@Entry
@Component

struct fontSizeDemo {
  @State demoName: string = "事件绑定Demon"
  @State textSize: number = 30 // 状态变量

  resetFontSize(): void {
    this.textSize += 5
  }

  build() {
    Column() {
      Text(this.demoName)
      Divider()
        .margin({top: 20})
      Text('当前字体大小：`{this.textSize}`')
      Divider()
      Text('这是示例字体')
        .fontSize(this.textSize)
        .fontColor(Color.Black)
      Divider()
      Button('点击示例字体变大')
        .height(50)
        .width(200)
        .margin({top: 20})
          // 箭头函数绑定事件
        // .onClick(() => {
        //   this.textSize += 5
        // })
        // 自定义函数绑定事件
        .onClick(this.resetFontSize.bind(this))
    }
  }
}
