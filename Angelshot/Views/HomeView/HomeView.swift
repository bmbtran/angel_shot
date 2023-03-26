import SwiftUI

struct HomeView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                VStack(alignment: .leading, spacing: 0) {
                    ZStack(alignment: .leading) {
                        Image("img_iosstatusbar")
                            .resizable()
                            .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(28.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.bottom, getRelativeHeight(37.0))
                            .padding(.leading, getRelativeWidth(33.45))
                        Image("img_rectangle249")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(65.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(65.0),
                           alignment: .leading)
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Text(StringConstants.kMsgHelloVictoria)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(20.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(194.0),
                                       height: getRelativeHeight(43.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(25.0))
                            Spacer()
                            Image("img_ellipse7")
                                .resizable()
                                .frame(width: getRelativeWidth(90.0),
                                       height: getRelativeWidth(90.0), alignment: .center)
                                .scaledToFit()
                                .clipShape(Circle())
                                .clipShape(Circle())
                        }
                        .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(90.0),
                               alignment: .center)
                        Text(StringConstants.kMsgHowCanWeHelp)
                            .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(215.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(25.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 1, id: \.self) { index in
                                        RowmakeafakecalCell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(345.0), alignment: .leading)
                        .padding(.top, getRelativeHeight(21.0))
                        HStack {
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblSOSMode)
                                    .font(FontScheme.kInterExtraBold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.heavy)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(112.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.trailing)
                                Text(StringConstants.kMsgThisWillTrigg)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(213.0),
                                           height: getRelativeHeight(34.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(5.0))
                            }
                            .frame(width: getRelativeWidth(213.0), height: getRelativeHeight(59.0),
                                   alignment: .top)
                            .padding(.vertical, getRelativeHeight(11.0))
                            .padding(.leading, getRelativeWidth(11.0))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(80.0),
                                       height: getRelativeWidth(80.0), alignment: .center)
                                .background(ColorConstants.WhiteA700)
                                .padding(.top, getRelativeHeight(22.0))
                                .padding(.bottom, getRelativeHeight(25.0))
                                .padding(.leading, getRelativeWidth(19.0))
                        }
                        .frame(width: getRelativeWidth(345.0), height: getRelativeHeight(127.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                            .Pink900,
                                        ColorConstants
                                            .Red4004f]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing)))
                        .padding(.top, getRelativeHeight(8.0))
                    }
                    .frame(width: getRelativeWidth(345.0), height: getRelativeHeight(541.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(30.0))
                    .padding(.horizontal, getRelativeWidth(18.0))
                    Text("tabbar")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(86.0), alignment: .leading)
                        .background(ColorConstants.Bluegray50)
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                       alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                Text("tabbar")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(83.0),
                           alignment: .leading)
                    .background(ColorConstants.Bluegray50)
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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
