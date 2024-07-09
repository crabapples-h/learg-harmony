@Entry
@Component
struct Index {
  @State message: string = 'Hello kitty';
  @State keyword: string[] = ['标签1', '标签2', '标签3', '标签4'];

  build() {
    Stack({
      alignContent:Alignment.Top
    }) {
      Text(this.keyword[0])
        .width(200)
        .height(200)
        .backgroundColor(Color.Red)
      Text(this.keyword[1])
        .width(150)
        .height(150)
        .backgroundColor(Color.Pink)
      Text(this.keyword[2])
        .width(100)
        .height(100)
        .backgroundColor(Color.Blue)
      Text(this.keyword[3])
        .width(50)
        .height(50)
        .backgroundColor(Color.Green)
    }
  }
}
