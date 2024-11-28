// 自定义一个参数类型
interface  BuilderArg {
  name: string
}

// 自定义构建函数
// 按引用传参
@Builder
function BuilderTest(arg: BuilderArg) {
  Column() {
    Text(`Hello ${arg.name}`)
      .fontSize(40)
      .margin(20)
  }
}

@Entry
@Component
struct BuilderDemo {
  @State person_name: string = '张三'
  @State arg: BuilderArg = { name: this.person_name }
  build() {
     Column(){
       Divider()
       BuilderTest(this.arg)
       Button("点击修改名字")
         .onClick(()=>{
            this.arg = {name: '李四'}
         })
     }
  }
}