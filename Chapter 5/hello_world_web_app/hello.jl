using HTTP

const HOST = ip"0.0.0.0"
const PORT = 9999

router = HTTP.Router()
server = HTTP.Server(router)

HTTP.register!(router, "/", HTTP.HandlerFunction((req, res) -> Response(200, "Hello World")))
HTTP.register!(router, "/bye", HTTP.HandlerFunction((req, res) -> Response(200, "Bye")))
HTTP.register!(router, "*", HTTP.HandlerFunction((req, res) -> Response(404, "Not found")))

HTTP.serve(server, HOST, PORT)