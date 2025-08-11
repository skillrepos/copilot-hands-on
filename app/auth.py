from functools import wraps
from flask import request, jsonify

def requires_auth(f):
    """Simple header-based auth: expect 'Authorization: Bearer secret-token'."""
    @wraps(f)
    def decorated(*args, **kwargs):
        token = request.headers.get('Authorization')
        if token != 'Bearer secret-token':
            return jsonify({ "error": "Unauthorized" }), 401
        return f(*args, **kwargs)
    return decorated
