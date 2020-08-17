chmod -R 777 /hana/data/sapdump
export hostname={{ h_name }}
if [ -f /hana/shared/{{ h_sid }}/global/hdb/custom/config/global.ini ];then
  echo "Hana DB alreday installed, please check..."
else
  /hana/data/sapdump/SAP_HANA_DATABASE/hdblcm --action=install --sid={{ h_sid }} --number={{ inst_no }} --components={{ sap_comp }} --sapadm_password={{ h_pwd }} --system_user_password={{ h_pwd }} --password={{ h_pwd }} --db_mode=single_container --system_usage=production --autostart=y  -b
fi
if [ -f /usr/sap/SAPBusinessOne/Common/tomcat/bin/bootstrap.jar ];then
  echo "SAP Business One application alreday installed, please check or uninstall it..."
else
  echo "SAP Business application installation started"
  /hana/data/sapdump/51053060/Packages.Linux/ServerComponents/install -i silent -f /tmp/h1b_app_inst_config  --debug
fi
if [ -f /hana/data/sapdump/SAP_HANA_DATABASE/hdblcm ];then
  echo "Deleteing all binary files from /hana/data/sapdump location..."
  rm -fr /hana/data/sapdump
fi
