function wat() {
  var socket;
  var host = 'ws://' + window.location.host + '/ws';
  try {
    socket = new WebSocket(host);
    socket.onopen = function(msg) {
      console.log("socket opened:", msg);
    };
    socket.onmessage = function(msg) {
      console.log('socket message:', msg);
    };
    socket.onclose = function(msg) {
      console.log('socket closed:', msg);
    };
  } catch (err) {
    console.log('error:', err);
  }
  setTimeout(function() {
    socket.send("Hi there, padrino!");
  }, 1000);
}
