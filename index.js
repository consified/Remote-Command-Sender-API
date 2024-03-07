const express = require('express');
const app = express();
const { exec } = require('child_process');


// ExitGameApi with Taskkills
app.get('/landeshop/api/exitgameapi', (req, res) => {
	
exec('exitgame.bat', (error, stdout, stderr) => {
  if (error) {
    console.log(`bad`)
	console.log(error)
  }
});
console.log(`Requested ExitGameApi`)
const data = { message:`Request Success` , api:`ExitGameApi`};
return res.json(data);
});

//StartIntlApi
app.get('/landeshop/api/startintlapi', (req, res) => {
	
exec('startintl.bat', (error, stdout, stderr) => {
  if (error) {
    console.log(`bad`)
	console.log(error)
  }
});
console.log(`Requested StartIntlApi`)
const data = { message:`Request Success` , api:`StartIntlApi`};
return res.json(data);
});

//FastMapApi
app.get('/landeshop/api/fastmapapi', (req, res) => {
	
exec('fastmap.bat', (error, stdout, stderr) => {
  if (error) {
    console.log(`bad`)
  }
});
console.log(`Requested FastMapApi`)
const data = { message:`Request Success` , api:`FastMapApi`};
return res.json(data);
});

//SlowMapApi
app.get('/landeshop/api/slowmapapi', (req, res) => {
	
exec('slowmap.bat', (error, stdout, stderr) => {
  if (error) {
    console.log(`bad`)
  }
});
console.log(`Requested SlowMapApi`)
const data = { message:`Request Success` , api:`SlowMapApi`};
return res.json(data);
});

//RebootApi
app.get('/landeshop/api/rebootapi', (req, res) => {
	
exec('reboot.bat', (error, stdout, stderr) => {
  if (error) {
    console.log(`bad`)
  }
});
console.log(`Requested RebootApi`)
const data = { message:`Request Success` , api:`RebootApi`};
return res.json(data);
});

//QuickApi
app.get('/landeshop/api/quickapi', (req, res) => {
	
exec('quickon.bat', (error, stdout, stderr) => {
  if (error) {
    console.log(`bad`)
  }
});
console.log(`Requested QuickApi`)
const data = { message:`Request Success` , api:`QuickApi`};
return res.json(data);
});

//NonQuickApi
app.get('/landeshop/api/nonquickapi', (req, res) => {
	
exec('quickoff.bat', (error, stdout, stderr) => {
  if (error) {
    console.log(`bad`)
  }
});
console.log(`Requested NonQuickApi`)
const data = { message:`Request Success` , api:`NonQuickApi`};
return res.json(data);
});


// Activate server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
