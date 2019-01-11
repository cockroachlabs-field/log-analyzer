# CockroachDB Log File Analyzer with Splunk
This simple project spins up and properly configures a single node Splunk Docker image and monitors a local directory (`docker volume`) for CockroachDB log files.  The intent of this project is to simplify troubleshooting of log files across a multi-node CockroachDB cluster. Since the timestamps included in the current version of CockroachDB log files are not parsed correctly by Splunk out of the box, a number of configurations have been modified to support the CockroachDB format.  Those configurations can be found in the `splunk > conf` directory.

For example, a typical line in a CockroachDB log file looks like this...
```
I181220 15:30:03.971234 1 util/log/clog.go:1176  [config] running on machine: us-central1-node-0003
```

Where the first character is either `I`, `W` or `E`, signifying an `INFO`, `WARN` or `ERROR` statement.  Immediately following the log level is the custom timestamp, which is equivalent to `%y:%m:%d %H:%M:%S.%6N` in standard Unix `strptime()` parlance.  The rest of the log statement is application specific.

## Prerequisites
* Latest Docker edition that supports `docker-compose`.  I use the latest "Docker Desktop" for Mac for my testing.
* A local directory that contains the CockroachDB files you want to index.

## Getting Started
1) Create a `.env` file and place it in the root of this project.  This file should contain one property, `LOCAL_LOG_DIR`, that points to the location on your machine where your CockroachDB `.log` files are stored.  For my testing I've created a `troubleshooting` directory in my home directory (e.g. `/Users/timveil/dev/troubleshooting/logs`).  Create what makes sense for you.
    ```properties
    LOCAL_LOG_DIR=[CHANGE_ME]
    ``` 

2) Run `docker-compose up` or `./run-start.sh` to bring up the Splunk instance and begin indexing your CockroachDB `.log` files.

3) To access the Splunk UI go to `http://localhost:8000`.  The username is `admin` and the password is `roach1234` as specified by the `SPLUNK_PASSWORD` environment variable in the `docker-compose.yml` file.

4) To stop and cleanup, run `./run-clean.sh`.  This will stop Splunk and execute `docker system prune -a -f`.

## Thoughts and Considerations
* This is useful for analyzing a relatively small amount of data given this single node, Docker based approach.  Adjustments could be made to scale this but are beyond the scope of my initial effort.
* The configurations used here, specifically those found in `datetime.xml`, `inputs.conf` and `props.conf` could be easily ported to a proper Splunk environment to enable real-time CockroachDB log parsing, etc.
