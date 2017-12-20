const moment = require('moment');

moment.locale('pt-BR');

const orderByDate = (eventA, eventB) => {
	let dateA = eventA.toJSON().date_event,
		dateB = eventB.toJSON().date_event;
	return moment(dateA).unix() - moment(dateB).unix();
};

const docpadConfig = function() {
    return {
        documentsPaths: ['documents', 'assets', 'events', 'call4papers'],
        plugins: {
            handlebars: {
                helpers: {
                    getCollection(name) {
                        return this.getCollection(name).toJSON();
                    },
                    formatDate(date) {
						return moment(date).utc().format('DD/MM/YYYY');
					},
                }
            },
            markit: {
                html: true
            },
        },
        environments: {
			static: {
				templateData: {
					site: {
						url: 'http://fernandabernardo.com.br/eventos-tech/'
					}
				}
			}
		},
        collections: function() {
            var collections = {
                events: function() {
                    return this.getCollection('html').findAll({type: 'events'}).setComparator(orderByDate);
                },
                call4papers: function() {
                    return this.getCollection('html').findAll({type: 'call4papers'}).setComparator(orderByDate);
                }
            };

            return collections;
        }()
    }
}();

module.exports = docpadConfig;