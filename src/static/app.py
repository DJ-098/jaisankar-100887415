from flask import Flask, render_template

app = Flask(__name__)

# Sample data (you can replace this with your own data)
students = [
    {"name": "Deenadayalan", "id": 100887415},
]

@app.route("/")
def index():
    return render_template("index.html", students=students)

if __name__ == "__main__":
    app.run(debug=True)
