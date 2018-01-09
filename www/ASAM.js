var exec = require('cordova/exec');

exports.enter = function(success, error) {
  exec(success, error, 'ASAM', 'enter', []);
};

exports.leave = function(success, error) {
  exec(success, error, 'ASAM', 'leave', []);
};

exports.active = function(success, error) {
  exec(success, error, 'ASAM', 'active', []);
};