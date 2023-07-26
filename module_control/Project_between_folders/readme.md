In my understanding:

To work between folders, i.e., different modules are separated into different folders, it is equivalent to think them as having been uploaded to code warehouse (e.g. github), though in reality they have not. The only change one needs to make is in the `mainModule/` folder, using:

```
>>> go mod tidy
>>> go mod edit -replace example.com/module01=../module01
>>> go mod edit -replace example.com/module02=../module02
```

Then one got `go.mod` that looks like:

```
module example.com/mainModule

go 1.20

replace example.com/module01 => ../module01

replace example.com/module02 => ../module02

require (
        example.com/module01 v0.0.0-00010101000000-000000000000
        example.com/module02 v0.0.0-00010101000000-000000000000
)

```

Once all the modules are uploaded in reality, just remove those `replace`s.