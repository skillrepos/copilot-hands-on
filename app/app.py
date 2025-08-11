from flask import Flask, request, jsonify
from auth import requires_auth
from datastore import DataStore

app = Flask(__name__)
app.config["PROPAGATE_EXCEPTIONS"] = False 
store = DataStore()

@app.route('/items', methods=['GET'])
@requires_auth
def list_items():
    """List all to-do items."""
    return jsonify(store.get_all()), 200

@app.route('/items', methods=['POST'])
@requires_auth
def create_item():
    """Create a new to-do item. Expects JSON { "name": str }."""
    data = request.get_json()
    item = store.create(data['name'])
    return jsonify(item), 201

@app.route('/items/<int:item_id>', methods=['PATCH'])
@requires_auth
def update_item(item_id):
    """Rename an existing item."""
    data = request.get_json()
    item = store.update(item_id, data.get('name'))
    return jsonify(item), 200

@app.route('/items/<int:item_id>', methods=['DELETE'])
@requires_auth
def delete_item(item_id):
    """Delete an item by ID."""
    store.delete(item_id)
    return '', 204

@app.route('/items/count', methods=['GET'])
@requires_auth
def count_items():
    """Return the number of items in the list."""
    count = len(store.get_all())
    return jsonify({"count": count}), 200

if __name__ == '__main__':
    app.run(debug=True)
