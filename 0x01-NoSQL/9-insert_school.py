#!/usr/bin/env python3
"""Write a Python function that inserts a new document in a collection based on kwargs"""



def insert_school(mongo_collection, **kwargs):
    """Insert the document with the provided keyword arguments"""
    result = mongo_collection.insert_one(kwargs)
    return result.inserted_id
