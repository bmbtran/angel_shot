import SwiftUI

struct SOSmodeOneView: View {
    @StateObject var sOSmodeOneViewModel = SOSmodeOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        VStack(alignment: .leading, spacing: 0) {
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
                            .padding(.leading, getRelativeWidth(17.0))
                            Text(StringConstants.kLblSOSMode2)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(30.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(168.0),
                                       height: getRelativeHeight(30.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(39.0))
                                .padding(.horizontal, getRelativeWidth(15.0))
                            Text(StringConstants.kMsgWeWillSendA)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(310.0),
                                       height: getRelativeHeight(75.0), alignment: .center)
                                .padding(.top, getRelativeHeight(32.0))
                                .padding(.horizontal, getRelativeWidth(15.0))
                            ZStack(alignment: .center) {
                                VStack {
                                    Text(StringConstants.kLblSendTheSOS)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Green400)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(115.0),
                                               height: getRelativeHeight(16.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(17.0))
                                        .padding(.horizontal, getRelativeWidth(114.0))
                                }
                                .frame(width: getRelativeWidth(343.0),
                                       height: getRelativeHeight(51.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                           bottomLeft: 25.5, bottomRight: 25.5)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.bottom, getRelativeHeight(174.0))
                                VStack {
                                    Text(StringConstants.kLblReturnToMenu)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Green400)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(119.0),
                                               height: getRelativeHeight(16.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(17.0))
                                        .padding(.horizontal, getRelativeWidth(112.0))
                                }
                                .frame(width: getRelativeWidth(343.0),
                                       height: getRelativeHeight(51.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                           bottomLeft: 25.5, bottomRight: 25.5)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.bottom, getRelativeHeight(102.0))
                                VStack {
                                    Text(StringConstants.kLblSosSent)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(30.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(134.0),
                                               height: getRelativeHeight(30.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(35.0))
                                        .padding(.horizontal, getRelativeWidth(16.0))
                                    Text(StringConstants.kMsgYourSosHasBe)
                                        .font(FontScheme
                                            .kInterMedium(size: getRelativeHeight(16.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(241.0),
                                               height: getRelativeHeight(34.0), alignment: .center)
                                        .padding(.top, getRelativeHeight(22.0))
                                        .padding(.horizontal, getRelativeWidth(16.0))
                                    Button(action: {
                                        sOSmodeOneViewModel.nextScreen = "Emergency1View"
                                    }, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kLblReturnToMenu)
                                                .font(FontScheme
                                                    .kInterSemiBold(size: getRelativeHeight(16.0)))
                                                .fontWeight(.semibold)
                                                .padding(.horizontal, getRelativeWidth(30.0))
                                                .padding(.vertical, getRelativeHeight(17.0))
                                                .foregroundColor(ColorConstants.WhiteA700)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(311.0),
                                                       height: getRelativeHeight(51.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 25.5,
                                                                           topRight: 25.5,
                                                                           bottomLeft: 25.5,
                                                                           bottomRight: 25.5)
                                                        .fill(ColorConstants.Green401))
                                                .padding(.top, getRelativeHeight(21.0))
                                                .padding(.bottom, getRelativeHeight(20.0))
                                                .padding(.horizontal, getRelativeWidth(16.0))
                                        }
                                    })
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(51.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                               bottomLeft: 25.5, bottomRight: 25.5)
                                            .fill(ColorConstants.Green401))
                                    .padding(.top, getRelativeHeight(21.0))
                                    .padding(.bottom, getRelativeHeight(20.0))
                                    .padding(.horizontal, getRelativeWidth(16.0))
                                }
                                .frame(width: getRelativeWidth(343.0),
                                       height: getRelativeHeight(230.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(ColorConstants.WhiteA700))
                                .shadow(color: ColorConstants.Indigo9003f, radius: 20, x: 0, y: 2)
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(345.0), height: getRelativeHeight(230.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(25.0))
                        }
                        .frame(width: getRelativeWidth(345.0), height: getRelativeHeight(462.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(23.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(462.0),
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
                    .padding(.top, getRelativeHeight(298.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Green400)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: Emergency1View(),
                                   tag: "Emergency1View",
                                   selection: $sOSmodeOneViewModel.nextScreen,
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

struct SOSmodeOneView_Previews: PreviewProvider {
    static var previews: some View {
        SOSmodeOneView()
    }
}
