import Debug "mo:base/Debug";
import Nat16 "mo:base/Nat16";
import Option "mo:base/Option";
import Text "mo:base/Text";
import Blob "mo:base/Blob";

import HttpServer "../src/HttpServer_backend/HttpServer";

actor {
    public func runTests() : async () {
        Debug.print("Running tests for HttpServer module");

        // Test Header type
        let header : HttpServer.Header = ("Content-Type", "text/html");
        assert(header.0 == "Content-Type");
        assert(header.1 == "text/html");
        Debug.print("✓ Header type test passed");

        // Test UpdateRequest type
        let updateRequest : HttpServer.UpdateRequest = {
            url = "/test";
            method = "GET";
            headers = [("Accept", "application/json")];
            body = Text.encodeUtf8("");
        };
        assert(updateRequest.url == "/test");
        assert(updateRequest.method == "GET");
        assert(updateRequest.headers[0].0 == "Accept");
        assert(updateRequest.headers[0].1 == "application/json");
        Debug.print("✓ UpdateRequest type test passed");

        // Test Request type
        let request : HttpServer.Request = {
            url = "/test";
            method = "POST";
            headers = [("Content-Type", "application/json")];
            body = Text.encodeUtf8("");
            certificate_version = ?1;
            api_key = ?"secret-key";
        };
        assert(request.url == "/test");
        assert(request.method == "POST");
        assert(request.certificate_version == ?1);
        assert(request.api_key == ?"secret-key");
        Debug.print("✓ Request type test passed");

        // Test UpdateResponse type
        let updateResponse : HttpServer.UpdateResponse = {
            status_code = 200;
            headers = [("Content-Type", "text/plain")];
            body = Text.encodeUtf8("");
            streaming_strategy = null;
        };
        assert(updateResponse.status_code == 200);
        assert(updateResponse.headers[0].0 == "Content-Type");
        assert(updateResponse.headers[0].1 == "text/plain");
        Debug.print("✓ UpdateResponse type test passed");

        // Test Response type
        let response : HttpServer.Response = {
            status_code = 301;
            headers = [("Location", "https://example.com")];
            body = Text.encodeUtf8("");
            streaming_strategy = null;
            upgrade = ?true;
        };
        assert(response.status_code == 301);
        assert(response.headers[0].0 == "Location");
        assert(response.headers[0].1 == "https://example.com");
        assert(response.upgrade == ?true);
        Debug.print("✓ Response type test passed");

        // Test StreamingStrategy type
      
        

    // Keep the existing http_request function for demonstration
    }
};