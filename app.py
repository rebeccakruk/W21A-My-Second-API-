from flask import Flask, request
import json
from dbhelpers import run_statement, connect_db

app = Flask(__name__)

@app.get('/api/apistore_items')
def get_items(result, limit='3'):
    for i
    result = run_statement("CALL list_items(?)")
    if (type(result) == list):
        result_json = json.dumps(result, default=str)
        items = json.loads(result_json)
        return items
    else:
        return "Something went wrong, please try again"

@app.post('/api/apistore_post')
def post_item():
    new_item = request.json.get('new_item')
    new_description = request.json.get('new_description')
    new_quantity = request.json.get('new_quantity')
    result = run_statement("CALL add_item(?,?,?)", [new_item, new_description, new_quantity])
    if result == None:
        return "You've successfully added item: {}, description: {}, quantity: {} to the store".format(new_item, new_description, new_quantity)
    if(new_item == None):
        return "You must enter a valid item name"
    if (new_description == None):
        return "Please add an item description"
    if (new_quantity == None):
        return "Please included the quantity of items"
    else:
        "Please try again"

@app.patch('/api/apistore_patch')
def update_item():
    item_quantity = "29"
    item_id = "10"
    result = run_statement("CALL adjust_quantity(?,?)", [item_quantity, item_id])
    if result == None:
        return "You've successfully updated the quantity to {}".format(item_quantity)
    
@app.delete('/api/apistore_delete')
def clear_item():
    old_item = request.json.get('old_item')
    result = run_statement("CALL clear_item(?)", [old_item])
    if result == None:
        return "You've successfully deleted: {} from the store.".format(old_item)
    if (old_item == None):
        return "You must enter a valid item id number"
    else:
        "Please try again"

@app.get('/api/apistore_ee')
def get_ee():
    ee_id = '2'
    result = run_statement("CALL ee_info(?)", [ee_id])
    if (type(result) == list):
        result_json = json.dumps(result, default=str)
        employees = json.loads(result_json)
        return result
    else:
        return "Something went wrong, please try again"

@app.post('/api/apistore_new')
def post_new():
    name = 'Kermit thee Frog'
    wage = '25.00'
    result = run_statement("CALL new_ee(?,?)", [name, wage])
    if result == None:
        return "You have successfully added a new employee: {}, at {} per hour.".format(name, wage)
    else:
        return "hmmmm...."
    
@app.patch('/api/apistore_adjust')
def adj_wage():
    ee_id = '7'
    new_wage = '21.00'
    result = run_statement("CALL adj_ee(?,?)", [ee_id, new_wage])
    if result == None:
        return "You have successfully adjusted the hourly wage to {}".format(new_wage)
    else:
        return "Please try again"

@app.delete('/api/apistore_del_ee')
def delete_ee():
    ee_id = '3'
    result = run_statement("CALL clear_ee(?)", [ee_id])
    if result == None:
        return "You have successfully deleted {} from your employees.".format(ee_id)
    else:
        return "hmmm..."

app.run(debug = True)