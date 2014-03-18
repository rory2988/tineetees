$("button.remove").click(function(e){
  console.log(e)
  var index = $(this).attr('id')
  $.ajax({
    type: "PUT",
    url: "/update_cart",
    data: {index: index}
  });
  
  $(this).parent().parent().remove()
});