import Game from '../Game'
import GameMode from '../GameMode'

@Entry
@Component
struct Settings {
  @State message: string = 'Hello World'

  @Builder
  NavigationTitle() {
    Text("设置")
      .fontColor('#182431')
      .fontSize(16)
      .textAlign(TextAlign.Center)
      .height("100%")
  }

  build() {
    Column() {
      Navigation() {
        Scroll() {
          Column() {
            Text("游戏模式")
              .fontSize(16)
              .width("100%")
              .padding({
                left: 16,
                right: 16
              })
              .margin({
                bottom: 4
              })
              .fontColor("#7e7e7e")

            List() {
              ListItem() {
                Row() {
                  Text("经典模式")
                    .fontColor(Color.Black)
                    .fontSize(16)
                  Radio({
                    value: "Classic",
                    group: "mode",
                  })
                    .checked(GameMode.value === 0)
                    .onChange((isChecked) => {
                      if(isChecked) {
                        GameMode.value = 0;
                      }
                    })
                }
                .width("100%")
                .justifyContent(FlexAlign.SpaceBetween)
              }
              .width("auto")
              .height(48)

              ListItem() {
                Row() {
                  Text("朝代模式")
                    .fontColor(Color.Black)
                    .fontSize(16)
                  Radio({
                    value: "Dynasty",
                    group: "mode",
                  })
                    .checked(GameMode.value === 1)
                    .onChange((isChecked) => {
                      if(isChecked) {
                        GameMode.value = 1;
                      }
                    })
                }
                .width("100%")
                .justifyContent(FlexAlign.SpaceBetween)
              }
              .width("auto")
              .height(48)

              ListItem() {
                Row() {
                  Text("甲乙丙丁模式")
                    .fontColor(Color.Black)
                    .fontSize(16)
                  Radio({
                    value: "JiaYiBingDing",
                    group: "mode",
                  })
                    .checked(GameMode.value === 2)
                    .onChange((isChecked) => {
                      if(isChecked) {
                        GameMode.value = 2;
                      }
                    })
                }
                .width("100%")
                .justifyContent(FlexAlign.SpaceBetween)
              }
              .width("auto")
              .height(48)
            }
            .width("100%")
            .height("auto")
            .backgroundColor(Color.White)
            .borderRadius(16)
            .padding({
              left: 16,
              right: 16
            })
            .alignSelf(ItemAlign.Center)
            .divider({
              strokeWidth: 1,
              startMargin: 0,
              endMargin: 0,
              color: '#ffe9f0f0'
            })
            .margin({
              bottom: 16
            })

            Text("关于游戏")
              .fontSize(16)
              .width("100%")
              .padding({
                left: 16,
                right: 16
              })
              .margin({
                bottom: 4
              })
              .fontColor("#7e7e7e")

            List() {
              ListItem() {
                Row() {
                  Text("游戏名称")
                    .fontColor(Color.Black)
                    .fontSize(16)
                  Text("2048速通版")
                    .fontColor(Color.Black)
                    .fontSize(16)
                }
                .width("100%")
                .justifyContent(FlexAlign.SpaceBetween)
              }
              .width("auto")
              .height(48)

              ListItem() {
                Row() {
                  Text("游戏版本")
                    .fontColor(Color.Black)
                    .fontSize(16)
                  Text("Release 1.0.0")
                    .fontColor(Color.Black)
                    .fontSize(16)
                }
                .width("100%")
                .justifyContent(FlexAlign.SpaceBetween)
              }
              .width("auto")
              .height(48)
            }
            .width("100%")
            .height("auto")
            .backgroundColor(Color.White)
            .borderRadius(16)
            .padding({
              left: 16,
              right: 16
            })
            .alignSelf(ItemAlign.Center)
            .divider({
              strokeWidth: 1,
              startMargin: 0,
              endMargin: 0,
              color: '#ffe9f0f0'
            })
          }
        }
        .width("100%")
        .height("auto")
        .margin(0)
        .padding({
          left: 16,
          right: 16
        })
      }
      .title(this.NavigationTitle())
      .titleMode(NavigationTitleMode.Mini)
      .mode(NavigationMode.Stack)
      .backgroundColor("#ececec")

    }
    .width("100%")
    .height("100%")
    .justifyContent(FlexAlign.Start)
    .alignItems(HorizontalAlign.Center)
  }
}