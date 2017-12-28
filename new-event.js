#!/usr/bin/env node

'use strict'

const inquirer = require('inquirer'),
    slug = require('slug'),
    shell = require('shelljs');

const questions = [
    { name: 'name', type: 'input', message: 'Nome do Evento:' },
    { name: 'description', type: 'input', message: 'Descrição do Evento:' },
    { name: 'url', type: 'input', message: 'Url do Evento:' },
    { name: 'url_image', type: 'input', message: 'Url da Imagem do Evento:' },
    { name: 'date_event', type: 'input', message: 'Data do Evento (YYYY-MM-dd):' },
    { name: 'price', type: 'input', message: 'Preço:' },
    { name: 'address_maps', type: 'input', message: 'Url Maps do Evento:' },
    { name: 'address_name', type: 'input', message: 'Nome do Local do Evento:' },
];

inquirer.prompt(questions).then(answers => {
    const eventName = answers.name,
        fileName = slug(eventName.toLowerCase()),
        filePath = 'src/events/' + fileName + '.html.md';

    shell.touch(filePath);

    const template = `---\ntype: events\nname: ${answers.name}\ndescription: ${answers.description}\nurl: ${answers.url}\nurl_image: ${answers.url_image}\ndate_event: ${answers.date_event}\nprice: ${answers.price}\naddress_maps: ${answers.address_maps}\naddress_name: ${answers.address_name}\n---`;

    shell.ShellString(template).to(filePath);
}).catch(function(err) {
    console.log(err);
});