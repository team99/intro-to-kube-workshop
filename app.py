import logging
import tornado.ioloop
import tornado.web
import tornado.log


PORT = 8080


class MainHandler(tornado.web.RequestHandler):
    def get(self):
        self.write("Hello, world")


def make_app():
    return tornado.web.Application(
        [
            (r"/", MainHandler),
        ]
    )


if __name__ == "__main__":
    tornado.log.enable_pretty_logging()
    logging.info(f"App starting at port {PORT}")
    app = make_app()
    app.listen(PORT)
    tornado.ioloop.IOLoop.current().start()
