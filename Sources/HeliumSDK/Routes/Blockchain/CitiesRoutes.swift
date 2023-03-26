//
//  CitiesRoutes.swift
//


enum CitiesRoutes {
    static let listHotspotCities = BaseRoute(method: .get, path: "v1/cities")
    static let cityForCityID = BaseRoute(method: .get, path: "v1/cities/%@")
    static let listHotspotsForACity = BaseRoute(method: .get, path: "v1/cities/%@/hotspots")
}
