import SwiftUI

struct ReportmodeView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var frameText: String = ""
    @State private var languageText: String = ""
    @State private var frameoneText: String = ""
    @State private var labelthreeText: String = ""
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblBack)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(49.0), height: getRelativeHeight(20.0),
                           alignment: .topLeading)
                    .padding(.trailing)
            }
            .frame(width: getRelativeWidth(322.0), height: getRelativeHeight(20.0),
                   alignment: .center)
            .padding(.horizontal, getRelativeWidth(29.0))
            VStack {
                Text(StringConstants.kLblReportAPerson)
                    .font(FontScheme.kInterBlack(size: getRelativeHeight(30.0)))
                    .fontWeight(.black)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(239.0), height: getRelativeHeight(30.0),
                           alignment: .topLeading)
                    .padding(.leading, getRelativeWidth(46.0))
                    .padding(.trailing, getRelativeWidth(37.0))
            }
            .frame(width: getRelativeWidth(322.0), height: getRelativeHeight(30.0),
                   alignment: .center)
            .padding(.top, getRelativeHeight(13.0))
            .padding(.horizontal, getRelativeWidth(29.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgYourNameRequ)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(164.0), height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                    .padding(.horizontal, getRelativeWidth(17.0))
            }
            .frame(width: getRelativeWidth(322.0), height: getRelativeHeight(16.0),
                   alignment: .center)
            .padding(.top, getRelativeHeight(21.0))
            .padding(.horizontal, getRelativeWidth(29.0))
            VStack {
                HStack {
                    TextField(StringConstants.kLblEnterYourName, text: $frameText)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                        .foregroundColor(ColorConstants.Bluegray100)
                        .padding()
                        .keyboardType(.alphabet)
                }
                .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(48.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                        bottomRight: 5.0)
                        .stroke(ColorConstants.Gray300,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0)
                        .fill(ColorConstants.WhiteA700))
                .padding(.leading, getRelativeWidth(17.0))
            }
            .frame(width: getRelativeWidth(322.0), height: getRelativeHeight(48.0),
                   alignment: .center)
            .padding(.horizontal, getRelativeWidth(29.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgYourPhoneNumb)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(235.0), height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                    .padding(.horizontal, getRelativeWidth(17.0))
            }
            .frame(width: getRelativeWidth(322.0), height: getRelativeHeight(16.0),
                   alignment: .center)
            .padding(.top, getRelativeHeight(26.0))
            .padding(.horizontal, getRelativeWidth(29.0))
            VStack {
                HStack {
                    TextField(StringConstants.kMsgEnterYourNum, text: $languageText)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                        .foregroundColor(ColorConstants.Bluegray100)
                        .padding()
                        .keyboardType(.numberPad)
                }
                .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(48.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                        bottomRight: 5.0)
                        .stroke(ColorConstants.Gray300,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0)
                        .fill(ColorConstants.WhiteA700))
                .padding(.leading, getRelativeWidth(17.0))
            }
            .frame(width: getRelativeWidth(322.0), height: getRelativeHeight(48.0),
                   alignment: .center)
            .padding(.horizontal, getRelativeWidth(29.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblYourEmail)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(80.0), height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                    .padding(.horizontal, getRelativeWidth(16.0))
            }
            .frame(width: getRelativeWidth(322.0), height: getRelativeHeight(16.0),
                   alignment: .center)
            .padding(.top, getRelativeHeight(16.0))
            .padding(.horizontal, getRelativeWidth(29.0))
            VStack {
                HStack {
                    TextField(StringConstants.kMsgEnterYourEmai3, text: $frameoneText)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                        .foregroundColor(ColorConstants.Bluegray100)
                        .padding()
                        .keyboardType(.emailAddress)
                }
                .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(48.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                        bottomRight: 5.0)
                        .stroke(ColorConstants.Gray300,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0)
                        .fill(ColorConstants.WhiteA700))
                .padding(.leading, getRelativeWidth(10.0))
                HStack {
                    TextField(StringConstants.kLbl00, text: $labelthreeText)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                        .foregroundColor(ColorConstants.Black900)
                        .padding()
                }
                .frame(width: getRelativeWidth(303.0), height: getRelativeHeight(190.0),
                       alignment: .topLeading)
                .padding(.top, getRelativeHeight(7.0))
                .padding(.bottom, getRelativeHeight(10.0))
                .padding(.trailing, getRelativeWidth(10.0))
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
                            .padding(.top, getRelativeHeight(43.0))
                            .padding(.leading, getRelativeWidth(10.0))
                    }
                })
                .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(51.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 25.5, topRight: 25.5, bottomLeft: 25.5,
                                           bottomRight: 25.5)
                        .fill(ColorConstants.WhiteA700))
                .padding(.top, getRelativeHeight(43.0))
                .padding(.leading, getRelativeWidth(10.0))
                Text(StringConstants.kLblReturnToMenu)
                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(116.0), height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(18.0))
                    .padding(.horizontal, getRelativeWidth(10.0))
            }
            .frame(width: getRelativeWidth(322.0), height: getRelativeHeight(407.0),
                   alignment: .center)
            .padding(.top, getRelativeHeight(5.0))
            .padding(.horizontal, getRelativeWidth(29.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(LinearGradient(gradient: Gradient(colors: [ColorConstants.CyanA700,
                                                               ColorConstants.LightGreenA101]),
            startPoint: .topLeading, endPoint: .bottomTrailing))
        .hideNavigationBar()
    }
}

struct ReportmodeView_Previews: PreviewProvider {
    static var previews: some View {
        ReportmodeView()
    }
}
