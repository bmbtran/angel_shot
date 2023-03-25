import FloatingLabelTextFieldSwiftUI
import SwiftUI

struct LoginView: View {
    @StateObject var loginViewModel = LoginViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack {
                        Text(StringConstants.kLblLogIn2)
                            .font(FontScheme.kInterBlack(size: getRelativeHeight(32.0)))
                            .fontWeight(.black)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(92.0), height: getRelativeHeight(32.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(109.0))
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(32.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(129.0))
                    .padding(.horizontal, getRelativeWidth(38.0))
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
                    .padding(.top, getRelativeHeight(18.0))
                    .padding(.horizontal, getRelativeWidth(38.0))
                    VStack {
                        FloatingLabelTextField($loginViewModel.frameText1,
                                               placeholder: StringConstants.kMsgEnterYourEmai)
                            .textFont(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .placeholderFont(FontScheme
                                .kInterRegular(size: getRelativeHeight(14.0)))
                            .textColor(ColorConstants.Bluegray100)
                            .selectedTextColor(ColorConstants.Bluegray100)
                            .placeholderColor(ColorConstants.Bluegray100)
                            .addValidation(.init(condition: loginViewModel.isValidFrameText1,
                                                 errorMessage: "Please enter valid email."))
                            .isShowError(true)
                            .errorColor(.red)
                            .keyboardType(.emailAddress)
                            .onChange(of: loginViewModel.frameText1) { newValue in

                                loginViewModel.isValidFrameText1 = newValue
                                    .isValidEmail(isMandatory: true)
                            }
                            .padding(.horizontal)
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
                        ZStack(alignment: .leading) {
                            Text(StringConstants.kLblGetStarted)
                                .font(FontScheme.kInterExtraBold(size: getRelativeHeight(20.0)))
                                .fontWeight(.heavy)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(113.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
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
                                FloatingLabelTextField($loginViewModel.frameoneText1,
                                                       placeholder: StringConstants
                                                           .kMsgEnterYourPass)
                                    .textFont(FontScheme
                                        .kInterRegular(size: getRelativeHeight(14.0)))
                                    .placeholderFont(FontScheme
                                        .kInterRegular(size: getRelativeHeight(14.0)))
                                    .textColor(ColorConstants.Bluegray100)
                                    .selectedTextColor(ColorConstants.Bluegray100)
                                    .placeholderColor(ColorConstants.Bluegray100)
                                    .addValidation(.init(condition: loginViewModel
                                            .isValidFrameoneText1,
                                        errorMessage: "Please enter valid password."))
                                    .isShowError(true)
                                    .errorColor(.red)
                                    .keyboardType(.default)
                                    .onChange(of: loginViewModel.frameoneText1) { newValue in

                                        loginViewModel.isValidFrameoneText1 = newValue
                                            .isValidPassword(isMandatory: true)
                                    }
                                    .padding(.horizontal)
                                    .frame(width: getRelativeWidth(305.0),
                                           height: getRelativeHeight(48.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                            bottomLeft: 5.0, bottomRight: 5.0)
                                            .stroke(ColorConstants.Gray300,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                               bottomLeft: 5.0, bottomRight: 5.0)
                                            .fill(ColorConstants.WhiteA700))
                            }
                            .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(67.0),
                                   alignment: .leading)
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(67.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(13.0))
                        .padding(.horizontal, getRelativeWidth(4.0))
                        Button(action: {
                            loginViewModel.nextScreen = "HomeView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblLogin2)
                                    .font(FontScheme.kInterExtraBold(size: getRelativeHeight(8.0)))
                                    .fontWeight(.heavy)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(311.0),
                                           height: getRelativeHeight(51.0), alignment: .topLeading)
                                    .background(RoundedCorners(topLeft: 25.5, topRight: 25.5,
                                                               bottomLeft: 25.5, bottomRight: 25.5)
                                            .fill(ColorConstants.Green401))
                                    .padding(.vertical, getRelativeHeight(17.0))
                                    .padding(.horizontal, getRelativeWidth(40.0))
                            }
                        })
                        .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(51.0),
                               alignment: .topLeading)
                        .background(RoundedCorners(topLeft: 25.5, topRight: 25.5, bottomLeft: 25.5,
                                                   bottomRight: 25.5)
                                .fill(ColorConstants.Green401))
                        .padding(.vertical, getRelativeHeight(17.0))
                        .padding(.horizontal, getRelativeWidth(40.0))
                        VStack {
                            Button(action: {
                                loginViewModel.nextScreen = "SignupView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kMsgDontHaveAnAc)
                                        .font(FontScheme
                                            .kNunitoRegular(size: getRelativeHeight(16.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(234.0),
                                               height: getRelativeHeight(17.0),
                                               alignment: .topLeading)
                                        .padding(.horizontal, getRelativeWidth(28.0))
                                }
                            })
                            .frame(width: getRelativeWidth(234.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(28.0))
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
                                Button(action: {
                                    loginViewModel.facebookSignIn()
                                }, label: {
                                    Image("img_logosfacebook")
                                })
                                .frame(width: getRelativeWidth(44.0),
                                       height: getRelativeHeight(45.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                           bottomLeft: 2.0, bottomRight: 2.0)
                                        .fill(ColorConstants.Indigo700))
                                Image("img_grommeticonsg")
                                    .resizable()
                                    .frame(width: getRelativeWidth(43.0),
                                           height: getRelativeHeight(45.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(27.0))
                                    .onTapGesture {
                                        loginViewModel.googleSignIn()
                                    }
                            }
                            .frame(width: getRelativeWidth(114.0), height: getRelativeHeight(45.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(28.0))
                        }
                        .frame(width: getRelativeWidth(306.0), height: getRelativeHeight(124.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(25.0))
                        .padding(.leading, getRelativeWidth(4.0))
                    }
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(371.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(5.0))
                    .padding(.horizontal, getRelativeWidth(38.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: HomeView(),
                                   tag: "HomeView",
                                   selection: $loginViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SignupView(),
                                   tag: "SignupView",
                                   selection: $loginViewModel.nextScreen,
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
