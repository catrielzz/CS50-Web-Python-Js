from flask import Flask

# Esta es una variable que va ser fuente de esta aplicacion web y va ser llamada
# despues.
app = Flask(__name__)
app.config['TEMPLATES_AUTO_RELOAD'] = True
app.config['TESTING'] = True
app.config['ENV'] = "development"

@app.route("/")
def index():
    return "Hello, World!"
