## Input

### nik_boolif(`value:` true, `expected:` true, `output:` 'It works!', `fallback:` '')

Variable | Type | Required | Description 
:------- | :--- | -------- | :----------
value | boolean |  Yes | Boolean value from the database.
expected | boolean | Yes | The expected boolean value in order to return the `output`.
output | varchar | Yes | Will be returned when `value` and `expected` are a match.
fallback | varchar | Optional | Will return `NULL` unless set to a specific `fallback` when `value` and `expected` do not match.


## Installation

By default it will be added to the `public` schema.

## Usage

-  ```SELECT nik_boolif(true, true, 'It works!');``` returns `'It works!'`
-  ```SELECT nik_boolif(false, true, 'It works!');``` returns `NULL`
-  ```SELECT nik_boolif(true, true, 'It works!', 'Oh yeah!');``` returns `'It works!'`
-  ```SELECT nik_boolif(false, true, 'It works!', 'Oh yeah!');``` returns `'Oh yeah!'`

