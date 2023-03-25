import SwiftUI

struct ProfileView: View {
    @StateObject var profileViewModel = ProfileViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                Group {
                    VStack(alignment: .leading, spacing: 0) {
                        ZStack(alignment: .topLeading) {
                            Image("img_profiletab")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(103.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.bottom, getRelativeHeight(217.0))
                            VStack {
                                HStack {
                                    HStack {
                                        Image("img_941")
                                            .resizable()
                                            .frame(width: getRelativeWidth(28.0),
                                                   height: getRelativeHeight(11.0),
                                                   alignment: .center)
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
                                .frame(width: getRelativeWidth(326.0),
                                       height: getRelativeHeight(28.0), alignment: .leading)
                                .padding(.horizontal, getRelativeWidth(22.0))
                                Text(StringConstants.kLblProfile)
                                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(30.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(94.0),
                                           height: getRelativeHeight(30.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(39.0))
                                    .padding(.horizontal, getRelativeWidth(40.0))
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
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(331.0),
                               alignment: .leading)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(331.0),
                           alignment: .leading)
                    VStack {
                        Text(StringConstants.kMsgVictoriaRobert2)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(30.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(272.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(57.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(30.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(15.0))
                    VStack(alignment: .leading, spacing: 0) {
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
                        .padding(.horizontal, getRelativeWidth(27.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(19.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(26.0))
                    VStack {
                        Divider()
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Gray200)
                            .padding(.leading, getRelativeWidth(27.0))
                            .padding(.trailing, getRelativeWidth(20.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(1.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(16.0))
                    VStack(alignment: .leading, spacing: 0) {
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
                        .padding(.horizontal, getRelativeWidth(27.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(10.0))
                    VStack {
                        Divider()
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Gray200)
                            .padding(.leading, getRelativeWidth(27.0))
                            .padding(.trailing, getRelativeWidth(20.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(1.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(15.0))
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(16.0),
                                       height: getRelativeWidth(16.0), alignment: .top)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(ColorConstants.Green600))
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
                        .padding(.horizontal, getRelativeWidth(27.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(10.0))
                    VStack {
                        Divider()
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Gray200)
                            .padding(.leading, getRelativeWidth(27.0))
                            .padding(.trailing, getRelativeWidth(20.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(1.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(15.0))
                }
                Group {
                    VStack(alignment: .leading, spacing: 0) {
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
                        .padding(.horizontal, getRelativeWidth(27.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(10.0))
                    VStack {
                        Divider()
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Gray200)
                            .padding(.leading, getRelativeWidth(27.0))
                            .padding(.trailing, getRelativeWidth(20.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(1.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(15.0))
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(16.0),
                                       height: getRelativeWidth(16.0), alignment: .top)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(ColorConstants.Green600))
                            Text(StringConstants.kLblLogout)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(54.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: getRelativeWidth(86.0), height: getRelativeHeight(17.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(27.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(10.0))
                    VStack {
                        Divider()
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Gray200)
                            .padding(.leading, getRelativeWidth(27.0))
                            .padding(.trailing, getRelativeWidth(20.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(1.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(15.0))
                }
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
