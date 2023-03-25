import SwiftUI

struct SignupView: View {
    @StateObject var signupViewModel = SignupViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text(StringConstants.kLblSignUp)
                        .font(FontScheme.kInterBlack(size: getRelativeHeight(32.0)))
                        .fontWeight(.black)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(118.0), height: getRelativeHeight(32.0),
                               alignment: .topLeading)
                        .padding(.horizontal, getRelativeWidth(23.0))
                    Text(StringConstants.kLblAddAPhoto)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(14.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(84.0), height: getRelativeHeight(14.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(13.0))
                        .padding(.horizontal, getRelativeWidth(23.0))
                    ZStack(alignment: .bottomTrailing) {
                        Image("img_user1")
                            .resizable()
                            .frame(width: getRelativeWidth(95.0), height: getRelativeWidth(95.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        ZStack(alignment: .leading) {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(17.0),
                                       height: getRelativeHeight(18.0), alignment: .bottomTrailing)
                                .background(ColorConstants.WhiteA700)
                                .padding(.top, getRelativeHeight(4.0))
                                .padding(.leading, getRelativeWidth(4.0))
                            Image("img_editinfo1_24x24")
                                .resizable()
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeWidth(24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .bottomTrailing)
                        .padding(.top, getRelativeHeight(71.0))
                        .padding(.leading, getRelativeWidth(71.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(95.0), height: getRelativeWidth(95.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(6.0))
                    .padding(.horizontal, getRelativeWidth(23.0))
                    Text(StringConstants.kMsgPleaseNoteTha)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(265.0), height: getRelativeHeight(29.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.horizontal, getRelativeWidth(23.0))
                }
                .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(197.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(129.0))
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
                        .padding(.leading, getRelativeWidth(4.0))
                        .padding(.trailing, getRelativeWidth(4.0))
                }
                .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(16.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(13.0))
                .padding(.horizontal, getRelativeWidth(39.0))
                VStack {
                    Group {
                        HStack {
                            TextField(StringConstants.kMsgEnterYourEmai2,
                                      text: $signupViewModel.frameText)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                                .foregroundColor(ColorConstants.Bluegray100)
                                .padding()
                                .keyboardType(.emailAddress)
                        }
                        .onChange(of: signupViewModel.frameText) { newValue in

                            signupViewModel.isValidFrameText = newValue
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
                        .padding(.horizontal, getRelativeWidth(4.0))
                        if !signupViewModel.isValidFrameText {
                            Text("Please enter valid email.")
                                .foregroundColor(Color.red)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                                .frame(width: getRelativeWidth(305.0),
                                       height: getRelativeHeight(48.0), alignment: .center)
                        }
                    }
                    ZStack(alignment: .leading) {
                        Text(StringConstants.kLblGetStarted)
                            .font(FontScheme.kInterExtraBold(size: getRelativeHeight(20.0)))
                            .fontWeight(.heavy)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                            .padding(.bottom, getRelativeHeight(40.11))
                            .padding(.leading, getRelativeWidth(92.57))
                            .padding(.trailing, getRelativeWidth(99.43))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblYourPassword)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(115.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.trailing)
                            Group {
                                HStack {
                                    SecureField(StringConstants.kMsgEnterYourPass2,
                                                text: $signupViewModel.frameoneText)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(14.0)))
                                        .foregroundColor(ColorConstants.Bluegray100)
                                        .padding()
                                        .keyboardType(.default)
                                }
                                .onChange(of: signupViewModel.frameoneText) { newValue in

                                    signupViewModel.isValidFrameoneText = newValue
                                        .isValidPassword(isMandatory: true)
                                }
                                .frame(width: getRelativeWidth(305.0),
                                       height: getRelativeHeight(48.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                        bottomLeft: 5.0,
                                                        bottomRight: 5.0)
                                        .stroke(ColorConstants.Gray300,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0)
                                        .fill(ColorConstants.WhiteA700))
                                if !signupViewModel.isValidFrameoneText {
                                    Text("Please enter valid password.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(14.0)))
                                        .frame(width: getRelativeWidth(305.0),
                                               height: getRelativeHeight(48.0), alignment: .leading)
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(67.0),
                               alignment: .leading)
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(67.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(13.0))
                    .padding(.horizontal, getRelativeWidth(4.0))
                    HStack {
                        Text(StringConstants.kLblNext)
                            .font(FontScheme.kInterExtraBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.heavy)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(45.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(17.0))
                            .padding(.leading, getRelativeWidth(133.0))
                        Image("img_arrow2")
                            .resizable()
                            .frame(width: getRelativeWidth(22.0), height: getRelativeHeight(3.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(26.0))
                            .padding(.leading, getRelativeWidth(6.0))
                            .padding(.trailing, getRelativeWidth(105.0))
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(51.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 25.5, topRight: 25.5, bottomLeft: 25.5,
                                               bottomRight: 25.5)
                            .fill(ColorConstants.Green401))
                    .padding(.top, getRelativeHeight(41.0))
                    VStack {
                        Text(StringConstants.kMsgAlreadyHaveAn)
                            .font(FontScheme.kNunitoRegular(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(250.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(21.0))
                        HStack {
                            Divider()
                                .frame(width: getRelativeWidth(93.0),
                                       height: getRelativeHeight(1.0), alignment: .top)
                                .background(ColorConstants.Gray500)
                                .padding(.top, getRelativeHeight(6.0))
                                .padding(.bottom, getRelativeHeight(9.0))
                            Spacer()
                            Text(StringConstants.kLblSignInWith)
                                .font(FontScheme.kNunitoRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(86.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                            Spacer()
                            Divider()
                                .frame(width: getRelativeWidth(93.0),
                                       height: getRelativeHeight(1.0), alignment: .top)
                                .background(ColorConstants.Gray500)
                                .padding(.top, getRelativeHeight(7.0))
                                .padding(.bottom, getRelativeHeight(9.0))
                        }
                        .frame(width: getRelativeWidth(306.0), height: getRelativeHeight(17.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(24.0))
                        HStack {
                            Button(action: {}, label: {
                                Image("img_logosfacebook")
                            })
                            .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(45.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 2.0, topRight: 2.0, bottomLeft: 2.0,
                                                       bottomRight: 2.0)
                                    .fill(ColorConstants.Indigo700))
                            Image("img_grommeticonsg")
                                .resizable()
                                .frame(width: getRelativeWidth(43.0),
                                       height: getRelativeHeight(45.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(27.0))
                        }
                        .frame(width: getRelativeWidth(114.0), height: getRelativeHeight(45.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(20.0))
                        .padding(.horizontal, getRelativeWidth(21.0))
                    }
                    .frame(width: getRelativeWidth(306.0), height: getRelativeHeight(124.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(25.0))
                    .padding(.leading, getRelativeWidth(4.0))
                }
                .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(371.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(5.0))
                .padding(.horizontal, getRelativeWidth(39.0))
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

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
