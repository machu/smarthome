#!/bin/bash

COMMAND=$1

echo $1
case $1 in
  on)
    # 照明ON
    curl -i "http://192.168.1.21/messages" -H "X-Requested-With: curl" -d '{"format":"us","freq":36,"data":[3409,1790,389,482,391,482,389,1353,389,1354,390,483,381,1360,389,484,380,491,382,487,393,1352,389,481,391,480,392,1352,390,481,391,1352,391,481,381,1362,388,483,391,483,388,1354,389,483,380,491,389,483,388,482,388,1359,386,483,389,1351,391,1353,393,479,388,1356,389,482,389,484,388,482,380,491,389,1353,381,491,390,484,379,1363,380,491,388,482,388,65535,0,13701,3403,1792,396,477,392,479,393,1352,382]}';;
  off)
    # 照明OFF
    curl -i "http://192.168.1.21/messages" -H "X-Requested-With: curl" -d '{"format":"us","freq":35,"data":[3408,1790,385,485,381,491,380,1362,382,1365,383,490,384,1359,375,495,377,494,376,494,379,1365,387,485,386,484,385,1357,381,490,382,1365,378,491,378,1363,380,491,381,491,381,1362,379,492,379,495,379,491,380,495,384,1359,379,1363,379,1364,376,1365,389,482,387,1359,378,490,381,495,374,497,376,1366,376,1370,381,489,385,489,375,1365,378,492,377,497,375]}';;
  bright)
    # 明るくする
    curl -i "http://192.168.1.21/messages" -H "X-Requested-With: curl" -d '{"format":"us","freq":36,"data":[3413,1787,382,491,390,481,381,1364,388,1356,379,490,382,1363,387,483,380,492,386,486,386,1356,389,483,380,495,377,1363,380,493,385,1360,376,489,390,1353,382,491,389,481,388,1357,387,483,382,490,381,490,382,490,382,491,380,491,389,1354,391,1353,388,479,392,1353,390,483,386,487,387,1353,391,484,386,1354,383,491,380,491,391,1352,386,485,389,483,380,65535,0,13715,3399,1798,382,490,391,482,380,1359,392,1352,383,490,390,1352,382,493,390,479,390,483,389,1352,382,490,382,491,380,1361,389,484,390,1352,388,484,390,1355,385,484,390,483,386,1356,381,491,381,490,381,491,381,491,388,485,386,484,390,1353,389,1354,389,484,387,1357,383,485,389,484,387,1355,381,490,382,1362,380,491,388,487,387,1354,380,490,381,490,389]}';;
  dark)
    # 暗くする
    curl -i "http://192.168.1.21/messages" -H "X-Requested-With: curl" -d '{"format":"us","freq":36,"data":[3413,1789,408,462,409,465,407,1332,411,1336,409,456,415,1329,413,461,411,460,409,464,409,1334,411,461,408,463,409,1334,407,465,407,1332,413,457,413,1333,412,460,412,457,413,1331,413,1330,412,1333,409,462,411,462,409,464,388,1350,414,462,389,483,406,1334,392,478,411,462,410,1333,408,1334,412,1332,410,464,407,1331,411,460,412,1331,412,462,410,1331,412,65535,0,13684,3414,1787,412,460,409,462,391,1354,390,1352,410,463,409,1331,395,479,390,480,383,490,390,1349,393,478,393,480,394,1348,413,459,414,1328,414,458,394,1350,396,477,395,476,392,1352,408,1333,412,1332,411,462,410,460,410,462,409,1334,411,462,410,459,394,1349,410,462,391,480,411,1329,414,1336,409,1328,413,460,411,1330,413,459,415,1329,410,460,414,1333,390]}';;
  *)
    echo "unknown command $1"
esac
