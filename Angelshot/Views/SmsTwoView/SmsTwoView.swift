import SwiftUI

struct SmsTwoView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing) {
                VStack {
                    Text(StringConstants.kLblBack)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(58.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                        .padding(.trailing, getRelativeWidth(10.0))
                    Image("img_email1")
                        .resizable()
                        .frame(width: getRelativeWidth(250.0), height: getRelativeWidth(250.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(102.0))
                        .padding(.horizontal, getRelativeWidth(10.0))
                    Text(StringConstants.kMsgWeWillSendAn)
                        .font(FontScheme.kInterBlack(size: getRelativeHeight(16.0)))
                        .fontWeight(.black)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(310.0), height: getRelativeHeight(37.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(24.0))
                        .padding(.horizontal, getRelativeWidth(10.0))
                    Text(StringConstants.kMsgDoYouWantTo)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(16.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(8.0))
                        .padding(.horizontal, getRelativeWidth(10.0))
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
                        Text(StringConstants.kLblReturnToMenu)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Green401)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(116.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(17.0))
                            .padding(.horizontal, getRelativeWidth(105.0))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(84.0),
                           alignment: .center)
                    .clipShape(Capsule())
                    .padding(.top, getRelativeHeight(12.0))
                    .padding(.leading, getRelativeWidth(5.0))
                }
                .frame(width: getRelativeWidth(332.0), height: getRelativeHeight(559.0),
                       alignment: .center)
                .padding(.horizontal, getRelativeWidth(29.0))
                Image("img_iosstatusbar")
                    .resizable()
                    .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(28.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .padding(.leading, getRelativeWidth(33.45))
                Image("img_rectangle249_65x390")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(65.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                VStack {
                    VStack {
                        Text(StringConstants.kLblSmsSent)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(30.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(35.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                        Text(StringConstants.kMsgYourLocationH)
                            .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(292.0), height: getRelativeHeight(38.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(18.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblReturnToMenu)
                                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(17.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(51.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                               bottomLeft: 25.5, bottomRight: 25.5)
                                            .fill(ColorConstants.Green401))
                                    .padding(.vertical, getRelativeHeight(21.0))
                                    .padding(.horizontal, getRelativeWidth(16.0))
                            }
                        })
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(51.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 25.5, topRight: 25.5, bottomLeft: 25.5,
                                                   bottomRight: 25.5)
                                .fill(ColorConstants.Green401))
                        .padding(.vertical, getRelativeHeight(21.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(230.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0)
                            .fill(ColorConstants.WhiteA700))
                    .shadow(color: ColorConstants.Indigo9003f, radius: 20, x: 0, y: 2)
                    .padding(.vertical, getRelativeHeight(311.0))
                    .padding(.leading, getRelativeWidth(26.0))
                    .padding(.trailing, getRelativeWidth(21.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                       alignment: .topLeading)
                .background(RoundedCorners(topLeft: 34.0, topRight: 34.0, bottomLeft: 34.0,
                                           bottomRight: 34.0)
                        .fill(ColorConstants.Gray500Cc))
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

struct SmsTwoView_Previews: PreviewProvider {
    static var previews: some View {
        SmsTwoView()
    }
}
