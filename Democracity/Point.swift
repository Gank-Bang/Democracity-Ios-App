//
//  Point.swift
//  Democracity
//
//  Created by Rafiq Messai on 08/04/2022.
//

import Foundation
import MapKit

class Point: NSObject, MKAnnotation {
    
    
      let title: String?
      let locationName: String?
      let discipline: String?
      let coordinate: CLLocationCoordinate2D
      var color: UIColor?

      init(
        title: String?,
        locationName: String?,
        discipline: String?,
        coordinate: CLLocationCoordinate2D,
        color: UIColor?
      ) {
        self.title = title
        self.locationName = locationName
        self.discipline = discipline
        self.coordinate = coordinate
        self.color = color

        super.init()
      }

      var subtitle: String? {
        return locationName
      }
    
    
    class func addPoint(title:String,locationName:String,discipline:String,coordinateLat:CLLocationDegrees,coordinateLong:CLLocationDegrees ) -> Point{
        let point = Point(
          title: title,
          locationName: locationName,
          discipline: discipline,
          coordinate: CLLocationCoordinate2D(latitude: coordinateLat, longitude: coordinateLong),
          color: .black)
        
        return point
    }
    
}
