from flask import Flask, request
import json
from dbhelpers import run_statement

app = Flask(__name__)

@app.get('/api/apistore/items')
def get_items():
    result = run_statement("CALL list_items()")
    if (type(result) == list):
        result_json = json.dumps(result, default=str)
        items = json.loads(result_json)
        return items
    else:
        return "Something went wrong, please try again"
    
app.run(debug = True)