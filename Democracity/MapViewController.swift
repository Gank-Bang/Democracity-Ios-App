//
//  MapViewController.swift
//  Democracity
//
//  Created by Rafiq Messai on 06/04/2022.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialLocation = CLLocation(latitude: 48.849209, longitude: 2.389601)
        let franceCenter = CLLocation(latitude: 47.087613 , longitude: 2.477542)
        //let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
        mapView.centerToLocation(initialLocation)
        
//    Constraint the camera of the Map

//        let region = MKCoordinateRegion(
//          center: franceCenter.coordinate,
//          latitudinalMeters: 500000,
//          longitudinalMeters: 500000)
//        mapView.setCameraBoundary(
//          MKMapView.CameraBoundary(coordinateRegion: region),
//          animated: true)
//
//        let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 10000000)
//        mapView.setCameraZoomRange(zoomRange, animated: true)
        
        var GrandEst = (Point.addPoint(title: "Grand Est", locationName: "Alsace Champagne-Ardenne Lorraine", discipline: "",     coordinateLat: 48.41, coordinateLong: 5.37))
        var Nouvelle_Aquitaine = (Point.addPoint(title: "Nouvelle-Aquitaine", locationName: "Aquitaine Limousin Poitou-Charentes", discipline: "",   coordinateLat: 45.11, coordinateLong: 0.11))
        var Auvergne_Rhône_Alpes = (Point.addPoint(title: "Auvergne-Rhône-Alpes", locationName: "", discipline: "",                  coordinateLat: 45.30, coordinateLong: 4.32))
        var Bourgogne_Franche_Comté = (Point.addPoint(title: "Bourgogne-Franche-Comté", locationName: "", discipline: "",                coordinateLat: 47.14, coordinateLong: 4.48))
        var Bretagne = (Point.addPoint(title: "Bretagne", locationName: "la", discipline: "",                              coordinateLat: 48.10, coordinateLong: -2.5))
        var Centre_Val_de_Loire = (Point.addPoint(title: "Centre-Val de Loire", locationName: "", discipline: "",                  coordinateLat: 47.28, coordinateLong: 1.41))
        var Corse = (Point.addPoint(title: "Corse", locationName: "", discipline: "",                                  coordinateLat: 42.08, coordinateLong: 9.06))
        var Île_de_France = (Point.addPoint(title: "Île-de-France", locationName: "", discipline: "",                         coordinateLat: 48.42, coordinateLong: 2.30))
        var Occitanie = (Point.addPoint(title: "Occitanie", locationName: "Languedoc-Roussillon Midi-Pyrénées", discipline: "",     coordinateLat: 43.42, coordinateLong: 2.08))
        var Haut_de_France = (Point.addPoint(title: "Haut-de-France", locationName: "Nord-Pas-de-Calais Picardie", discipline: "",            coordinateLat: 49.57, coordinateLong: 2.46))
        var Normandie = (Point.addPoint(title: "Normandie", locationName: "", discipline: "",                              coordinateLat: 49.07, coordinateLong: 0.06))
        var Pays_de_la_Loire = (Point.addPoint(title: "Pays de la Loire", locationName: "", discipline: "",                       coordinateLat: 47.28, coordinateLong: -0.49))
        var Provence_Alpes_Côte = (Point.addPoint(title: "Provence-Alpes-Côte d'Azur", locationName: "", discipline: "",             coordinateLat: 43.57, coordinateLong: 6.03))
        mapView.addAnnotation(GrandEst)
        mapView.addAnnotation(Nouvelle_Aquitaine)
        mapView.addAnnotation(Auvergne_Rhône_Alpes)
        mapView.addAnnotation(Bourgogne_Franche_Comté)
        mapView.addAnnotation(Bretagne)
        mapView.addAnnotation(Centre_Val_de_Loire)
        mapView.addAnnotation(Corse)
        mapView.addAnnotation(Île_de_France)
        mapView.addAnnotation(Occitanie)
        mapView.addAnnotation(Haut_de_France)
        mapView.addAnnotation(Normandie)
        mapView.addAnnotation(Pays_de_la_Loire)
        mapView.addAnnotation(Provence_Alpes_Côte)
        
        GrandEst.color = UIColor.orange
        
        mapView.register(
          PointView.self,
          forAnnotationViewWithReuseIdentifier:
            MKMapViewDefaultAnnotationViewReuseIdentifier)
        
//        Alsace Champagne-Ardenne Lorraine      5°37'10 E    48°41'21
//        Aquitaine Limousin Poitou-Charentes    0°11'52 E    45°11'32
//        Auvergne Rhône-Alpes                   4°32'17 E    45°30'57
//        Bourgogne Franche-Comté                4°48'33 E    47°14'07
//        Bretagne                               2°50'19 O    48°10'47
//        Centre-Val de Loire                    1°41'07 E    47°28'50
//        Corse                                  9°06'19 E    42°08'59
//        Île-de-France                          2°30'17 E    48°42'33
//        Languedoc-Roussillon Midi-Pyrénées     2°08'14 E    43°42'08
//        Nord-Pas-de-Calais Picardie            2°46'31 E    49°57'58
//        Normandie                              0°06'24 E    49°07'16
//        Pays de la Loire                       0°49'26 O    47°28'29
//        Provence-Alpes-Côte d'Azur             6°03'12 E    43°57'18
    
    }
    
    
}


private extension MKMapView {
  func centerToLocation(
    _ location: CLLocation,
    regionRadius: CLLocationDistance = 2000
  ) {
    let coordinateRegion = MKCoordinateRegion(
      center: location.coordinate,
      latitudinalMeters: regionRadius,
      longitudinalMeters: regionRadius)
    setRegion(coordinateRegion, animated: true)
  }
}
