from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    return "Hello, world"

# Se puede definir el tipo de dato y el argumento si se pone entre <type:param>
@app.route("/<string:name>")
def hello(name):
    # el metodo capitalize hace que el primer char del string sea en Mayúscula
    name = name.capitalize()
    return f"<h1>Hello, {name}!</h1>"
