# User API

## `GET /users` 
**response:**
 
- Status Code: 200

Sample Response: 

```json
{
	"first_name": "Bob",
	"last_name": "Jones",
	"username": "bjones",
	"email": "bjones@gmail.com" 
}
```

## `POST /users`
**Body Parameters:**

- first_name: *String*
- last_name: *String*
- username: *String*
- email: *String*

Sample Response: 

- Status Code: 201

```json
{
	"first_name": "Bob",
	"last_name": "Jones",
	"username": "bjones",
	"email": "bjones@gmail.com" 
}
```

## `GET /users/:id/edit`

**response:**
- Status Code: 200

```json
{
	"first_name": "Bob",
	"last_name": "Jones",
	"username": "bjones",
	"email": "bjones@gmail.com" 
}
```

## `PUT /users/:id/put`
**Body Parameters:**

- first_name: *String*
- last_name: *String*
- username: *String*
- email: *String*

Sample Response: 

- Status Code: 200

```json
{
	"first_name": "Bobby",
	"last_name": "Jones",
	"username": "bjones",
	"email": "bjones@gmail.com" 
}
```

## `DELETE /users/:id`
**response:**
- Status Code: 200

```json
{
	"first_name": "Bob",
	"last_name": "Jones",
	"username": "bjones",
	"email": "bjones@gmail.com" 
}
```