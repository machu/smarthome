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
  } else if (command.startsWith('Num')) {
    // Alexeで1%が100%になってしまう仕様回避
    if (command == "Num100") {
      command = "Num1";
    }
    // hdmi選択時でもテレビに切り替え
    console.log(`Exec Tv`);
    client.exec('Tv');
    // 500ミリ秒あけないと次の命令を受け付けない
    setTimeout(() => {
      console.log(`Exec ${command}`);
      client.exec(command);
    }, 500);
  } else {
    console.log(`Exec ${command}`);
    client.exec(command);
  }
});
