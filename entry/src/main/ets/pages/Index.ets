interface Person {
  name: string
  age: number
  gender: string
  method1: () => void
  method2: (name: string) => void
}

let zhangsan: Person = {
  name: '张三',
  age: 18,
  gender: '男',
  method1: (): void => {
    console.log(`调用了method1`)
  },
  method2: (name: string): void => {
    console.log(`调用了method2,参数${name}`)
  }
}
console.log(zhangsan.name)
zhangsan.method1()
zhangsan.method2("say hello")
let feild1: number | string = '男'
let feild2: number | string = 0
let feild3: "man" | "feman" = 'man'

enum Gender {
  MAN = '男',
  FEMAN = '女'
}

let feild4: Gender = Gender.MAN
console.log(feild4)

@Entry
@Component
struct Index {
  @State message: string = 'Hello kitty';
  @State title: string = '小说简介';
  @State keyword: string[] = ['都市', '生活', '情感', '男频'];

  build() {
    Column() {
      Row() {
        Text(this.title)
          .fontSize(20)
          .fontWeight(700)
      }

      Row() {
        Text(this.keyword[0])
          .fontSize(18)
          .fontWeight(400)
          .fontColor(Color.Red)
          .backgroundColor(Color.Orange)
        Text(this.keyword[1])
          .fontSize(18)
          .fontWeight(400)
          .fontColor("#999")
          .backgroundColor(Color.Yellow)
        Text(this.keyword[2])
          .fontSize(18)
          .fontColor("#0f0")
          .fontWeight(400)
          .backgroundColor(Color.Gray)
        Text(this.keyword[3])
          .fontColor("#0ff")
          .fontSize(18)
          .fontWeight(400)
          .backgroundColor(Color.Pink)
      }

      Text("这是一段很长很长的文字这是一段很长很长的文字这是一段很长很长的文字这是一段很长很长的文字")
        .fontColor("#0ff")
        .fontSize(18)
        .fontWeight(400)
        .backgroundColor(Color.Pink)
        .textOverflow({
          overflow: TextOverflow.Ellipsis,
        })
        .maxLines(2);
      Text("这是一段很长很长的文字这是一段很长很长的文字这是一段很长很长的文字这是一段很长很长的文字")
        .fontColor("#0ff")
        .fontSize(18)
        .fontWeight(400)
        .backgroundColor(Color.Pink)
        .textOverflow({
          overflow: TextOverflow.MARQUEE,
        })
        .maxLines(2);

      Image('https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png')
        .width("200")
      Image($r('app.media.startIcon'))
        .width("50")
    }.width("100%")

  }
}
