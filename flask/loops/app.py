from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
   names = ['Yoel', 'Tomas', 'Dario', 'Hernan', 'Matias', 'Nahuel']
   return render_template('index.html', names=names)