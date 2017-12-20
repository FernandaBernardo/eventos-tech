#!/usr/bin/env node

'use strict'

const inquirer = require('inquirer'),
    slug = require('slug'),
    shell = require('shelljs');

const questions = [
    { name: 'name', type: 'input', message: 'Nome do Call4Paper:' },
    { name: 'description', type: 'input', message: 'Descrição do Call4Paper:' },
    { name: 'url', type: 'input', message: 'Url do Call4Paper:' },
    { name: 'url_image', type: 'input', message: 'Url da Imagem do Evento:' },
    { name: 'date_event', type: 'input', message: 'Data do Evento:' },
    { name: 'submission_date', type: 'input', message: 'Data de Submissão:' },
    { name: 'address_maps', type: 'input', message: 'Url Maps do Evento:' },
    { name: 'address_name', type: 'input', message: 'Nome do Local do Evento:' },
];
inquirer.prompt(questions).then(answers => {
    const eventName = answers.name,
        fileName = slug(eventName.toLowerCase()),
        filePath = 'src/call4papers/' + fileName + '.html.md';

    shell.touch(filePath);

    const template = `---\ntype: call4papers\nname: ${answers.name}\ndescription: ${answers.description}\nurl: ${answers.url}\nurl_image: ${answers.url_image}\ndate_event: ${answers.date_event}\nsubmission_date: ${answers.submission_date}\naddress_maps: ${answers.address_maps}\naddress_name: ${answers.address_name}\n---`;

    shell.ShellString(template).to(filePath);
}).catch(function(err) {
    console.log(err);
});