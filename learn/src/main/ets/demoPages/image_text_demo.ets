@Entry
@Component

struct imageText {
  @State demoName: string = "图文组件"
  imageUrl: string = 'https://cbu01.alicdn.com/img/ibank/O1CN011jiOJU274LRMI8vQc_!!2760447743-0-cib.jpg'
  imageHeight: number = 578
  imageWidth: number = 578
  build() {
    Column() {
      Text(this.demoName)
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.Black)
      Divider()
      Image(this.imageUrl)
        .height(this.imageHeight)
        .width(this.imageWidth)
        .renderMode(ImageRenderMode.Original)
    }
  }
}