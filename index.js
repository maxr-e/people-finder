const inquirer = require('inquirer');
const fs = require('fs');

inquirer
  .prompt([
    {
      type: 'input',
      name: 'name',
      message: 'Department name',
    },
    // {
    //   type: 'checkbox',
    //   message: 'Role',
    //   name: '',
    //   choices: ['', '', ''],
    // },
    // {
    //   type: 'list',
    //   message: 'What is your preferred method of communication?',
    //   name: 'contact',
    //   choices: ['email', 'phone', 'telekinesis'],
    // },
  ])
  .then((data) => {
    const filename = `${data.name.toLowerCase().split(' ').join('')}.json`;

    fs.writeFile(filename, JSON.stringify(data, null, '\t'), (err) =>
      err ? console.log(err) : console.log('Success!')
    );
  });
