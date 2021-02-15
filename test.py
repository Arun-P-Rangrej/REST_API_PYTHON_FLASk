import requests

BASE = "http://127.0.0.1:5000/"

responce = requests.get(BASE + "customers/ANTON")
print(responce.json())
input()

responce = requests.post(BASE + "customers", {"customers_id": "ALFKI","company_name" : "Alfreds Futterkiste","contact_name":"Maria Anders","contact_title" : "Sales Representative","address": "Obere Str. 57","city":"Berlin","region" : "",
"postal_code" : "12209","countary" : "Germany","phone" : "030-0074321","fax" : "030-0076545"}
print(responce.json())
input()

responce = requests.put(BASE + "customers/ALFKI", {"company_name" : "Alfreds","contact_name":"Maria","contact_title" : "Sales ","address": " Str. 57","city":"Berlin","region" : "",
"postal_code" : "12209","countary" : "Germany","phone" : "030-0074321","fax" : "030-0076545"}
print(responce.json())
input()

'''-------------------------------------------------------------------------------------'''

responce = requests.get(BASE + "products/3")
print(responce.json())
input()

responce = requests.post(BASE + "products", {"ProductID": 111,"ProductName" : "my_Chai","SupplierID":1,"CategoryID" : 1,	"QuantityPerUnit": "10 boxes x 20 bags","UnitPrice":18.00,"UnitsInStock" : 39,
"UnitsOnOrder" : 0,"ReorderLevel" : 10,"Discontinued" : 0}
print(responce.json())
input()

responce = requests.put(BASE + "products/3", {"ProductID": 111,"ProductName" : "TEA","SupplierID":4,"CategoryID" : 1,	"QuantityPerUnit": "20 boxes x 20 bags","UnitPrice":18.00,"UnitsInStock" : 39,
"UnitsOnOrder" : 0,"ReorderLevel" : 10,"Discontinued" : 0}
print(responce.json())
input()

'''-------------------------------------------------------------------------------------'''

#same for order table
responce = requests.get(BASE + "orderhistory/ANTON")
print(responce.json())
