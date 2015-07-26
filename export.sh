DEST=/Users/punkrats/code/vidibus/services/stats/public/kibana

grunt export && rm -R $DEST
cp -R build/kibana/public $DEST

sed -i '' 's:\./:/kibana/:' $DEST/require.config.js

sed -i '' 's:\.\./\.\./bower_components/:../bower_components/:g' $DEST/styles/main.css

# echo '{"port":5601,"host":"0.0.0.0","kibanaIndex":".kibana","defaultAppId":"dashboard","request_timeout":60,"shard_timeout":30000,"verifySSL":true,"html5Mode":true, "plugins":["plugins/kibana/index","plugins/dashboard/index","plugins/discover/index","plugins/metric_vis/index","plugins/settings/index","plugins/table_vis/index","plugins/vis_types/index","plugins/visualize/index"]}' > $DEST/config
