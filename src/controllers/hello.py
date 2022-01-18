from flask import Blueprint, request

app = Blueprint('hello', __name__)

@app.route('/hello')
def hello():
    return { 'message' : "Hello World, I'm hello!!" }

@app.route('/say_name', methods=['POST'])
def sayHello():
    return request.form['name']