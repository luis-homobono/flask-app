from flask import Flask, request, jsonify
from config import DevConfig

app = Flask(__name__)
app.config.from_object(DevConfig)

@app.route('/api/v1/')
def home():
    app.logger.info(f'Request path {request.path}')
    response = jsonify({'msg': 'App version 1'})
    return response