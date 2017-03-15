-- Enable developer mode in D3 module connector which disables usage of TMP
UPDATE  d3_cfg_mod
SET     `OXVALUE` = TO_BASE64(IF(`OXVALUE` = '' OR `OXVALUE` = 'N%3B',
          'O%3A8%3A%22stdClass%22%3A1%3A%7Bs%3A29%3A%22d3_cfg_mod__blClrTmp_notmpuse%22%3Bs%3A1%3A%221%22%3B%7D',
          REPLACE(FROM_BASE64(`OXVALUE`),
            '%22d3_cfg_mod__blClrTmp_notmpuse%22%3Bs%3A1%3A%220',
            '%22d3_cfg_mod__blClrTmp_notmpuse%22%3Bs%3A1%3A%221')
        ))
WHERE   `OXMODID` = 'd3modcfg_lib';
