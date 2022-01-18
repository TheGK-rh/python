from flask import Flask
from controllers import hello

def create_app():
  app = Flask(__name__)
  app.register_blueprint(hello.app)
  return app

app = create_app()

if __name__ == "__main__":
  app.run(debug=True)