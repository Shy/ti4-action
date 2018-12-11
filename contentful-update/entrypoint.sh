#!/bin/sh

sh -c "echo 'Triggering rebuild on Netlify via webhook.'"
sh -c "curl -X POST -d {} https://api.netlify.com/build_hooks/5c101b97f880678ed409718d"
