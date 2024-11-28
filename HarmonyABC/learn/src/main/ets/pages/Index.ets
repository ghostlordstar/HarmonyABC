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

  onPageShow(): void {
    console.log('Life - onPageShow')
  }

  onPageHide(): void {
    console.log('Life - onPageHide')
  }

  onBackPress(): boolean | void {
    console.log('Life - onBackPress')
  }

  // 组件被创建，build()函数调用之前
  aboutToAppear(): void {
    console.info('Life - aboutToAppear，组件被创建')
  }

  //
  aboutToDisappear(): void {
    console.info('Life - aboutToDisappear，组件被销毁')
  }
}
