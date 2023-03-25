import SwiftUI

struct ReportmodeTwoView: View {
    @StateObject var reportmodeTwoViewModel = ReportmodeTwoViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .trailing, spacing: 0) {
                    VStack(alignment: .trailing, spacing: 0) {
                        HStack {
                            HStack {
                                Image("img_941")
                                    .resizable()
                                    .frame(width: getRelativeWidth(28.0),
                                           height: getRelativeHeight(11.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(16.0))
                                Spacer()
                                ZStack(alignment: .bottomTrailing) {
                                    Image("img_notch")
                                        .resizable()
                                        .frame(width: getRelativeWidth(219.0),
                                               height: getRelativeHeight(27.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.trailing, getRelativeWidth(63.0))
                                    Image("img_rightside")
                                        .resizable()
                                        .frame(width: getRelativeWidth(66.0),
                                               height: getRelativeHeight(11.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(16.33))
                                        .padding(.leading, getRelativeWidth(215.67))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(282.0),
                                       height: getRelativeHeight(27.0), alignment: .center)
                            }
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(27.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(27.0),
                               alignment: .leading)
                        .padding(.leading)
                        .padding(.leading)
                    }
                    .frame(width: getRelativeWidth(345.0), height: getRelativeHeight(27.0),
                           alignment: .leading)
                    VStack {
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                Group {
                                    Text(StringConstants.kLblReportAPerson)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(30.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(232.0),
                                               height: getRelativeHeight(30.0),
                                               alignment: .topLeading)
                                        .padding(.horizontal, getRelativeWidth(17.0))
                                    Text(StringConstants.kMsgYourNameRequ)
                                        .font(FontScheme
                                            .kInterMedium(size: getRelativeHeight(10.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(102.0),
                                               height: getRelativeHeight(12.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(39.0))
                                        .padding(.horizontal, getRelativeWidth(44.0))
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(339.0),
                                               height: getRelativeHeight(47.0), alignment: .center)
                                        .background(ColorConstants.Bluegray100)
                                        .padding(.top, getRelativeHeight(14.0))
                                        .padding(.leading, getRelativeWidth(6.0))
                                    Text(StringConstants.kMsgYourPhoneNumb)
                                        .font(FontScheme
                                            .kInterMedium(size: getRelativeHeight(10.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(145.0),
                                               height: getRelativeHeight(12.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(5.0))
                                        .padding(.horizontal, getRelativeWidth(22.0))
                                    ZStack(alignment: .center) {
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(339.0),
                                                   height: getRelativeHeight(47.0),
                                                   alignment: .center)
                                            .background(ColorConstants.Bluegray100)
                                            .padding(.bottom, getRelativeHeight(233.0))
                                            .padding(.leading, getRelativeWidth(6.0))
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(339.0),
                                                   height: getRelativeHeight(47.0),
                                                   alignment: .center)
                                            .background(ColorConstants.Bluegray100)
                                            .padding(.bottom, getRelativeHeight(163.0))
                                            .padding(.leading, getRelativeWidth(6.0))
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(339.0),
                                                   height: getRelativeHeight(47.0),
                                                   alignment: .center)
                                            .background(ColorConstants.Bluegray100)
                                            .padding(.top, getRelativeHeight(148.0))
                                            .padding(.leading, getRelativeWidth(6.0))
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(339.0),
                                                   height: getRelativeHeight(47.0),
                                                   alignment: .center)
                                            .background(ColorConstants.Bluegray100)
                                            .padding(.top, getRelativeHeight(233.0))
                                            .padding(.leading, getRelativeWidth(6.0))
                                        Text(StringConstants.kMsgYourEmailReq)
                                            .font(FontScheme
                                                .kInterMedium(size: getRelativeHeight(10.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(101.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                            .padding(.bottom, getRelativeHeight(214.0))
                                            .padding(.trailing, getRelativeWidth(199.07))
                                        Text(StringConstants.kMsgPerpetratorSN)
                                            .font(FontScheme
                                                .kInterMedium(size: getRelativeHeight(10.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(141.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(8.08))
                                            .padding(.trailing, getRelativeWidth(195.92))
                                        VStack {
                                            Text(StringConstants.kMsgIncludePreviou)
                                                .font(FontScheme
                                                    .kInterMedium(size: getRelativeHeight(10.0)))
                                                .fontWeight(.medium)
                                                .foregroundColor(ColorConstants.WhiteA700)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(169.0),
                                                       height: getRelativeHeight(12.0),
                                                       alignment: .topLeading)
                                            Text(StringConstants.kLblPartyAttended)
                                                .font(FontScheme
                                                    .kInterMedium(size: getRelativeHeight(10.0)))
                                                .fontWeight(.medium)
                                                .foregroundColor(ColorConstants.WhiteA700)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(72.0),
                                                       height: getRelativeHeight(12.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(9.0))
                                                .padding(.horizontal, getRelativeWidth(28.0))
                                        }
                                        .frame(width: getRelativeWidth(169.0),
                                               height: getRelativeHeight(34.0),
                                               alignment: .bottomLeading)
                                        .padding(.top, getRelativeHeight(195.0))
                                        .padding(.trailing, getRelativeWidth(168.9))
                                        VStack {
                                            Text(StringConstants.kLblReportSent)
                                                .font(FontScheme
                                                    .kInterSemiBold(size: getRelativeHeight(30.0)))
                                                .fontWeight(.semibold)
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(170.0),
                                                       height: getRelativeHeight(30.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(38.0))
                                                .padding(.horizontal, getRelativeWidth(16.0))
                                            Text(StringConstants.kMsgYourReportHas2)
                                                .font(FontScheme
                                                    .kInterMedium(size: getRelativeHeight(16.0)))
                                                .fontWeight(.medium)
                                                .foregroundColor(ColorConstants.Gray700)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(261.0),
                                                       height: getRelativeHeight(16.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(18.0))
                                                .padding(.horizontal, getRelativeWidth(16.0))
                                            Button(action: {
                                                reportmodeTwoViewModel.nextScreen = "Emergency1View"
                                            }, label: {
                                                HStack(spacing: 0) {
                                                    Text(StringConstants.kLblReturnToMenu)
                                                        .font(FontScheme
                                                            .kInterSemiBold(size: getRelativeHeight(16.0)))
                                                        .fontWeight(.semibold)
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(30.0))
                                                        .padding(.vertical, getRelativeHeight(17.0))
                                                        .foregroundColor(ColorConstants.WhiteA700)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.center)
                                                        .frame(width: getRelativeWidth(311.0),
                                                               height: getRelativeHeight(51.0),
                                                               alignment: .center)
                                                        .background(RoundedCorners(topLeft: 25.5,
                                                                                   topRight: 25.5,
                                                                                   bottomLeft: 25.5,
                                                                                   bottomRight: 25.5)
                                                                .fill(ColorConstants.Green401))
                                                        .padding(.top, getRelativeHeight(39.0))
                                                        .padding(.bottom, getRelativeHeight(36.0))
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(16.0))
                                                }
                                            })
                                            .frame(width: getRelativeWidth(311.0),
                                                   height: getRelativeHeight(51.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 25.5,
                                                                       topRight: 25.5,
                                                                       bottomLeft: 25.5,
                                                                       bottomRight: 25.5)
                                                    .fill(ColorConstants.Green401))
                                            .padding(.top, getRelativeHeight(39.0))
                                            .padding(.bottom, getRelativeHeight(36.0))
                                            .padding(.horizontal, getRelativeWidth(16.0))
                                        }
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(230.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(ColorConstants.WhiteA700))
                                        .shadow(color: ColorConstants.Indigo9003f, radius: 20, x: 0,
                                                y: 2)
                                        .padding(.bottom, getRelativeHeight(38.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(345.0),
                                           height: getRelativeHeight(280.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(5.0))
                                    Text(StringConstants.kMsgDescriptionRe)
                                        .font(FontScheme
                                            .kInterMedium(size: getRelativeHeight(10.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(105.0),
                                               height: getRelativeHeight(12.0), alignment: .center)
                                        .padding(.top, getRelativeHeight(9.0))
                                        .padding(.leading, getRelativeWidth(6.0))
                                        .padding(.trailing, getRelativeWidth(10.0))
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(339.0),
                                               height: getRelativeHeight(205.0), alignment: .center)
                                        .background(ColorConstants.Bluegray100)
                                        .padding(.leading, getRelativeWidth(5.0))
                                    Button(action: {}, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kMsgClickHereToA)
                                                .font(FontScheme
                                                    .kInterSemiBold(size: getRelativeHeight(16.0)))
                                                .fontWeight(.semibold)
                                                .padding(.horizontal, getRelativeWidth(30.0))
                                                .padding(.vertical, getRelativeHeight(16.0))
                                                .foregroundColor(ColorConstants.Green400)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(344.0),
                                                       height: getRelativeHeight(51.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 25.5,
                                                                           topRight: 25.5,
                                                                           bottomLeft: 25.5,
                                                                           bottomRight: 25.5)
                                                        .fill(ColorConstants.WhiteA700))
                                                .padding(.top, getRelativeHeight(29.0))
                                        }
                                    })
                                    .frame(width: getRelativeWidth(344.0),
                                           height: getRelativeHeight(51.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                               bottomLeft: 25.5, bottomRight: 25.5)
                                            .fill(ColorConstants.WhiteA700))
                                    .padding(.top, getRelativeHeight(29.0))
                                }
                                Group {
                                    Text(StringConstants.kMsgWhatActionDo)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(256.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(15.0))
                                        .padding(.horizontal, getRelativeWidth(33.0))
                                    Button(action: {}, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kLblReportToHost)
                                                .font(FontScheme
                                                    .kInterSemiBold(size: getRelativeHeight(16.0)))
                                                .fontWeight(.semibold)
                                                .padding(.horizontal, getRelativeWidth(30.0))
                                                .padding(.vertical, getRelativeHeight(17.0))
                                                .foregroundColor(ColorConstants.Green400)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(311.0),
                                                       height: getRelativeHeight(51.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 25.5,
                                                                           topRight: 25.5,
                                                                           bottomLeft: 25.5,
                                                                           bottomRight: 25.5)
                                                        .fill(ColorConstants.WhiteA700))
                                                .padding(.top, getRelativeHeight(20.0))
                                                .padding(.horizontal, getRelativeWidth(17.0))
                                        }
                                    })
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(51.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                               bottomLeft: 25.5, bottomRight: 25.5)
                                            .fill(ColorConstants.WhiteA700))
                                    .padding(.top, getRelativeHeight(20.0))
                                    .padding(.horizontal, getRelativeWidth(17.0))
                                    Button(action: {}, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kLblReportToUsfpd)
                                                .font(FontScheme
                                                    .kInterSemiBold(size: getRelativeHeight(16.0)))
                                                .fontWeight(.semibold)
                                                .padding(.horizontal, getRelativeWidth(30.0))
                                                .padding(.vertical, getRelativeHeight(17.0))
                                                .foregroundColor(ColorConstants.Green400)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(311.0),
                                                       height: getRelativeHeight(51.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 25.5,
                                                                           topRight: 25.5,
                                                                           bottomLeft: 25.5,
                                                                           bottomRight: 25.5)
                                                        .fill(ColorConstants.WhiteA700))
                                                .padding(.top, getRelativeHeight(15.0))
                                                .padding(.horizontal, getRelativeWidth(17.0))
                                        }
                                    })
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(51.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                               bottomLeft: 25.5, bottomRight: 25.5)
                                            .fill(ColorConstants.WhiteA700))
                                    .padding(.top, getRelativeHeight(15.0))
                                    .padding(.horizontal, getRelativeWidth(17.0))
                                    Text(StringConstants.kLblReturnToMenu)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(116.0),
                                               height: getRelativeHeight(16.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(27.0))
                                        .padding(.horizontal, getRelativeWidth(17.0))
                                        .onTapGesture {
                                            reportmodeTwoViewModel.nextScreen = "Emergency1View"
                                        }
                                }
                            }
                            .frame(width: getRelativeWidth(345.0), alignment: .topLeading)
                        }
                    }
                    .frame(width: getRelativeWidth(345.0), height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                }
                .frame(width: getRelativeWidth(345.0), alignment: .topLeading)
                .background(ColorConstants.Green400)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: Emergency1View(),
                                   tag: "Emergency1View",
                                   selection: $reportmodeTwoViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Green400)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct ReportmodeTwoView_Previews: PreviewProvider {
    static var previews: some View {
        ReportmodeTwoView()
    }
}
