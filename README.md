# sharky_ck
A Ck script for Fivem ESX Framework

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]



# sharky_ck
This resource, its a Character Kill system for fivem, to eliminate via [MYSQL-Async](https://github.com/brouznouf/fivem-mysql-async) a character.

### Requirements
* MYSQL-Async
  * [MYSQL-Async](https://github.com/brouznouf/fivem-mysql-async)

## Download & Installation

### Using Git
```
cd resources
git clone https://github.com/Sharky123-Dev/sharky_ck [esx]/sharky_ck
```

### Manually
- Download https://github.com/Sharky123-Dev/sharky_ck/archives/sharky_ck.zip
- Put it in the `[esx]` directory


## Installation
- Add this to your server.cfg:

```
start sharky_ck
```

- If you want to change the deleted rows, open the archive and search for this line 
```
-- Delete Tables with identifier.
function DeleteTables(identifier)
    MySQL.Async.execute('DELETE FROM users WHERE identifier=@identifier',
  { ['identifier'] = identifier},
  function(affectedRows)
  end)

  MySQL.Async.execute('DELETE FROM owned_vehicles WHERE owner=@identifier',
  { ['identifier'] = identifier},
  function(affectedRows)
  end)
end

```

- Then copy this.

```
 MySQL.Async.execute('DELETE FROM owned_vehicles WHERE owner=@identifier',
  { ['identifier'] = identifier},
  function(affectedRows)
  end)
```
- Then change this line and put there the table you want to delete on the ck.
```
'DELETE FROM owned_vehicles WHERE owner=@identifier',

```

```
'DELETE FROM money WHERE owner=@identifier',

```

- And paste it then put it under it, like this.
```
function DeleteTables(identifier)
    MySQL.Async.execute('DELETE FROM users WHERE identifier=@identifier',
  { ['identifier'] = identifier},
  function(affectedRows)
  end)

  MySQL.Async.execute('DELETE FROM owned_vehicles WHERE owner=@identifier',
  { ['identifier'] = identifier},
  function(affectedRows)
  end)
  
  MySQL.Async.execute('DELETE FROM money WHERE owner=@identifier',
  { ['identifier'] = identifier},
  function(affectedRows)
  end)
end
```

- Then you are good to go!


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/Sharky123-Dev/sharky_ck.svg?style=for-the-badge
[contributors-url]: https://github.com/Sharky123-Dev/sharky_ck/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Sharky123-Dev/sharky_ck.svg?style=for-the-badge
[forks-url]: https://github.com/Sharky123-Dev/sharky_ck/network/members
[stars-shield]: https://img.shields.io/github/stars/Sharky123-Dev/sharky_ck.svg?style=for-the-badge
[stars-url]: https://github.com/Sharky123-Dev/sharky_ck//stargazers
[issues-shield]: https://img.shields.io/github/issues/Sharky123-Dev/sharky_ck.svg?style=for-the-badge
[issues-url]: https://github.com/Sharky123-Dev/sharky_ck/issues
[license-shield]: https://img.shields.io/github/license/Sharky123-Dev/sharky_ck.svg?style=for-the-badge
[license-url]: https://github.com/Sharky123-Dev/sharky_ck/blob/master/LICENSE.txt

