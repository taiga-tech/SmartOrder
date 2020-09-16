$(function() {
  let methods = {
    email: function (value, element) {
      return this.optional(element) || /^[A-Za-z0-9]{1}[A-Za-z0-9_.-]*@{1}[A-Za-z0-9_.-]{1,}\.[A-Za-z0-9]{1,}$/.test(value);
    },
    password: function (value, element) {
      return this.optional(element) || /^(?=.*?[a-z])(?=.*?\d)[a-z\d]{7,100}$/i.test(value);
    },
    zipcode: function (value, element) {
      return this.optional(element) || /^\d{3}-?\d{4}$/.test(value);
    },
    price: function (value, element) {
      return this.optional(element) || 	/^[3-9][0-9]{2}|[1-9][0-9]{3,6}$/.test(value);
    },
    number: function (value, element) {
      return this.optional(element) || /^\d+$/.test(value);
    },
    cvc: function (value, element) {
      return this.optional(element) || /^\d{3,4}$/.test(value);
    },
    kana: function (value, element) {
      return this.optional(element) || /^[\u3041-\u3096]+$/.test(value);
    },
    zenkaku: function (value, element) {
      return this.optional(element) || /^[^\x01-\x7E\xA1-\xDF]+$/.test(value);
    },
    tel: function (value, element) {
      return this.optional(element) || /^[0-9]+$/.test(value)
    },
  }
  $.each(methods, function(key) {
    $.validator.addMethod(key, this);
  });


  $("#new_store").validate({
    rules: {
      "store[zipcode]": {
        required: true,
        zipcode: true
      },
      "store[address]": {
        required: true,
      },
      "store[tel]": {
        required: true,
        tel: true,
      },
      "store[time]": {
        required: true,
      },
      "store[holyday]": {
        required: true,
      }
    },
    errorClass: "invalid",
    errorElement: "p",
    valudClass: "valid",
  });

  $("#store_zipcode",
    "#store_address",
    "#store_tel",
    "store_time",
    "store_holyday"
    ).blur(function() {
    $(this).valid();
  });

});
