//
//  PointView.swift
//  Democracity
//
//  Created by Rafiq Messai on 08/04/2022.
//

import Foundation
import MapKit

class PointView: MKMarkerAnnotationView {
  override var annotation: MKAnnotation? {
    willSet {
      // 1
      guard let artwork = newValue as? Point else {
        return
      }
      canShowCallout = true
      calloutOffset = CGPoint(x: -5, y: 5)
      rightCalloutAccessoryView = UIButton(type: .detailDisclosure)

      // 2
      markerTintColor = artwork.color
      if let letter = artwork.discipline?.first {
        glyphText = String(letter)
      }
    }
  }
}
