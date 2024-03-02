from flask import Flask, jsonify
from flask_mysqldb import MySQL
from config import config

app = Flask(__name__)

conn = MySQL(app)

@app.route('/questions', methods=['GET'])
def list_questions():
    cursor = conn.connection.cursor()
    cursor.execute("SELECT * FROM questions")
    nukes = cursor.fetchall()
    cursor.close()
    return jsonify(nukes)

@app.route('/questions/<questionId>', methods=['GET'])
def read_question(questionId):
        cursor = conn.connection.cursor()
        cursor.execute("SELECT * FROM questions WHERE Id = %s", (questionId,))
        data = cursor.fetchone()
        cursor.close()
        return jsonify(data)
    
@app.route('/answers', methods=['GET'])
def list_answers():
    cursor = conn.connection.cursor()
    cursor.execute("SELECT * FROM possibleanswers")
    nukes = cursor.fetchall()
    cursor.close()
    return jsonify(nukes)

@app.route('/answers/<questionId>', methods=['GET'])
def read_answer(questionId):
        cursor = conn.connection.cursor()
        cursor.execute("SELECT * FROM possibleanswers WHERE QuestionId = %s ORDER BY ID", (questionId,))
        data = cursor.fetchall()
        cursor.close()
        return jsonify(data)

if __name__ == '__main__':
    app.config.from_object(config['development'])
    app.run(host='0.0.0.0')
