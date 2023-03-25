import SwiftUI

struct MapView: View {
    @StateObject var mapViewModel = MapViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack(alignment: .bottomLeading) {
                Image("img_mapsiclemap")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                    .scaledToFit()
                    .clipped()
                VStack {
                    ZStack {}
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(32.0), height: getRelativeHeight(4.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                   bottomRight: 2.0)
                                .fill(ColorConstants.Gray200))
                        .padding(.top, getRelativeHeight(16.0))
                        .padding(.horizontal, getRelativeWidth(31.0))
                    Text(StringConstants.kLblHelpWanted)
                        .font(FontScheme.kInterExtraBold(size: getRelativeHeight(24.0)))
                        .fontWeight(.heavy)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(153.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(23.0))
                        .padding(.horizontal, getRelativeWidth(31.0))
                    Text(StringConstants.kMsgUserSarahBull)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray701)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(297.0), height: getRelativeHeight(57.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(90.0))
                        .padding(.horizontal, getRelativeWidth(31.0))
                    VStack {
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblAccept)
                                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(17.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(51.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                               bottomLeft: 25.5, bottomRight: 25.5)
                                            .fill(ColorConstants.Green401))
                            }
                        })
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(51.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 25.5, topRight: 25.5, bottomLeft: 25.5,
                                                   bottomRight: 25.5)
                                .fill(ColorConstants.Green401))
                        Text(StringConstants.kLblDecline)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Green401)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(56.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(15.0))
                            .padding(.horizontal, getRelativeWidth(135.0))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(82.0),
                           alignment: .center)
                    .clipShape(Capsule())
                    .padding(.vertical, getRelativeHeight(22.0))
                    .padding(.horizontal, getRelativeWidth(31.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(489.0),
                       alignment: .bottomLeading)
                .background(RoundedCorners(topLeft: 33.0, topRight: 33.0)
                    .fill(ColorConstants.WhiteA700))
                .shadow(color: ColorConstants.Black9003f, radius: 20, x: 0, y: 2)
                .padding(.top, getRelativeHeight(355.0))
            }
            .hideNavigationBar()
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

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
