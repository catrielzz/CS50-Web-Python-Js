from flask import Flask

app = Flask(__name__)

@app.route("/")
def inder():
    return "Hello, world!"

@app.route("/yoel")
def yoel():
    return "Hello, Yoel!"

@app.route("/wea")
def wea():
    return "wea"
