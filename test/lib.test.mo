import HttpServer "../src/HttpServer_backend/HttpServer";
import Text "mo:base/Text";
actor {
    // A test function to validate the `http_request_update` functionality
    public func testHttpRequestUpdate() : async HttpServer.UpdateRequest {
        // Create a test request
        let request: HttpServer.UpdateRequest = {
            url = "https://example.com";
            method = "POST";
            headers = [("Content-Type", "application/json")];
            body =Text.encodeUtf8("{\"key\": \"value\"}");
        };
        return request;
    };
}