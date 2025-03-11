//
//  Star.swift
//  Lumeo
//
//  Created by Elvis Rexha on 11/03/2025.
//

import SwiftUI

struct Star: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.55178*width, y: 0.4535*height))
        path.addLine(to: CGPoint(x: 0.50269*width, y: 0.15549*height))
        path.addLine(to: CGPoint(x: 0.4536*width, y: 0.4535*height))
        path.addLine(to: CGPoint(x: 0.15559*width, y: 0.50259*height))
        path.addLine(to: CGPoint(x: 0.4536*width, y: 0.55168*height))
        path.addLine(to: CGPoint(x: 0.50269*width, y: 0.8497*height))
        path.addLine(to: CGPoint(x: 0.55178*width, y: 0.55168*height))
        path.addLine(to: CGPoint(x: 0.8498*width, y: 0.50259*height))
        path.addLine(to: CGPoint(x: 0.55178*width, y: 0.4535*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.94985*width, y: 0.50259*height))
        path.addLine(to: CGPoint(x: 0.56593*width, y: 0.56583*height))
        path.addLine(to: CGPoint(x: 0.50269*width, y: 0.94975*height))
        path.addLine(to: CGPoint(x: 0.43946*width, y: 0.56583*height))
        path.addLine(to: CGPoint(x: 0.05554*width, y: 0.50259*height))
        path.addLine(to: CGPoint(x: 0.43946*width, y: 0.43936*height))
        path.addLine(to: CGPoint(x: 0.50269*width, y: 0.05544*height))
        path.addLine(to: CGPoint(x: 0.56593*width, y: 0.43936*height))
        path.addLine(to: CGPoint(x: 0.94985*width, y: 0.50259*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.59853*width, y: 0.50229*height))
        path.addLine(to: CGPoint(x: 0.54944*width, y: 0.20427*height))
        path.addLine(to: CGPoint(x: 0.50035*width, y: 0.50229*height))
        path.addLine(to: CGPoint(x: 0.20233*width, y: 0.55137*height))
        path.addLine(to: CGPoint(x: 0.50035*width, y: 0.60046*height))
        path.addLine(to: CGPoint(x: 0.54944*width, y: 0.89848*height))
        path.addLine(to: CGPoint(x: 0.59853*width, y: 0.60046*height))
        path.addLine(to: CGPoint(x: 0.89654*width, y: 0.55137*height))
        path.addLine(to: CGPoint(x: 0.59853*width, y: 0.50229*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.99659*width, y: 0.55137*height))
        path.addLine(to: CGPoint(x: 0.61268*width, y: 0.61461*height))
        path.addLine(to: CGPoint(x: 0.54944*width, y: 0.99853*height))
        path.addLine(to: CGPoint(x: 0.4862*width, y: 0.61461*height))
        path.addLine(to: CGPoint(x: 0.10229*width, y: 0.55137*height))
        path.addLine(to: CGPoint(x: 0.4862*width, y: 0.48814*height))
        path.addLine(to: CGPoint(x: 0.54944*width, y: 0.10422*height))
        path.addLine(to: CGPoint(x: 0.61268*width, y: 0.48814*height))
        path.addLine(to: CGPoint(x: 0.99659*width, y: 0.55137*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.45188*width, y: 0.00259*height))
        path.addLine(to: CGPoint(x: 0.51512*width, y: 0.38651*height))
        path.addLine(to: CGPoint(x: 0.89903*width, y: 0.44975*height))
        path.addLine(to: CGPoint(x: 0.51512*width, y: 0.51298*height))
        path.addLine(to: CGPoint(x: 0.45188*width, y: 0.8969*height))
        path.addLine(to: CGPoint(x: 0.38864*width, y: 0.51298*height))
        path.addLine(to: CGPoint(x: 0.00473*width, y: 0.44975*height))
        path.addLine(to: CGPoint(x: 0.38864*width, y: 0.38651*height))
        path.addLine(to: CGPoint(x: 0.45188*width, y: 0.00259*height))
        path.closeSubpath()
        return path
    }
}


#Preview {
    Star()
        .frame(width: 100, height: 100)
}
