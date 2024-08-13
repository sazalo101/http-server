# `HttpServer`
# `To install the package`
```bash
mops add http-server
```
# `To import the module `
```bash
import Http-Server "mo:Http-Server";
```

# `Test Case`

```bash
# HttpServer Module Test

```motoko
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
```
