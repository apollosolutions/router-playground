fn supergraph_service(service) {
  let request_callback = |request| {
      print("Supergraph service: Client request received");
  };

  let response_callback = |response| {
      print("Supergraph service: Client response ready to send");
  };

  service.map_request(request_callback);
  service.map_response(response_callback);
}

fn router_service(service) {
  let request_callback = |request| {
    let claims = request.context["apollo_authentication::JWT::claims"];
    if claims != () {
        let authorization = claims["authorization"];

        if authorization == "proven" {
          claims["scope"] = "user:registered";
          request.context["apollo_authentication::JWT::claims"] = claims;
        }
    }
  };
  service.map_request(request_callback);
}
