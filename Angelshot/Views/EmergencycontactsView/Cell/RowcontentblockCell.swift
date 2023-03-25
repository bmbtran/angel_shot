import SwiftUI

struct RowcontentblockCell: View {
    var body: some View {
        HStack {
            ZStack {}
                .hideNavigationBar()
                .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(50.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0)
                        .fill(ColorConstants.Gray100))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblMom)
                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(37.0), height: getRelativeHeight(16.0),
                           alignment: .leading)
                    .padding(.trailing)
                Text(StringConstants.kMsg656111222)
                    .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(104.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(9.0))
            }
            .frame(width: getRelativeWidth(104.0), height: getRelativeHeight(42.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(16.0))
        }
        .frame(width: getRelativeWidth(170.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct RowcontentblockCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowcontentblockCell()
 }
 } */
