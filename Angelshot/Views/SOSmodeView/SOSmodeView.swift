import SwiftUI

struct SOSmodeView: View {
    @StateObject var sOSmodeViewModel = SOSmodeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        VStack(alignment: .trailing, spacing: 0) {
                            HStack {
                                HStack {
                                    Image("img_941")
                                        .resizable()
                                        .frame(width: getRelativeWidth(28.0),
                                               height: getRelativeHeight(11.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(17.0))
                                    Spacer()
                                    ZStack(alignment: .bottomTrailing) {
                                        Image("img_notch")
                                            .resizable()
                                            .frame(width: getRelativeWidth(219.0),
                                                   height: getRelativeHeight(28.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.trailing, getRelativeWidth(63.0))
                                        Image("img_rightside")
                                            .resizable()
                                            .frame(width: getRelativeWidth(66.0),
                                                   height: getRelativeHeight(11.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(17.33))
                                            .padding(.leading, getRelativeWidth(215.67))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(282.0),
                                           height: getRelativeHeight(28.0), alignment: .center)
                                }
                                .frame(width: getRelativeWidth(326.0),
                                       height: getRelativeHeight(28.0), alignment: .leading)
                            }
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(28.0),
                                   alignment: .leading)
                            .padding(.leading)
                            .padding(.leading)
                            Text(StringConstants.kLblSOSMode2)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(30.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(168.0),
                                       height: getRelativeHeight(30.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(39.0))
                                .padding(.horizontal, getRelativeWidth(13.0))
                            Text(StringConstants.kMsgWeWillSendA)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(310.0),
                                       height: getRelativeHeight(75.0), alignment: .center)
                                .padding(.top, getRelativeHeight(32.0))
                                .padding(.horizontal, getRelativeWidth(13.0))
                            Button(action: {
                                sOSmodeViewModel.nextScreen = "SOSmodeOneView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblSendTheSOS)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(17.0))
                                        .foregroundColor(ColorConstants.Green400)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(51.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                                   bottomLeft: 25.5,
                                                                   bottomRight: 25.5)
                                                .fill(ColorConstants.WhiteA700))
                                        .padding(.top, getRelativeHeight(30.0))
                                }
                            })
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(51.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                       bottomLeft: 25.5, bottomRight: 25.5)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(30.0))
                            Button(action: {
                                sOSmodeViewModel.nextScreen = "Emergency1View"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblReturnToMenu)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(17.0))
                                        .foregroundColor(ColorConstants.Green400)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(51.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                                   bottomLeft: 25.5,
                                                                   bottomRight: 25.5)
                                                .fill(ColorConstants.WhiteA700))
                                        .padding(.top, getRelativeHeight(21.0))
                                }
                            })
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(51.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                       bottomLeft: 25.5, bottomRight: 25.5)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(21.0))
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(360.0),
                               alignment: .center)
                        .padding(.leading, getRelativeWidth(25.0))
                        .padding(.trailing, getRelativeWidth(22.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(360.0),
                           alignment: .leading)
                    VStack(alignment: .leading, spacing: 0) {
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: UIScreen.main.bounds.width - 20,
                                   height: getRelativeHeight(83.0), alignment: .leading)
                            .background(ColorConstants.Bluegray50)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(83.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(400.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Green400)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SOSmodeOneView(),
                                   tag: "SOSmodeOneView",
                                   selection: $sOSmodeViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: Emergency1View(),
                                   tag: "Emergency1View",
                                   selection: $sOSmodeViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Green400)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct SOSmodeView_Previews: PreviewProvider {
    static var previews: some View {
        SOSmodeView()
    }
}
