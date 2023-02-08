from flask import Flask, request
import json
from dbhelpers import run_statement, connect_db

app = Flask(__name__)

@app.get('/api/apistore/item')
def get_items():
    result = run_statement("CALL list_items()")
    if (type(result) == list):
        result_json = json.dumps(result, default=str)
        items = json.loads(result_json)
        return items
    else:
        return "Something went wrong, please try again"

@app.post('/api/apistore/item')
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

@app.patch('/api/apistore/item')
def update_item():
    item_quantity = request.json.get('quantity')
    item_id = request.json.get('item_id')
    result = run_statement("CALL adjust_quantity(?,?)", [item_quantity, item_id])
    if result == None:
        return "You've successfully updated the quantity to {}".format(item_quantity)
    
@app.delete('/api/apistore/item')
def clear_item():
    old_item = request.json.get('old_item')
    result = run_statement("CALL clear_item(?)", [old_item])
    if result == None:
        return "You've successfully deleted: {} from the store.".format(old_item)
    if (old_item == None):
        return "You must enter a valid item id number"
    else:
        "Please try again"

@app.get('/api/apistore/employee')
def get_ee():
    ee_id = request.json.get('ee_id')
    result = run_statement("CALL ee_info(?)", [ee_id])
    if result == None:
        return "Please enter a valid employee id"
    elif result != None:
        return result
    else:
        return "Something went wrong, please try again"

@app.post('/api/apistore/employee')
def post_new():
    name = 'lbfsdfarry'
    wage = '25.00'
    # name = request.json.get('name')
    # wage = request.json.get('wage')
    result = run_statement("CALL new_ee(?,?)", [name, wage])
    if result == None:
        return "You have successfully added a new employee: {}, at {} per hour.".format(name, wage)
    else:
        return "hmmmm...."
    
@app.patch('/api/apistore/employee')
def adj_wage():
    ee_id = '7'
    new_wage = '21.00'
    result = run_statement("CALL adj_ee(?,?)", [ee_id, new_wage])
    if result == None:
        return "You have successfully adjusted the hourly wage to {}".format(new_wage)
    else:
        return "Please try again"

@app.delete('/api/apistore/employee')
def delete_ee():
    ee_id = '3'
    result = run_statement("CALL clear_ee(?)", [ee_id])
    if result == None:
        return "You have successfully deleted {} from your employees.".format(ee_id)
    else:
        return "hmmm..."

app.run(debug = True)