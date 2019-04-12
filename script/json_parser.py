#!/usr/bin/env python

import json
import sys

# Try to load up pygments, otherwise just create a dummy function
try:
    from pygments import highlight
    from pygments.lexers import JavascriptLexer
    from pygments.formatters import Terminal256Formatter
    jsl = JavascriptLexer()
    tf = Terminal256Formatter()
    def pygment(x): return highlight(x, jsl, tf)
except ImportError:
    def pygment(x): return x

for idx, line in enumerate(sys.stdin):
    print('*' * 50)
    try:
        line = json.loads(line)
        formatted = json.dumps(line, indent=4, sort_keys=True)
        print(pygment(formatted))
    except ValueError:
        print('!' * 10 + 'Not valid JSON' + '!' * 10)
        print(line)
