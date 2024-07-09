@Entry
@Component
struct Index {
  @State message: string = 'Hello kitty';
  @State keyword: string[] = ['标签1', '标签2', '标签3', '标签4'];

  build() {
    Row({ space: 10 }) {
      Column() {
        Text(this.keyword[0])
        Text(this.keyword[1])
        Text(this.keyword[2])
        Text(this.keyword[3])
      }
    }
    .width("100%")
    .height('100%')
    .justifyContent(FlexAlign.Start)
    .justifyContent(FlexAlign.End)
    .justifyContent(FlexAlign.Center)
    .justifyContent(FlexAlign.SpaceBetween)
    .justifyContent(FlexAlign.SpaceAround)
    .justifyContent(FlexAlign.SpaceEvenly)
    .alignItems(VerticalAlign.Top)
  }
}
