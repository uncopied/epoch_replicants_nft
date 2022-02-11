#!/bin/bash

goal asset send --amount 1 --assetid 386913126        --from VTAUB5LOVTWKXICWEDBO5UG2JNNGEW7ULRB4PQB23DGRKSAXDVPORQNZJE --to 6OQQDT3FI2FY4TY6XFW7I7QFTSTQWH2TP3AF5U3W42TR6SMQPXEJX7TZAA --clawback  I4ZSBYX3VWK2YTXJUL5OYGHSGWMDFUKAGIYVMKJ2IYKL6BAIMOIDXMQXIU  --out unsignedAssetSend.tx

goal app call --from 6OQQDT3FI2FY4TY6XFW7I7QFTSTQWH2TP3AF5U3W42TR6SMQPXEJX7TZAA --app-id 387031352 --app-arg "str:sell_nft" --out unsignedFreeportCall.tx
goal clerk send --from 6OQQDT3FI2FY4TY6XFW7I7QFTSTQWH2TP3AF5U3W42TR6SMQPXEJX7TZAA --to VTAUB5LOVTWKXICWEDBO5UG2JNNGEW7ULRB4PQB23DGRKSAXDVPORQNZJE --amount 727300000 --out unsignedSend.tx

goal clerk send --from 6OQQDT3FI2FY4TY6XFW7I7QFTSTQWH2TP3AF5U3W42TR6SMQPXEJX7TZAA --to M2WNUPEYKJTIQBYG2IUGXE3FWHN6EBEA6S7AF63O7OPBMUUEMB2UBYLI5Q --amount 188538720 --out unsignedSend0.tx
goal clerk send --from 6OQQDT3FI2FY4TY6XFW7I7QFTSTQWH2TP3AF5U3W42TR6SMQPXEJX7TZAA --to NL2YCOBKWPI35PYSU4LGNM2II4PW7C766GJCRLFSDNVS47AV2MRHZ7A7FI --amount 188538720 --out unsignedSend1.tx
goal clerk send --from 6OQQDT3FI2FY4TY6XFW7I7QFTSTQWH2TP3AF5U3W42TR6SMQPXEJX7TZAA --to FUZIWXSI2RTPW65MG475T7XKFC4O6LFPNG6J33RN4U2O4VZZQWMGFU6M24 --amount 188538720 --out unsignedSend2.tx
goal clerk send --from 6OQQDT3FI2FY4TY6XFW7I7QFTSTQWH2TP3AF5U3W42TR6SMQPXEJX7TZAA --to LJX5SYXKAIXZ5PXBHJA4KBVHRHV5DWJ2MUBC2CWDAQIYFYOQVENLC4CYO4 --amount 188538720 --out unsignedSend3.tx
goal clerk send --from 6OQQDT3FI2FY4TY6XFW7I7QFTSTQWH2TP3AF5U3W42TR6SMQPXEJX7TZAA --to 2A7KDBW3BJMGNNKF563QOVYC466POE5MTFXUVODNPTZRMDFZTHFYC7ZJFM --amount 188538720 --out unsignedSend4.tx
goal clerk send --from 6OQQDT3FI2FY4TY6XFW7I7QFTSTQWH2TP3AF5U3W42TR6SMQPXEJX7TZAA --to 3FT4J6OASHOTMXUVNJO5NC4WBQ75WUCBZFLFFL5BJPE6SRXFXOJ2RYYP7E --amount 188538720 --out unsignedSend5.tx
goal clerk send --from 6OQQDT3FI2FY4TY6XFW7I7QFTSTQWH2TP3AF5U3W42TR6SMQPXEJX7TZAA --to YH3UYXKH6RDLDKNVVZCLXJI3HPNLXYKT5I7UPDV33UQCFO7CYIU6KJN6BE --amount 188538720 --out unsignedSend6.tx
goal clerk send --from 6OQQDT3FI2FY4TY6XFW7I7QFTSTQWH2TP3AF5U3W42TR6SMQPXEJX7TZAA --to SDLB42ELW7ZDAYLSANL5AWLM7CKJPAW5FVNYE3PBCMVC7JMWHEZ7NKPPOE --amount 188538720 --out unsignedSend7.tx
goal clerk send --from 6OQQDT3FI2FY4TY6XFW7I7QFTSTQWH2TP3AF5U3W42TR6SMQPXEJX7TZAA --to SEUECQKE4P7UEPBRA4GNXHVCGAIRRACDZHOONP6Q4HKT3YRYA3LKS62E7I --amount 188538720 --out unsignedSend8.tx



cat  unsignedAssetSend.tx unsignedFreeportCall.tx  unsignedSend.tx unsignedSend0.tx unsignedSend1.tx unsignedSend2.tx unsignedSend3.tx unsignedSend4.tx unsignedSend5.tx unsignedSend6.tx unsignedSend7.tx  unsignedSend8.tx > combinedNftTransactions.tx


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

cat signoutNft-0.tx signoutNft-1.tx signoutNft-2.tx  signoutNft-3.tx signoutNft-4.tx signoutNft-5.tx signoutNft-6.tx signoutNft-7.tx signoutNft-8.tx signoutNft-9.tx signoutNft-10.tx signoutNft-11.tx > signoutNft.tx

goal clerk rawsend -f signoutNft.tx

goal clerk dryrun -t signoutNft.tx --dryrun-dump  -o dr.msgp
tealdbg debug ../contracts/stateful.teal -d dr.msgp --group-index 1

#lonimi