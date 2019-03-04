# bj
BASH Utility to create JSON objects.  

## Support OS
- Linux

## Requirements
- Go 1.1.15

## Installtion
### Build
```sh
$ git clone https://github.com/elemantalcode/bj.git
$ cd bj
$ go install
```

## Usage
```sh
$  bj -p network=$(bj cidr=10.0.0.0/8 subnet=$(bj -a 10.0.0.0/24 10.0.1.0/24 10.0.2.0/24))
{
    "network": {
        "cidr": "10.0.0.0/8",
        "subnet": [
            "10.0.0.0/24",
            "10.0.1.0/24",
            "10.0.2.0/24"
        ]
    }
}

$ bj -h
Usage of bj:
  -a    creates an array of words
  -p    pretty-prints
  -v    show version
```

