## Splunk Test Data Files

Each file should have 16 events.  1 `F` entry, 1 `E`, 1 `W` and 13 `I` entries.

You can modify the `created` timestamp and `modified` timestamp of the files to test parsing scenarios.  

For example running `touch -t 200801120000 *.log` will set the `created` timestamp to `January 12, 2008 at 12:00 AM`.

For example running `touch -mt 201212211111 *.log` will set the `modified` timestamp to `December 21, 2012 11:11 AM`.