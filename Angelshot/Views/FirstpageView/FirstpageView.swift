import SwiftUI

struct FirstpageView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack {
                VStack {
                    Text(StringConstants.kLblAngelShot)
                        .font(FontScheme.kInterBlack(size: getRelativeHeight(40.0)))
                        .fontWeight(.black)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(219.0), height: getRelativeHeight(40.0),
                               alignment: .topLeading)
                        .padding(.horizontal, getRelativeWidth(51.0))
                    Text(StringConstants.kMsgWeProtectYou)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(20.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(248.0), height: getRelativeHeight(20.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(9.0))
                        .padding(.horizontal, getRelativeWidth(51.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblGetStarted)
                                .font(FontScheme.kInterExtraBold(size: getRelativeHeight(20.0)))
                                .fontWeight(.heavy)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(21.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(291.0),
                                       height: getRelativeHeight(62.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 31.0, topRight: 31.0,
                                                           bottomLeft: 31.0, bottomRight: 31.0)
                                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                    .LightGreenA100,
                                                ColorConstants
                                                    .CyanA700]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing)))
                                .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                                .padding(.top, getRelativeHeight(32.0))
                                .padding(.leading, getRelativeWidth(51.0))
                                .padding(.trailing, getRelativeWidth(48.0))
                        }
                    })
                    .frame(width: getRelativeWidth(291.0), height: getRelativeHeight(62.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 31.0, topRight: 31.0, bottomLeft: 31.0,
                                               bottomRight: 31.0)
                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                        .LightGreenA100,
                                    ColorConstants.CyanA700]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)))
                    .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                    .padding(.top, getRelativeHeight(32.0))
                    .padding(.leading, getRelativeWidth(51.0))
                    .padding(.trailing, getRelativeWidth(48.0))
                    HStack {
                        Text(StringConstants.kMsgAlreadyAMembe)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(12.0),
                                   alignment: .topLeading)
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblLogIn)
                                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(12.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Green400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(36.0),
                                           height: getRelativeHeight(14.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(6.0))
                            }
                        })
                        .frame(width: getRelativeWidth(36.0), height: getRelativeHeight(14.0),
                               alignment: .topLeading)
                        .padding(.leading, getRelativeWidth(6.0))
                    }
                    .frame(width: getRelativeWidth(155.0), height: getRelativeHeight(15.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(30.0))
                    .padding(.horizontal, getRelativeWidth(51.0))
                    ZStack(alignment: .center) {
                        Image("img_ellipse20")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(256.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(129.0))
                        Image("img_hug1")
                            .resizable()
                            .frame(width: getRelativeWidth(362.0), height: getRelativeHeight(393.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(11.0))
                            .padding(.trailing, getRelativeWidth(17.0))
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(393.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(86.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(688.0),
                       alignment: .leading)
                .background(ColorConstants.WhiteA700)
            }
            .hideNavigationBar()
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(163.0))
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct FirstpageView_Previews: PreviewProvider {
    static var previews: some View {
        FirstpageView()
    }
}
