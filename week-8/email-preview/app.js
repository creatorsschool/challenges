angular
  .module('app', [])
  .factory('Emails', Emails)
  .controller('EmailCtrl', EmailCtrl)
  .directive('emailForm', emailForm)
  .directive('emailPreview', emailPreview);

function Emails() {
  return {
    current: null
  };
}

function EmailCtrl() {
  this.email = Emails.current;
}

function emailForm() {
  return {
    restrict: 'A',
    templateUrl: 'form.html',
    controller: 'EmailCtrl',
    controllerAs: 'ctrl'
  };
}

function emailPreview() {
  return {
    restrict: 'A',
    templateUrl: 'preview.html',
    controller: 'EmailCtrl',
    controllerAs: 'ctrl'
  };
}
