const myfirstservice = function(srv) {
    srv.on('Update', (req) => {
        return  "Hello " + req.data.to + "!";
    });
}
module.exports = myfirstservice