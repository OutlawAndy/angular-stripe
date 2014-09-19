angular.module 'angular.stripe', []
.constant 'stripejs', Stripe
.provider 'Stripe', ->
  _publicKey_ = null
  _tokenId_ = null
  this.setPublicKey = (key) ->
    _publicKey_ = key

  this.$get = ['$http', 'stripejs', ($http, stripejs) ->

    return {
      createToken: (form) ->

    }
  ]
  return this

.directive 'stripe-payment', ['Stripe', (Stripe) ->
  restrict: 'A'
  transclude: true
  replace: true
  scope: submit: '&'
  template: '<form></form>'
  link: (scope, el, attrs) ->

]