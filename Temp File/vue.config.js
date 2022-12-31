const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({




 ///----------------------- Replica  testlink -----------------------------------
publicPath: process.env.BASE_URL === 'production' ?'/test' : '/test',

devServer: {

   proxy: 'http://localhost/azardio/', 


  ///----------------------- Replica  testlink -----------------------------------

    // proxy: 'https://www.azardio.io/testlink-api/',

     
  },
 transpileDependencies: true
})                
