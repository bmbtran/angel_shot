import SwiftUI

struct Emergency1View: View {
    @StateObject var emergency1ViewModel = Emergency1ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .trailing, spacing: 0) {
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
                                               height: getRelativeHeight(28.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.trailing, getRelativeWidth(63.0))
                                    Image("img_rightside")
                                        .resizable()
                                        .frame(width: getRelativeWidth(66.0),
                                               height: getRelativeHeight(11.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(17.33))
                                        .padding(.leading, getRelativeWidth(215.67))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(282.0),
                                       height: getRelativeHeight(28.0), alignment: .center)
                            }
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(28.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(28.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(21.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(28.0),
                           alignment: .leading)
                    VStack {
                        VStack {
                            Text(StringConstants.kLblReport)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(30.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(99.0),
                                       height: getRelativeHeight(30.0), alignment: .topLeading)
                                .padding(.horizontal, getRelativeWidth(33.0))
                            Text(StringConstants.kMsgYouAreNotAlo)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(20.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(279.0),
                                       height: getRelativeHeight(43.0), alignment: .center)
                                .padding(.top, getRelativeHeight(36.0))
                                .padding(.leading, getRelativeWidth(33.0))
                                .padding(.trailing, getRelativeWidth(29.0))
                            Button(action: {
                                emergency1ViewModel.nextScreen = "ReportmodeView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblReportAPerson)
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
                                        .padding(.top, getRelativeHeight(41.0))
                                }
                            })
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(51.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                       bottomLeft: 25.5, bottomRight: 25.5)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(41.0))
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblPanicMode)
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
                                        .padding(.top, getRelativeHeight(31.0))
                                }
                            })
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(51.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                       bottomLeft: 25.5, bottomRight: 25.5)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(31.0))
                            Button(action: {
                                emergency1ViewModel.nextScreen = "SOSmodeView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblSosMode)
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
                                        .padding(.top, getRelativeHeight(31.0))
                                }
                            })
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(51.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                       bottomLeft: 25.5, bottomRight: 25.5)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(31.0))
                            Image("img_hug1")
                                .resizable()
                                .frame(width: getRelativeWidth(232.0),
                                       height: getRelativeHeight(283.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(57.0))
                                .padding(.horizontal, getRelativeWidth(47.0))
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(706.0),
                               alignment: .center)
                        .background(ColorConstants.Green400)
                        .padding(.horizontal, getRelativeWidth(24.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(706.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(43.0))
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
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Green400)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ReportmodeView(),
                                   tag: "ReportmodeView",
                                   selection: $emergency1ViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SOSmodeView(),
                                   tag: "SOSmodeView",
                                   selection: $emergency1ViewModel.nextScreen,
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

struct Emergency1View_Previews: PreviewProvider {
    static var previews: some View {
        Emergency1View()
    }
}
