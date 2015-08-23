angular.module 'mf'

  # CashRegister component

  .directive 'mfCashRegister', ->
    controller    : MoneyFlow.CashRegisterController
    controllerAs  : 'cr'
    templateUrl   : '/templates/cash-register.html'