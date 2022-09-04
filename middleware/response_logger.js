const responseLogger = function (request, response, next)
{
  console.log('\n===== Outgoing Response =====\n');
  console.log(`${new Date()}`);
  console.log(`${response.method} ${response.url}`);
  console.log(`body ${JSON.stringify(response.body)}`);
  console.log('\n============================\n');
  next();
};

module.exports = responseLogger;