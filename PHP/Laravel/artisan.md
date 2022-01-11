# artisan

## ルーティング確認
```bash
$ php artisan route:list
+--------+-----------+-------------------+---------------+---------------------------------------------+--------------+
| Domain | Method    | URI               | Name          | Action                                      | Middleware   |
+--------+-----------+-------------------+---------------+---------------------------------------------+--------------+
|        | GET|HEAD  | /                 |               | Closure                                     | web          |
|        | GET|HEAD  | api/user          |               | Closure                                     | api,auth:api |
|        | GET|HEAD  | types             | types.index   | App\Http\Controllers\TypeController@index   | web          |
|        | POST      | types             | types.store   | App\Http\Controllers\TypeController@store   | web          |
|        | GET|HEAD  | types/create      | types.create  | App\Http\Controllers\TypeController@create  | web          |
|        | GET|HEAD  | types/{type}      | types.show    | App\Http\Controllers\TypeController@show    | web          |
|        | PUT|PATCH | types/{type}      | types.update  | App\Http\Controllers\TypeController@update  | web          |
|        | DELETE    | types/{type}      | types.destroy | App\Http\Controllers\TypeController@destroy | web          |
|        | GET|HEAD  | types/{type}/edit | types.edit    | App\Http\Controllers\TypeController@edit    | web          |
+--------+-----------+-------------------+---------------+---------------------------------------------+--------------+
```
