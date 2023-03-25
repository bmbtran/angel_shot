import SwiftUI

struct LoginView: View {
    @StateObject var loginViewModel = LoginViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
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
                            .frame(width: getRelativeWidth(282.0), height: getRelativeHeight(28.0),
                                   alignment: .center)
                        }
                        .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(28.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(28.0),
                           alignment: .leading)
                    .padding(.horizontal, getRelativeWidth(24.0))
                    ZStack(alignment: .topTrailing) {
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(224.0), height: getRelativeHeight(220.0),
                                   alignment: .bottomLeading)
                            .background(RoundedCorners(topLeft: 112.0, topRight: 112.0,
                                                       bottomLeft: 112.0, bottomRight: 112.0)
                                    .fill(ColorConstants.Blue300))
                            .padding(.top, getRelativeHeight(11.0))
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(68.0), height: getRelativeHeight(72.0),
                                   alignment: .topTrailing)
                            .background(RoundedCorners(topLeft: 36.0, topRight: 36.0,
                                                       bottomLeft: 36.0, bottomRight: 36.0)
                                    .fill(ColorConstants.AmberA200))
                            .padding(.bottom, getRelativeHeight(160.0))
                            .padding(.leading, getRelativeWidth(156.0))
                        Image("img_beerpong31")
                            .resizable()
                            .frame(width: getRelativeWidth(210.0), height: getRelativeHeight(232.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.horizontal, getRelativeWidth(6.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(224.0), height: getRelativeHeight(232.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(169.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                    Text(StringConstants.kLblSafeparty)
                        .font(FontScheme.kInterBlack(size: getRelativeHeight(40.0)))
                        .fontWeight(.black)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(196.0), height: getRelativeHeight(40.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(17.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                    Text(StringConstants.kMsgWeProtectYou)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(190.0), height: getRelativeHeight(16.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(11.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblLogInAsHost)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(16.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(343.0),
                                       height: getRelativeHeight(51.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                           bottomLeft: 25.5, bottomRight: 25.5)
                                        .fill(ColorConstants.Green400))
                                .padding(.top, getRelativeHeight(25.0))
                                .padding(.horizontal, getRelativeWidth(24.0))
                        }
                    })
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(51.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 25.5, topRight: 25.5, bottomLeft: 25.5,
                                               bottomRight: 25.5)
                            .fill(ColorConstants.Green400))
                    .padding(.top, getRelativeHeight(25.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kMsgLogInAsAtten)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(16.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(343.0),
                                       height: getRelativeHeight(51.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                           bottomLeft: 25.5, bottomRight: 25.5)
                                        .fill(ColorConstants.Green400))
                                .padding(.vertical, getRelativeHeight(14.0))
                                .padding(.horizontal, getRelativeWidth(24.0))
                        }
                    })
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(51.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 25.5, topRight: 25.5, bottomLeft: 25.5,
                                               bottomRight: 25.5)
                            .fill(ColorConstants.Green400))
                    .padding(.vertical, getRelativeHeight(14.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: EmergencycontactsView(),
                                   tag: "EmergencycontactsView",
                                   selection: $loginViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            loginViewModel.nextScreen = "EmergencycontactsView"
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
