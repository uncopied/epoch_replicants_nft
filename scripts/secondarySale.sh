#!/bin/bash

goal asset send --amount 1 --assetid 39866680  --from 6OQQDT3FI2FY4TY6XFW7I7QFTSTQWH2TP3AF5U3W42TR6SMQPXEJX7TZAA --to ODF7YUAT4JMWSQLH3CXE5XUBLCHIZAWJTR3I3SDAASAGVQ3AWZ7SYWCBSE --clawback  2NZL56EGN3Q4DQ7ESMFGE2LTTOMJCKXWODXD6AZWGSRLTJNR75AOCYBRAA  --out unsignedAssetSend.tx

goal app call --from ODF7YUAT4JMWSQLH3CXE5XUBLCHIZAWJTR3I3SDAASAGVQ3AWZ7SYWCBSE --app-id 39867091 --app-arg "str:sell_nft" --out unsignedFreeportCall.tx
goal clerk send --from ODF7YUAT4JMWSQLH3CXE5XUBLCHIZAWJTR3I3SDAASAGVQ3AWZ7SYWCBSE --to 6OQQDT3FI2FY4TY6XFW7I7QFTSTQWH2TP3AF5U3W42TR6SMQPXEJX7TZAA --amount 7900000 --out unsignedSend.tx

goal clerk send --from ODF7YUAT4JMWSQLH3CXE5XUBLCHIZAWJTR3I3SDAASAGVQ3AWZ7SYWCBSE --to 7IGM4UP7YXRP6ANWNVTZWSQL27L6ZFCK2H7KLN2N3HIKIJPJUWCQVJ67NA --amount 200000 --out unsignedSend0.tx

goal clerk send --from ODF7YUAT4JMWSQLH3CXE5XUBLCHIZAWJTR3I3SDAASAGVQ3AWZ7SYWCBSE --to M2WNUPEYKJTIQBYG2IUGXE3FWHN6EBEA6S7AF63O7OPBMUUEMB2UBYLI5Q --amount 200000 --out unsignedSend1.tx
goal clerk send --from ODF7YUAT4JMWSQLH3CXE5XUBLCHIZAWJTR3I3SDAASAGVQ3AWZ7SYWCBSE --to NL2YCOBKWPI35PYSU4LGNM2II4PW7C766GJCRLFSDNVS47AV2MRHZ7A7FI --amount 200000 --out unsignedSend2.tx
goal clerk send --from ODF7YUAT4JMWSQLH3CXE5XUBLCHIZAWJTR3I3SDAASAGVQ3AWZ7SYWCBSE --to FUZIWXSI2RTPW65MG475T7XKFC4O6LFPNG6J33RN4U2O4VZZQWMGFU6M24 --amount 200000 --out unsignedSend3.tx
goal clerk send --from ODF7YUAT4JMWSQLH3CXE5XUBLCHIZAWJTR3I3SDAASAGVQ3AWZ7SYWCBSE --to LJX5SYXKAIXZ5PXBHJA4KBVHRHV5DWJ2MUBC2CWDAQIYFYOQVENLC4CYO4 --amount 200000 --out unsignedSend4.tx
goal clerk send --from ODF7YUAT4JMWSQLH3CXE5XUBLCHIZAWJTR3I3SDAASAGVQ3AWZ7SYWCBSE --to 2A7KDBW3BJMGNNKF563QOVYC466POE5MTFXUVODNPTZRMDFZTHFYC7ZJFM --amount 200000 --out unsignedSend5.tx
goal clerk send --from ODF7YUAT4JMWSQLH3CXE5XUBLCHIZAWJTR3I3SDAASAGVQ3AWZ7SYWCBSE --to 3FT4J6OASHOTMXUVNJO5NC4WBQ75WUCBZFLFFL5BJPE6SRXFXOJ2RYYP7E --amount 200000 --out unsignedSend6.tx
goal clerk send --from ODF7YUAT4JMWSQLH3CXE5XUBLCHIZAWJTR3I3SDAASAGVQ3AWZ7SYWCBSE --to YH3UYXKH6RDLDKNVVZCLXJI3HPNLXYKT5I7UPDV33UQCFO7CYIU6KJN6BE --amount 200000 --out unsignedSend7.tx
goal clerk send --from ODF7YUAT4JMWSQLH3CXE5XUBLCHIZAWJTR3I3SDAASAGVQ3AWZ7SYWCBSE --to SDLB42ELW7ZDAYLSANL5AWLM7CKJPAW5FVNYE3PBCMVC7JMWHEZ7NKPPOE --amount 200000 --out unsignedSend8.tx
goal clerk send --from ODF7YUAT4JMWSQLH3CXE5XUBLCHIZAWJTR3I3SDAASAGVQ3AWZ7SYWCBSE --to SEUECQKE4P7UEPBRA4GNXHVCGAIRRACDZHOONP6Q4HKT3YRYA3LKS62E7I --amount 200000 --out unsignedSend9.tx


goal clerk send --from ODF7YUAT4JMWSQLH3CXE5XUBLCHIZAWJTR3I3SDAASAGVQ3AWZ7SYWCBSE --to CKFJQPYSGJBRDZ7YKJSOTWJOLUBM7HGIPY6MFLQTBFLHHPIOAX3VEZQP44 --amount 100000 --out unsignedSend10.tx


cat  unsignedAssetSend.tx unsignedFreeportCall.tx  unsignedSend.tx unsignedSend0.tx unsignedSend1.tx unsignedSend2.tx unsignedSend3.tx unsignedSend4.tx unsignedSend5.tx unsignedSend6.tx unsignedSend7.tx  unsignedSend8.tx unsignedSend9.tx unsignedSend10.tx> combinedNftTransactions.tx


goal clerk group -i combinedNftTransactions.tx -o groupedNftTransactions.tx 

goal clerk split -i groupedNftTransactions.tx -o splitNft.tx

goal clerk sign -i splitNft-0.tx --program ../contracts/stateless.teal -o signoutNft-0.tx

goal clerk sign -i splitNft-1.tx -o signoutNft-1.tx

goal clerk sign -i splitNft-2.tx -o signoutNft-2.tx

goal clerk sign -i splitNft-3.tx -o signoutNft-3.tx

goal clerk sign -i splitNft-4.tx -o signoutNft-4.tx

goal clerk sign -i splitNft-5.tx -o signoutNft-5.tx

goal clerk sign -i splitNft-6.tx -o signoutNft-6.tx

goal clerk sign -i splitNft-7.tx -o signoutNft-7.tx

goal clerk sign -i splitNft-8.tx -o signoutNft-8.tx

goal clerk sign -i splitNft-9.tx -o signoutNft-9.tx

goal clerk sign -i splitNft-10.tx -o signoutNft-10.tx

goal clerk sign -i splitNft-11.tx -o signoutNft-11.tx

goal clerk sign -i splitNft-12.tx -o signoutNft-12.tx

goal clerk sign -i splitNft-13.tx -o signoutNft-13.tx


cat signoutNft-0.tx signoutNft-1.tx signoutNft-2.tx  signoutNft-3.tx signoutNft-4.tx signoutNft-5.tx signoutNft-6.tx signoutNft-7.tx signoutNft-8.tx signoutNft-9.tx signoutNft-10.tx signoutNft-11.tx signoutNft-12.tx signoutNft-13.tx> signoutNft.tx

goal clerk rawsend -f signoutNft.tx

goal clerk dryrun -t signoutNft.tx --dryrun-dump  -o dr.msgp
tealdbg debug ../contracts/stateful.teal -d dr.msgp --group-index 1

#lonimi