### MacOs Installation challenge ###
Cloned the repo and carry out the instruction

### Bug

```
{"level":"info","ts":1690554668.837752,"caller":"pizza/main.go:38","msg":"initiated zap logger with level: 0"}
{"level":"warn","ts":1690554668.8379982,"caller":"pizza/main.go:43","msg":"Failed to load the dot env file. Continuing with existing environment: open .env: no such file or directory"}
2023/07/28 09:31:09 Could not ping database: dial tcp: lookup port=: no such host
exit status 1
make: *** [run] Error 1

```

renamed the .env.example to .env

``` mv .env.example .env ```

### New Bug

``` {"level":"info","ts":1690559925.062627,"caller":"pizza/main.go:38","msg":"initiated zap logger with level: 0"}
2023/07/28 10:58:45 Could not ping database: dial tcp [::1]:9999: connect: connection refused```


### New Bug

```
Failure while executing; `/bin/launchctl bootstrap gui/501 /opt/homebrew/opt/postgresql@14/homebrew.mxcl.postgresql@14.plist`

```

The above as a result of installing postgresql in MacOs.

Use postgresql installation doc [postgresql](postgresql.org/docs) for proper installation


## New Bug

```make run```


