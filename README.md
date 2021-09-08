### SELECT uni_boolif(`value:` true, `expected:` true, `output:` 'It works!', `fallback:` '');

## Input

| Variable | Type |Description | Required |
|:--- |:---- |:----| 
| value | boolean |Boolean value from the database. | Yes |
| expected | boolean | The expected boolean value in order to return the `output`. | Yes | 
| output | varchar | Will be returned when `value` and `expected` are a match.  | Yes |
| fallback | varchar |Will return an empty string unless set to a specific value when `value` and `expected` do not match.| Optional | 

## Installation

By default it will be added to the `public` schema.
