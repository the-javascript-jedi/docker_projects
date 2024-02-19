from flask import Flask
import socket

app = Flask(__name__)

@app.route("/")
def home():
    return f"Hello, the Container ID is: {socket.gethostname()}"

if __name__ == "__main__":
    app.run(debug=True)