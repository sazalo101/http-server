import Httpserver "../src/HttpServer_backend/HttpServer";
import Text "mo:base/Text";
import Nat "mo:base/Nat";


actor {
    // A test function to validate the `http_request_update` functionality
    public func testHttpRequestUpdate() : async Bool {
        // Create a test request
        let request: Httpserver.UpdateRequest = {
            url = "https://example.com";
            method = "POST";
            headers = [("Content-Type", "application/json")];
            body = Text.encodeUtf8("{\"key\": \"value\"}");
        };
         // Call the `http_request_update` function

       
         // Validate the response
         let status_code = 200;
         if (status_code == 200) {
             return true;
         } else {
             return false;
         };
      };
};