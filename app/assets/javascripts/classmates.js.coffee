$(function() {
  $("form.new_classmate").on("ajax:success", function(event, data, status, xhr) {
    $('#new-classmate-modal').modal('hide');
    // console.log(data.name);

    new_data_html = "<div class='col-xs-6 col-sm-4 col-md-3 col-lg-2 profile'>" +
    					'<img src="/assets/rails.png" %>' +
    					'<div class="profile-content">' +
          					'<div class="name">'+ data.name +'</div>'+
          					'<a href="http://'+ data.githubProfile + '" target="_blank">' + data.githubProfile+'</a><br>' +
          					'<a href="http://'+ data.website + '" target="_blank">' + data.website+'</a>'
        				'</div>' +
    				"</div>"

    $('.wrapper .container').append(new_data_html);
  });
});
