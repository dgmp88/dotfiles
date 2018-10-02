#!/usr/bin/env python
import json
import sys

for line in sys.stdin:
    print('*' * 50)
    try:
        line = json.loads(line)
        print(json.dumps(line, indent=4, sort_keys=True))
    except ValueError:
        print('!' * 10 + 'Not valid JSON' + '!' * 10)
        print(line)
