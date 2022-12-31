export default {
    methods: {
        checkXrpTagAddress() {
            var xrp_address = "";
      
            xrp_address = "" + this.profile.xrp_tag_address + "";
            if (
              xrp_address.charAt(0) == "r" ||
              xrp_address == "" ||
              xrp_address == null
            ) {
              this.xrpTagactive = true;
              this.xrpTagmsg = "";
            } else {
              this.xrpTagactive = false;
              this.xrpTagmsg = "XRP Tag Address should be start with 'r'";
            }
          },
          checkXrpAddress() {
            var xrp_address = "";
      
            xrp_address = "" + this.profile.xrp_address + "";
            if (
              xrp_address.charAt(0) == "r" ||
              xrp_address == "" ||
              xrp_address == null
            ) {
              this.xrpactive = true;
              this.xrpmsg = "";
            } else {
              this.xrpactive = false;
              this.xrpmsg = "XRP Address should be start with 'r'";
            }
          },
          checkEthAddress() {
            var ethereum = "";
      
            ethereum = "" + this.profile.ethereum + "";
            if (
              (ethereum.charAt(0) == "0" && ethereum.charAt(1) == "x") ||
              ethereum == "" ||
              ethereum == null
            ) {
              this.ethactive = true;
              this.ethmsg = "";
            } else {
              this.ethactive = false;
              this.ethmsg = "Eth Address should be start with '0x'";
            }
          },
          checkTRXAddress(addFor) {
            var trx_address = "";
            if (addFor == "1") {
              trx_address = "" + this.profile.trn_address + "";
            } else {
              trx_address = "" + this.profile.usdt_address + "";
            }
            if (
              trx_address.charAt(0) == "t" ||
              trx_address.charAt(0) == "T" ||
              trx_address == "" ||
              trx_address == null
            ) {
              this.trxactive = true;
              this.usdttrxactive = true;
              this.trxmsg = "";
              this.usdttrxmsg = "";
            } else {
              if (addFor == 1) {
                this.trxactive = false;
                this.trxmsg = "TRX Address should be start with 'T or t'";
              } else {
                this.usdttrxactive = false;
                this.usdttrxmsg = "USDT-TRC20 Address should be start with 'T or t'";
              }
            }
          },
    }
};