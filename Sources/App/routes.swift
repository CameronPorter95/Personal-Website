import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
  router.get("/") { request -> Future<View> in
    
    let data = Data(title: "Cameron Porter's Website", body: "More will come soon!")
    return try request.view().render("HomePage", data)
  }
}

struct Data: Encodable {
  let title: String
  let body: String
}
