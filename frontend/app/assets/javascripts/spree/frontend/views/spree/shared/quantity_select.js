Spree.ready(function($) {
  var quantitySelectSelector = '.quantity-select'
  var quantitySelectDecreaseSelector = '.quantity-select-decrease'
  var quantitySelectIncreaseSelector = '.quantity-select-increase'
  var quantitySelectValueSelector = '.quantity-select-value'
  var body = $('body')

  var onQuantityDecreaseClick = function(event) {
    var $quantitySelect = $(event.currentTarget).closest(quantitySelectSelector)
    var $quantitySelectValue = $quantitySelect.find(quantitySelectValueSelector)
    var min =
      typeof $quantitySelectValue.attr('min') === 'undefined'
        ? undefined
        : parseInt($quantitySelectValue.attr('min'), 10)
    var value = parseInt($quantitySelectValue.val(), 10)

    var delta = parseInt($(this).attr('data-delta'))

    if (typeof min === 'undefined' || value > min) {
      $quantitySelectValue.val(value - delta)
    }
  }
  var onQuantityIncreaseClick = function(event) {
    var $quantitySelect = $(event.currentTarget).closest(quantitySelectSelector)
    var $quantitySelectValue = $quantitySelect.find(quantitySelectValueSelector)
    var max =
      typeof $quantitySelectValue.attr('max') === 'undefined'
        ? undefined
        : parseInt($quantitySelectValue.attr('max'), 10)
    var value = parseInt($quantitySelectValue.val(), 10)

    var delta = parseInt($(this).attr('data-delta'))

    if (typeof max === 'undefined' || value < max) {
      $quantitySelectValue.val(value + delta)
    }
  }

  var onValueChange = function(event) {
    var $quantitySelect = $(event.currentTarget).closest(quantitySelectSelector)
    var $quantitySelectValue = $quantitySelect.find(quantitySelectValueSelector)
    var value = parseInt($quantitySelectValue.val(), 10)
    var min =
      typeof $quantitySelectValue.attr('min') === 'undefined'
        ? undefined
        : parseInt($quantitySelectValue.attr('min'), 10)
    var max =
      typeof $quantitySelectValue.attr('max') === 'undefined'
        ? undefined
        : parseInt($quantitySelectValue.attr('max'), 10)

    if (value < min) {
      $quantitySelectValue.val(min)
    } else if (value > max) {
      $quantitySelectValue.val(max)
    }
  }

  body.off('click', quantitySelectDecreaseSelector).on('click', quantitySelectDecreaseSelector, onQuantityDecreaseClick)
  body.off('click', quantitySelectIncreaseSelector).on('click', quantitySelectIncreaseSelector, onQuantityIncreaseClick)
  body.off('change', quantitySelectValueSelector).on('change', quantitySelectValueSelector, onValueChange)
})
