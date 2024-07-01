rm -rf fldu.bin
rm -rf fldv.bin
rm -rf fldw.bin
rm -rf fldp.bin

mv fldu_o.bin fldu.bin
mv fldv_o.bin fldv.bin
mv fldw_o.bin fldw.bin
mv fldp_o.bin fldp.bin

python3 remove_last_bytes.py
