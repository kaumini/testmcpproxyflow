import ballerina/mcp;

listener mcp:StreamableHttpListener mcpListener = new (8080);

@mcp:StreamableHttpServiceConfig {info: {name: "test mcp proxy", version: "1.0.0"}}
service mcp:StreamableHttpService /mcp on mcpListener {
    remote function thetool1() returns string {
        return "the first tool";
    }

}
