<pre>#!/bin/sh
if [ -t 0 ]; then
    if [ -z &quot;$1&quot; ]; then
      echo &quot;usage: tny long_url [custom_keyword]&quot;
      echo &quot;This script needs a url and to customize the short url you can provide a keyword&quot;
echo &quot;Made by Shourjjo Majumder | Website:shourgamer2.tk | Github:github.com/shourgamer2.tk | APi:tny.im&quot;
exit 1
   fi
    url=$1;
else
    while read -r line ; do
      url=$line
    done
fi 
echo `wget -q -O - http://tny.im/yourls-api.php?action=shorturl\&amp;format=simple\&amp;url=$url\&amp;keyword=$2`
</pre>
