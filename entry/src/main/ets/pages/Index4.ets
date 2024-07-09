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
      }.position({x:200,y:100})
    }
  }
}
