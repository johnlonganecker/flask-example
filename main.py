from flask import Flask, request, jsonify

app = Flask(__name__)

@app.after_request
def after_request(response):
    header = response.headers
    header['Access-Control-Allow-Origin'] = '*'
    return response

@app.route("/")
def hello():
    return "Hello World"
