import SwiftUI

struct MapView: View {
    @StateObject var mapViewModel = MapViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        VStack {
                            VStack {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(32.0),
                                           height: getRelativeHeight(4.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                               bottomLeft: 2.0, bottomRight: 2.0)
                                            .fill(ColorConstants.Gray200))
                                    .padding(.top, getRelativeHeight(16.0))
                                    .padding(.horizontal, getRelativeWidth(31.0))
                                Text(StringConstants.kLblHelpWanted)
                                    .font(FontScheme.kInterExtraBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.heavy)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(153.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(23.0))
                                    .padding(.horizontal, getRelativeWidth(31.0))
                                Image("img_image")
                                    .resizable()
                                    .frame(width: getRelativeWidth(79.0),
                                           height: getRelativeWidth(79.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
                                    .padding(.top, getRelativeHeight(5.0))
                                    .padding(.horizontal, getRelativeWidth(31.0))
                                Text(StringConstants.kMsgUserSarahBull)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Gray700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(297.0),
                                           height: getRelativeHeight(57.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(7.0))
                                    .padding(.horizontal, getRelativeWidth(31.0))
                                VStack {
                                    Button(action: {}, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kLblAccept)
                                                .font(FontScheme
                                                    .kInterSemiBold(size: getRelativeHeight(16.0)))
                                                .fontWeight(.semibold)
                                                .padding(.horizontal, getRelativeWidth(30.0))
                                                .padding(.vertical, getRelativeHeight(17.0))
                                                .foregroundColor(ColorConstants.WhiteA700)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(327.0),
                                                       height: getRelativeHeight(51.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 25.5,
                                                                           topRight: 25.5,
                                                                           bottomLeft: 25.5,
                                                                           bottomRight: 25.5)
                                                        .fill(ColorConstants.Green401))
                                        }
                                    })
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(51.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                               bottomLeft: 25.5, bottomRight: 25.5)
                                            .fill(ColorConstants.Green401))
                                    Text(StringConstants.kLblDecline)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Green401)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(56.0),
                                               height: getRelativeHeight(16.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(15.0))
                                        .padding(.horizontal, getRelativeWidth(135.0))
                                }
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(82.0), alignment: .center)
                                .clipShape(Capsule())
                                .padding(.top, getRelativeHeight(21.0))
                                .padding(.bottom, getRelativeHeight(20.0))
                                .padding(.horizontal, getRelativeWidth(31.0))
                            }
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(489.0), alignment: .leading)
                            .background(RoundedCorners(topLeft: 33.0, topRight: 33.0)
                                .fill(ColorConstants.WhiteA700))
                            .shadow(color: ColorConstants.Black9003f, radius: 20, x: 0, y: 2)
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(489.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(489.0),
                           alignment: .leading)
                    VStack {
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(389.0), height: getRelativeHeight(86.0),
                                   alignment: .center)
                            .background(ColorConstants.Bluegray50)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(86.0),
                           alignment: .leading)
                    .padding(.bottom, getRelativeHeight(47.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(402.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: HomeView(),
                                   tag: "HomeView",
                                   selection: $mapViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ProfileView(),
                                   tag: "ProfileView",
                                   selection: $mapViewModel.nextScreen,
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

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
