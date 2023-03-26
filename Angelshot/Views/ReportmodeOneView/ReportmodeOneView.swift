import SwiftUI

struct ReportmodeOneView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var frameText: String = ""
    var body: some View {
        ZStack(alignment: .center) {
            VStack {
                Text(StringConstants.kLblBack)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(49.0), height: getRelativeHeight(20.0),
                           alignment: .topLeading)
                    .padding(.trailing, getRelativeWidth(10.0))
                Text(StringConstants.kLblReportAPerson)
                    .font(FontScheme.kInterBlack(size: getRelativeHeight(30.0)))
                    .fontWeight(.black)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(239.0), height: getRelativeHeight(30.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(5.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                Text(StringConstants.kMsgYourNameRequ)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(164.0), height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(29.0))
                    .padding(.horizontal, getRelativeWidth(17.0))
                HStack {
                    TextField(StringConstants.kLblEnterYourName, text: $frameText)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                        .foregroundColor(ColorConstants.Bluegray100)
                        .padding()
                        .keyboardType(.alphabet)
                }
                .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(48.0),
                       alignment: .trailing)
                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                        bottomRight: 5.0)
                        .stroke(ColorConstants.Gray300,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0)
                        .fill(ColorConstants.WhiteA700))
                .padding(.leading, getRelativeWidth(10.0))
                Text(StringConstants.kMsgYourPhoneNumb)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(235.0), height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(26.0))
                    .padding(.horizontal, getRelativeWidth(17.0))
                VStack {
                    Text(StringConstants.kMsgEnterYourNum)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Bluegray100)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(127.0), height: getRelativeHeight(14.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(18.0))
                        .padding(.bottom, getRelativeHeight(15.0))
                        .padding(.horizontal, getRelativeWidth(15.0))
                }
                .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(48.0),
                       alignment: .trailing)
                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                        bottomRight: 5.0)
                        .stroke(ColorConstants.Gray300,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0)
                        .fill(ColorConstants.WhiteA700))
                .padding(.leading, getRelativeWidth(10.0))
                Text(StringConstants.kLblYourEmail)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(80.0), height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(16.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    Text(StringConstants.kMsgEnterYourEmai3)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Bluegray100)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(107.0), height: getRelativeHeight(14.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(18.0))
                        .padding(.bottom, getRelativeHeight(15.0))
                        .padding(.horizontal, getRelativeWidth(15.0))
                }
                .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(48.0),
                       alignment: .trailing)
                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                        bottomRight: 5.0)
                        .stroke(ColorConstants.Gray300,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0)
                        .fill(ColorConstants.WhiteA700))
                .padding(.top, getRelativeHeight(5.0))
                .padding(.leading, getRelativeWidth(16.0))
            }
            .frame(width: getRelativeWidth(322.0), height: getRelativeHeight(333.0),
                   alignment: .center)
            .padding(.bottom, getRelativeHeight(464.17))
            .padding(.leading, getRelativeWidth(29.0))
            .padding(.trailing, getRelativeWidth(39.0))
            VStack {
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kMsgReportToPolic)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .padding(.horizontal, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(16.0))
                            .foregroundColor(ColorConstants.Green400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(51.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                       bottomLeft: 25.5, bottomRight: 25.5)
                                    .fill(ColorConstants.WhiteA700))
                    }
                })
                .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(51.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 25.5, topRight: 25.5, bottomLeft: 25.5,
                                           bottomRight: 25.5)
                        .fill(ColorConstants.WhiteA700))
                Text(StringConstants.kLblReturnToMenu)
                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(116.0), height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(18.0))
                    .padding(.horizontal, getRelativeWidth(98.0))
            }
            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(85.0),
                   alignment: .center)
            .padding(.top, getRelativeHeight(654.0))
            .padding(.horizontal, getRelativeWidth(39.0))
            Text(StringConstants.kMsgDescriptionRe)
                .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                .fontWeight(.bold)
                .foregroundColor(ColorConstants.Black900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(16.0),
                       alignment: .topLeading)
                .padding(.leading, getRelativeWidth(46.0))
                .padding(.trailing, getRelativeWidth(168.0))
            VStack {
                Text(StringConstants.kMsgBrieflyDescrib)
                    .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Bluegray100)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(188.0), height: getRelativeHeight(14.0),
                           alignment: .topLeading)
                    .padding(.vertical, getRelativeHeight(18.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
            }
            .frame(width: getRelativeWidth(303.0), height: getRelativeHeight(190.0),
                   alignment: .center)
            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0)
                .stroke(ColorConstants.Gray300,
                        lineWidth: 1))
            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                       bottomRight: 5.0)
                    .fill(ColorConstants.WhiteA700))
            .padding(.top, getRelativeHeight(421.0))
            .padding(.horizontal, getRelativeWidth(44.0))
            VStack {
                VStack {
                    Text(StringConstants.kLblReportSent)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(30.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(170.0), height: getRelativeHeight(30.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(38.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                    Text(StringConstants.kMsgYourReportHas)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(271.0), height: getRelativeHeight(19.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(15.0))
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
                                .padding(.vertical, getRelativeHeight(40.0))
                                .padding(.horizontal, getRelativeWidth(16.0))
                        }
                    })
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(51.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 25.5, topRight: 25.5, bottomLeft: 25.5,
                                               bottomRight: 25.5)
                            .fill(ColorConstants.Green401))
                    .padding(.vertical, getRelativeHeight(40.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(230.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0)
                        .fill(ColorConstants.WhiteA700))
                .shadow(color: ColorConstants.Indigo9003f, radius: 20, x: 0, y: 2)
                .padding(.vertical, getRelativeHeight(234.0))
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
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(LinearGradient(gradient: Gradient(colors: [ColorConstants.CyanA700,
                                                               ColorConstants.LightGreenA101]),
            startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

struct ReportmodeOneView_Previews: PreviewProvider {
    static var previews: some View {
        ReportmodeOneView()
    }
}
