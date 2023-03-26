import SwiftUI

struct ProfileView: View {
    @StateObject var profileViewModel = ProfileViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack {
                        Group {
                            ZStack(alignment: .topLeading) {
                                Image("img_profiletab")
                                    .resizable()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(103.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.bottom, getRelativeHeight(217.0))
                                VStack {
                                    Text(StringConstants.kLblProfile)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(30.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(94.0),
                                               height: getRelativeHeight(30.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(67.0))
                                        .padding(.horizontal, getRelativeWidth(148.0))
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(271.0), alignment: .topLeading)
                                .background(RoundedCorners(topLeft: 34.0, topRight: 34.0)
                                    .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                .CyanA700,
                                            ColorConstants
                                                .LightGreenA101]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing)))
                                .padding(.bottom, getRelativeHeight(60.0))
                                Image("img_ellipse7")
                                    .resizable()
                                    .frame(width: getRelativeWidth(177.0),
                                           height: getRelativeWidth(177.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
                                    .padding(.top, getRelativeHeight(154.0))
                                    .padding(.leading, getRelativeWidth(110.0))
                                    .padding(.trailing, getRelativeWidth(103.0))
                            }
                            .hideNavigationBar()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(331.0), alignment: .leading)
                            Text(StringConstants.kMsgVictoriaRobert2)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(30.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(272.0),
                                       height: getRelativeHeight(30.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(15.0))
                                .padding(.horizontal, getRelativeWidth(27.0))
                            HStack {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(16.0),
                                           height: getRelativeWidth(16.0), alignment: .bottom)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.Green401))
                                Text(StringConstants.kMsgViewEditProfi)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(127.0),
                                           height: getRelativeHeight(19.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(16.0))
                            }
                            .frame(width: getRelativeWidth(159.0), height: getRelativeHeight(19.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(26.0))
                            .padding(.horizontal, getRelativeWidth(27.0))
                            Divider()
                                .frame(width: getRelativeWidth(343.0),
                                       height: getRelativeHeight(1.0), alignment: .center)
                                .background(ColorConstants.Gray200)
                                .padding(.top, getRelativeHeight(16.0))
                                .padding(.leading, getRelativeWidth(27.0))
                                .padding(.trailing, getRelativeWidth(20.0))
                            HStack {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(16.0),
                                           height: getRelativeWidth(16.0), alignment: .top)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.Green401))
                                Text(StringConstants.kLblMyReports)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(84.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(16.0))
                            }
                            .frame(width: getRelativeWidth(116.0), height: getRelativeHeight(17.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(10.0))
                            .padding(.horizontal, getRelativeWidth(27.0))
                            Divider()
                                .frame(width: getRelativeWidth(343.0),
                                       height: getRelativeHeight(1.0), alignment: .center)
                                .background(ColorConstants.Gray200)
                                .padding(.top, getRelativeHeight(15.0))
                                .padding(.leading, getRelativeWidth(27.0))
                                .padding(.trailing, getRelativeWidth(20.0))
                            HStack {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(16.0),
                                           height: getRelativeWidth(16.0), alignment: .top)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.Green601))
                                Text(StringConstants.kMsgMyEmergencyCo)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(185.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(16.0))
                            }
                            .frame(width: getRelativeWidth(217.0), height: getRelativeHeight(17.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(10.0))
                            .padding(.horizontal, getRelativeWidth(27.0))
                            Divider()
                                .frame(width: getRelativeWidth(343.0),
                                       height: getRelativeHeight(1.0), alignment: .center)
                                .background(ColorConstants.Gray200)
                                .padding(.top, getRelativeHeight(15.0))
                                .padding(.leading, getRelativeWidth(27.0))
                                .padding(.trailing, getRelativeWidth(20.0))
                        }
                        Group {
                            HStack {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(16.0),
                                           height: getRelativeWidth(16.0), alignment: .top)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.Green401))
                                Text(StringConstants.kLblHelp)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(36.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(16.0))
                            }
                            .frame(width: getRelativeWidth(68.0), height: getRelativeHeight(17.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(10.0))
                            .padding(.horizontal, getRelativeWidth(27.0))
                            Divider()
                                .frame(width: getRelativeWidth(343.0),
                                       height: getRelativeHeight(1.0), alignment: .center)
                                .background(ColorConstants.Gray200)
                                .padding(.top, getRelativeHeight(15.0))
                                .padding(.leading, getRelativeWidth(27.0))
                                .padding(.trailing, getRelativeWidth(20.0))
                            HStack {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(16.0),
                                           height: getRelativeWidth(16.0), alignment: .top)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(ColorConstants.Green601))
                                Text(StringConstants.kLblLogout)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(54.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(16.0))
                                    .onTapGesture {
                                        profileViewModel.nextScreen = "LoginView"
                                    }
                            }
                            .frame(width: getRelativeWidth(86.0), height: getRelativeHeight(17.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(10.0))
                            .padding(.horizontal, getRelativeWidth(27.0))
                            Divider()
                                .frame(width: getRelativeWidth(343.0),
                                       height: getRelativeHeight(1.0), alignment: .center)
                                .background(ColorConstants.Gray200)
                                .padding(.top, getRelativeHeight(15.0))
                                .padding(.leading, getRelativeWidth(27.0))
                                .padding(.trailing, getRelativeWidth(20.0))
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(615.0),
                           alignment: .leading)
                    Text("tabbar")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(86.0), alignment: .leading)
                        .background(ColorConstants.Bluegray50)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: LoginView(),
                                   tag: "LoginView",
                                   selection: $profileViewModel.nextScreen,
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
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
