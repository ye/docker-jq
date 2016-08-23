# docker-jq
Dockerized pre-built jq with minimum footprint

## Build
```bash
$ docker build -t jq:1.5 .
$ docker images
REPOSITORY      TAG      IMAGE ID           CREATED             SIZE
jq              1.5      86c0cab88388       5 minutes ago       7.148 MB
$ docker run jq:1.5
jq - commandline JSON processor [version 1.5]
Usage: jq [options] <jq filter> [file...]

	jq is a tool for processing JSON inputs, applying the
	given filter to its JSON text inputs and producing the
	filter's results as JSON on standard output.
	The simplest filter is ., which is the identity filter,
	copying jq's input to its output unmodified (except for
	formatting).
	For more advanced filters see the jq(1) manpage ("man jq")
	and/or https://stedolan.github.io/jq

	Some of the options include:
	 -c		compact instead of pretty-printed output;
	 -n		use `null` as the single input value;
	 -e		set the exit status code based on the output;
	 -s		read (slurp) all inputs into an array; apply filter to it;
	 -r		output raw strings, not JSON texts;
	 -R		read raw strings, not JSON texts;
	 -C		colorize JSON;
	 -M		monochrome (don't colorize JSON);
	 -S		sort keys of objects on output;
	 --tab	use tabs for indentation;
	 --arg a v	set variable $a to value <v>;
	 --argjson a v	set variable $a to JSON value <v>;
	 --slurpfile a f	set variable $a to an array of JSON texts read from <f>;
	See the manpage for more options.
```

## Usage
```bash
$ cat test.json | docker run --rm -i jq:1.5 jq '.' 
{
  "Hello": "World!"
}

$ docker run --rm -i jq:1.5 jq '.' < test.json
{
  "Hello": "World!"
}
```
