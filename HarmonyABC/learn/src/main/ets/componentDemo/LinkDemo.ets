/*
 * @Link 装饰器实现双向关联
 *
 * */


// 自定义按钮的信息类型
class ButtonState {
  value: String = ''
  width: number = 0

  constructor(value: string, width: number) {
    this.value = value
    this.width = width
  }
}

@Component
struct MyChildButton {
  // 拥有绿色按钮的组件
  @Link
  buttonState: ButtonState
  build() {

  }
}