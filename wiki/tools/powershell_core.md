# Powershell Core

## commandlets
Commands are called _cmdlets_ and can be discovered via `Get-Command`.

## Scripting

#### special chars
special chars like `\n` can't be used because `\` is used as a separation of directories. Instead use the backtick ```
So `foo``nbar` prints:
```
foo
bar 
```

#### Variables
Have the prefix `$` which is syntactic shugar for `Set-Variable` and other variable related commands

#### here doc/strings
Supports here doc which is prefixed with `@"` and postfixed with `"@` which need to be on a single line:
```
$foo = @"
foo
bar 
"@
```

#### string interpolation
"some $interpolated string"

#### format stings
"format {0} {1} {0}" -f $foo $bar

### arrays
- empty array `$arr = @()`
- array with data `$arr = "foo", "bar"
- append to array: `$arr += "baz"

