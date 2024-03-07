# Remote-Command-Sender-API
Running cmd commands or keyboard mirroring through GET

## Usage
Functions relying on Command Prompt will be executed depands on which api is called.  

One example:
```
curl http://localhost:3000/landeshop/api/exitgameapi

```
ExitGameApi refers to running exitgame.bat to terminate all process of current game. You can add more API url and actions for more usage.  

Descriptions of the batch files is written in the repositories.  

## How to run
Before running the program, please install all packages required.
```
npm install
```

Simple way to boot the program:
```
node index.js
```
Will call on port 3000 with localhost, please do port forward if you want to call the APIs in WAN.  

The port calling is editable as long as how your router and switch config.  


## Background process
Of course you can run it on background, please install pm2 with `npm install -g pm2` and use `pm2 start index.js`  

You can use `pm2 startup` for startup of index.js while running with the program with pm2.
