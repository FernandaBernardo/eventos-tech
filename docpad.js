const docpadConfig = function() {
    return {
        documentsPaths: ['documents', 'assets', 'events', 'call4papers'],
        plugins: {
            handlebars: {
                helpers: {
                    getCollection(name) {
                        return this.getCollection(name).toJSON();
                    }
                }
            },
            markit: {
                html: true
            },
        },
        collections: function() {
            var collections = {
                events: function() {
                    return this.getCollection('html').findAll({type: 'events'});
                }
            };

            return collections;
        }()
    }
}();

module.exports = docpadConfig;