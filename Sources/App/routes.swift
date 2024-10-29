import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    
    app.get("hello", "vapor") { req in
        "Hello, Vapor!!"
    }
    
    app.get("hello", ":name") { req -> String in
        let name = try req.parameters.require("name", as: String.self)
        return "Hello \(name)"
    }
}
