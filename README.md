# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...






1 List of all products
Api Type: Get
Url :  http://localhost:3000/api/v1/product_lists.xml

Response: 
<response code="Success!">
    <products>
        <product>
            <id>1</id>
            <name>mobile</name>
            <description>test</description>
            <unit_price currency="usd">10000.0</unit_price>
            <quantity>10</quantity>
            <created_at>23-07-2018</created_at>
            <updated_at>23-07-2018</updated_at>
        </product>
        <product>
            <id>2</id>
            <name>leptop</name>
            <description>test</description>
            <unit_price currency="usd">100000.0</unit_price>
            <quantity>10</quantity>
            <created_at>23-07-2018</created_at>
            <updated_at>23-07-2018</updated_at>
        </product>
        <product>
            <id>3</id>
            <name>head phone</name>
            <description>test</description>
            <unit_price currency="usd">250.0</unit_price>
            <quantity/>
            <created_at>23-07-2018</created_at>
            <updated_at>23-07-2018</updated_at>
        </product>
    </products>
</response>


Url : http://localhost:3000/api/v1/product_lists.json

Response :  
{
   "products": [
        {
            "id": 1,
            "name": "mobile",
            "description": "test",
            "color": "black",
            "price": "10000.0",
            "quantity": 10,
            "created_at": "23-07-2018",
            "updated_at": "23-07-2018"
        },
        {
            "id": 2,
            "name": "leptop",
            "description": "test",
            "color": "black",
            "price": "100000.0",
            "quantity": 10,
            "created_at": "23-07-2018",
            "updated_at": "23-07-2018"
        },
        {
            "id": 3,
            "name": "head phone",
            "description": "test",
            "color": "white",
            "price": "250.0",
            "quantity": null,
            "created_at": "23-07-2018",
            "updated_at": "23-07-2018"
        }
    ]
}



2. Add new product using post method 

Api Type : Post

Url :    http://localhost:3000/api/v1/add_product.json

Prameters : 

  name : “product 1”  
  description: “test”
  color: “black”
  price : 100
  quantity: 10


api Type: post

Url :    http://localhost:3000/api/v1/add_product.xml



3. Update product using post api

api type: post

Url : http://localhost:3000/api/v1/update_product/7.xml

Prameters : 

  name : “product 2”  
  description: “test”
  color: “black”
  price : 100
  quantity: 10

4. list perticuler one product using id

Api type: get

Url : http://localhost:3000/api/v1/show/7.json

Response : 
"product": {
        "id": 7,
        "name": "test12",
        "description": "test",
        "color": "white",
        "price": "250.0",
        "quantity": 10
    }

5. Delete perticuler product using id

 Api Type: Get

Url: http://localhost:3000/api/v1/destroy/7.xml

Response:

{
    "message": "Product Deleted Successfully",
    "status": "ok",
    "format": "json"
}
# ServiceApi
