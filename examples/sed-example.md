sed -E '/(.+)proxy/d' ./group_vars/all.yml 

find . -type f -print0 | xargs -0 sed -i -E '/https_proxy/d' 
