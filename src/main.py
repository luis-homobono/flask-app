from core.app import app
import os

if __name__ == '__main__':
    port = os.environ.get('PORT', 5000)
    app.run(host='0.0.0.0', port=port)
    # from waitress import serve
    # serve(app, host="0.0.0.0", port=8080)