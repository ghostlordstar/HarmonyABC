@Entry
@Component

struct buildDemo {

  @State demo_name: string = 'UI 组件创建 demo.'

  build() {
    Column() {
      Text('UITestDemo title')
      Divider()
      Text('UITestDemo desc')
    }
  }
}

