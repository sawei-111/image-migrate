#!/bin/sh

set -x

if [ -s /tmp/images.txt ]; then
  tail /tmp/images.txt | awk '{ 
  if(NF==2){
    dst = $2;
  }else{
    dst = $1;
    gsub(/^[^\/]+\//, "", dst);
    gsub("/", "_", dst);
  }
  print "skopeo copy --multi-arch all docker://"$1" docker://crpi-m1cph3r4d2qrg1q9.cn-hangzhou.personal.cr.aliyuncs.com/dls27/"dst;
}' | xargs -I {} sh -c "{}"
fi
