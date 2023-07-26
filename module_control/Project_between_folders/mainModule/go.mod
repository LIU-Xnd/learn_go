module example.com/mainModule

go 1.20

replace example.com/module01 => ../module01

replace example.com/module02 => ../module02

require (
	example.com/module01 v0.0.0-00010101000000-000000000000
	example.com/module02 v0.0.0-00010101000000-000000000000
)
