#!/usr/bin/env node

var bravia = require('bravia');
// Accepts two parameters: IP and PSKKey
bravia('192.168.1.47', 'empicnrxmp', (client) => {
  var command = process.argv[2];
  // console.log(command);
  if (command == "help" || command == null) {
    // List available commands
    client.getCommandNames((list) => {
      console.log(list);
    });
  } else if (command == "VolumeUp" || command == "VolumeDown") {
    for (var i = 0; i < 3; ++i) {
      console.log(`Exec ${command}`);
      client.exec(command);
    }
  } else {
    console.log(`Exec ${command}`);
    client.exec(command);
  }
});
