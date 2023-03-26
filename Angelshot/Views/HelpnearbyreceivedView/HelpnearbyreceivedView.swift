import SwiftUI

struct HelpnearbyreceivedView: View {
    @StateObject var helpnearbyreceivedViewModel =
        HelpnearbyreceivedViewModel(_isOpen: .constant(false))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text(StringConstants.kLblHelpSent)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(30.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(139.0), height: getRelativeHeight(30.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(38.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                    Text(StringConstants.kMsgYourHelpMessa)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(275.0), height: getRelativeHeight(34.0),
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
                                .padding(.top, getRelativeHeight(21.0))
                                .padding(.bottom, getRelativeHeight(20.0))
                                .padding(.horizontal, getRelativeWidth(16.0))
                        }
                    })
                    .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(51.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 25.5, topRight: 25.5, bottomLeft: 25.5,
                                               bottomRight: 25.5)
                            .fill(ColorConstants.Green401))
                    .padding(.top, getRelativeHeight(21.0))
                    .padding(.bottom, getRelativeHeight(20.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(230.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0)
                        .fill(ColorConstants.WhiteA700))
                .shadow(color: ColorConstants.Indigo9003f, radius: 20, x: 0, y: 2)
                .padding(.vertical, getRelativeHeight(307.0))
                .padding(.horizontal, getRelativeWidth(23.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                   alignment: .topLeading)
            .background(RoundedCorners(topLeft: 34.0, topRight: 34.0, bottomLeft: 34.0,
                                       bottomRight: 34.0))
        }
        .frame(height: UIScreen.main.bounds.height)
        .actionSheet(isPresented: $helpnearbyreceivedViewModel.isActionSheetShow, content: {
            ActionSheet(title: Text("Choose"), buttons: [
                .default(Text("Camera"), action: {
                    if UIImagePickerController.isSourceTypeAvailable(.camera) {
                        helpnearbyreceivedViewModel.imagePickerSource = .camera
                        helpnearbyreceivedViewModel.isImagePickerShow = true
                    } else {
                        helpnearbyreceivedViewModel.showAlert("Error", "Camera is not available!")
                    }
                }),
                .default(Text("Photo Library"), action: {
                    helpnearbyreceivedViewModel.imagePickerSource = .photoLibrary
                    helpnearbyreceivedViewModel.isImagePickerShow = true
                }),
                .destructive(Text("Cancel"))
            ])
        })
        .sheet(isPresented: $helpnearbyreceivedViewModel.isImagePickerShow, content: {
            MediaPicker(sourceType: helpnearbyreceivedViewModel.imagePickerSource,
                        mediaTypes: ["public.image"]) { image, url in
                if let image = image {
                    helpnearbyreceivedViewModel.selectedImage = image
                }
            }
        })
        .hideNavigationBar()
    }
}

struct HelpnearbyreceivedView_Previews: PreviewProvider {
    static var previews: some View {
        HelpnearbyreceivedView()
    }
}
