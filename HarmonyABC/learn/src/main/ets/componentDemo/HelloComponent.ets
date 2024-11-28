// 自定义组件

@Component
struct HelloComponent {
  @State
  userName: string = '张三'

  build() {
    Column(){
      Text(`Hello ${this.userName}`)
        .height(50)
        .width(300)
        .fontSize(30)
        .onClick( () => {
          // 点击之后切换名字
          this.userName = '李四'
        })
    }
  }
}

// 导出组件
export default HelloComponent