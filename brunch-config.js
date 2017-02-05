exports.config = {
    // See http://brunch.io/#documentation for docs.
    files: {
        javascripts: {
            joinTo: {
              "js/vendor.js": /^(web\/static\/js\/vendor|node_modules)/,
              "js/front.js": /^(web\/static\/js\/front)/,
              "js/admin.js": /^(web\/static\/js\/admin)/
            },

            // To use a separate vendor.js bundle, specify two files path
            // http://brunch.io/docs/config#-files-
            // joinTo: {
            //  "js/app.js": /^(web\/static\/js)/,
            //  "js/vendor.js": /^(web\/static\/vendor)|(deps)/
            // }
            //
            // To change the order of concatenation of files, explicitly mention here
            order: {
                before: [
                    "web/static/vendor/js/jquery-3.min.js",
                    "web/static/vendor/js/semantic.min.js"
                ]
            }
        },
        stylesheets: {
            joinTo: {
              "css/vendor.css": /^(web\/static\/css\/vendor)/,
              "css/front.css": /^(web\/static\/css\/front)/,
              "css/admin.css": /^(web\/static\/css\/admin)/
            },
            order: {
                after: ["web/static/css/app.scss"] // concat app.scss last
            }
        }
        ,
        templates: {
            joinTo: {
              "js/front.js": /^(web\/static\/js\/front)/,
              "js/admin.js": /^(web\/static\/js\/admin)/
            }
        }
    },

    conventions: {
        // This option sets where we should place non-css and non-js assets in.
        // By default, we set this to "/web/static/assets". Files in this directory
        // will be copied to `paths.public`, which is "priv/static" by default.
        assets: /^(web\/static\/assets)/
    },
    // Phoenix paths configuration
    paths: {
        // Dependencies and current project directories to watch
        watched: [
            "web/static",
            "test/static"
        ],

        // Where to compile files to
        public: "priv/static"
    },
    // Configure your plugins
    plugins: {
        babel: {
            // Do not use ES6 compiler in vendor code
            ignore: [/web\/static\/js\/vendor/]
        },
        sass: {
            mode: "native"
        },
        vue: {
          extractCSS: true,
          out: 'priv/static/css/components.css'
        }
    },
    modules: {
        autoRequire: {
            "js/admin.js": ["web/static/js/admin/admin"]
        }
    },
    npm: {
       enabled: true,
       aliases: {
         vuejs: 'vue/dist/vue.common.js'
       }
     }
};
