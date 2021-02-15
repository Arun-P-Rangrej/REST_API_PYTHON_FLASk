import requests

BASE = "http://127.0.0.1:5000/"

responce = requests.get(BASE + "customers/ANTON")
print(responce.json())
input()
responce = requests.post(BASE + "customers", {"customers_id": "ALFKI","company_name" : "Alfreds Futterkiste","contact_name":"Maria Anders","contact_title" : "Sales Representative","address": "Obere Str. 57","city":"Berlin","region" : "",
"postal_code" : "12209","countary" : "Germany","phone" : "030-0074321","fax" : "030-0076545"}
print(responce)
input()
responce = requests.put(BASE + "customers/ALFKI", {"company_name" : "Alfreds","contact_name":"Maria","contact_title" : "Sales ","address": " Str. 57","city":"Berlin","region" : "",
"postal_code" : "12209","countary" : "Germany","phone" : "030-0074321","fax" : "030-0076545"}
print(responce)
input()
#same for product and orders tables

responce = requests.get(BASE + "orderhistory/ANTON")
print(responce.json())
