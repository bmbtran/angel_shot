import SwiftUI

struct ReportmodeView: View {
    @StateObject var reportmodeViewModel = ReportmodeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack {
                Text(StringConstants.kLblReportAPerson)
                    .font(FontScheme.kInterBlack(size: getRelativeHeight(30.0)))
                    .fontWeight(.black)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(239.0), height: getRelativeHeight(30.0),
                           alignment: .topLeading)
                    .padding(.horizontal, getRelativeWidth(36.0))
            }
            .frame(width: getRelativeWidth(312.0), height: getRelativeHeight(30.0),
                   alignment: .center)
            .padding(.horizontal, getRelativeWidth(39.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgYourNameRequ)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(164.0), height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                    .padding(.leading, getRelativeWidth(7.0))
                    .padding(.trailing, getRelativeWidth(7.0))
            }
            .frame(width: getRelativeWidth(312.0), height: getRelativeHeight(16.0),
                   alignment: .center)
            .padding(.top, getRelativeHeight(29.0))
            .padding(.horizontal, getRelativeWidth(39.0))
            VStack {
                Group {
                    HStack {
                        TextField(StringConstants.kLblEnterYourName,
                                  text: $reportmodeViewModel.frameText)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .foregroundColor(ColorConstants.Bluegray100)
                            .padding()
                            .keyboardType(.alphabet)
                    }
                    .onChange(of: reportmodeViewModel.frameText) { newValue in

                        reportmodeViewModel.isValidFrameText = newValue.isText(isMandatory: false)
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
                    .padding(.leading, getRelativeWidth(7.0))
                    if !reportmodeViewModel.isValidFrameText {
                        Text("Please enter valid text.")
                            .foregroundColor(Color.red)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                    }
                }
            }
            .frame(width: getRelativeWidth(312.0), height: getRelativeHeight(48.0),
                   alignment: .center)
            .padding(.horizontal, getRelativeWidth(39.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgYourPhoneNumb)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(235.0), height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                    .padding(.leading, getRelativeWidth(7.0))
                    .padding(.trailing, getRelativeWidth(7.0))
            }
            .frame(width: getRelativeWidth(312.0), height: getRelativeHeight(16.0),
                   alignment: .center)
            .padding(.top, getRelativeHeight(26.0))
            .padding(.horizontal, getRelativeWidth(39.0))
            VStack {
                Group {
                    HStack {
                        TextField(StringConstants.kMsgEnterYourNum,
                                  text: $reportmodeViewModel.languageText)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .foregroundColor(ColorConstants.Bluegray100)
                            .padding()
                            .keyboardType(.numberPad)
                    }
                    .onChange(of: reportmodeViewModel.languageText) { newValue in

                        reportmodeViewModel.isValidLanguageText = newValue
                            .isNumeric(isMandatory: false)
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
                    .padding(.leading, getRelativeWidth(7.0))
                    if !reportmodeViewModel.isValidLanguageText {
                        Text("Please enter valid number.")
                            .foregroundColor(Color.red)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                    }
                }
            }
            .frame(width: getRelativeWidth(312.0), height: getRelativeHeight(48.0),
                   alignment: .center)
            .padding(.horizontal, getRelativeWidth(39.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblYourEmail)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(80.0), height: getRelativeHeight(16.0),
                           alignment: .topLeading)
                    .padding(.leading, getRelativeWidth(6.0))
                    .padding(.trailing, getRelativeWidth(6.0))
            }
            .frame(width: getRelativeWidth(312.0), height: getRelativeHeight(16.0),
                   alignment: .center)
            .padding(.top, getRelativeHeight(16.0))
            .padding(.horizontal, getRelativeWidth(39.0))
            VStack {
                Group {
                    HStack {
                        TextField(StringConstants.kMsgEnterYourEmai2,
                                  text: $reportmodeViewModel.frameoneText)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .foregroundColor(ColorConstants.Bluegray100)
                            .padding()
                            .keyboardType(.emailAddress)
                    }
                    .onChange(of: reportmodeViewModel.frameoneText) { newValue in

                        reportmodeViewModel.isValidFrameoneText = newValue
                            .isValidEmail(isMandatory: true)
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
                    .padding(.leading, getRelativeWidth(6.0))
                    if !reportmodeViewModel.isValidFrameoneText {
                        Text("Please enter valid email.")
                            .foregroundColor(Color.red)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(48.0),
                                   alignment: .center)
                    }
                }
                ZStack(alignment: .leading) {
                    Text(StringConstants.kMsgDescriptionRe)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(16.0),
                               alignment: .topLeading)
                        .padding(.bottom, getRelativeHeight(166.01))
                        .padding(.trailing, getRelativeWidth(125.0))
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
                           alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                            bottomRight: 5.0)
                            .stroke(ColorConstants.Gray300,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(ColorConstants.WhiteA700))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(303.0), height: getRelativeHeight(190.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(41.0))
                .padding(.horizontal, getRelativeWidth(5.0))
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
                    }
                })
                .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(51.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 25.5, topRight: 25.5, bottomLeft: 25.5,
                                           bottomRight: 25.5)
                        .fill(ColorConstants.WhiteA700))
                .padding(.top, getRelativeHeight(43.0))
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
            .frame(width: getRelativeWidth(312.0), height: getRelativeHeight(407.0),
                   alignment: .center)
            .padding(.top, getRelativeHeight(5.0))
            .padding(.horizontal, getRelativeWidth(39.0))
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
