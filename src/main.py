from flask import Flask
import os


app = Flask(__name__)

@app.route("/")
def hello_world():
   msg = os.environ.get("MESSAGE_ACCUEIL", "Message par défaut")
   return f"<h1>{msg}</h1>"

if __name__ == "__main__":
   app.run(host="0.0.0.0", port=5000)

