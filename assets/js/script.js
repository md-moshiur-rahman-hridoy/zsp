
$(document).ready( ()=> {
    // mobile menu
    $("#hamburger").click(()=>{
        $("#navbar").show();
    });
    $("#close").click(()=>{
        $("#navbar").hide();
    });



    
    // signup form
    $("#signupForm").submit( (e)=>{
        e.preventDefault();
        var form = $("#signupForm").serialize();
        
        $.ajax({
            url: "inc/ajax.php",
            method: "post",
            data: form,
            success: function(res){
                alert(res);
                $("#signupForm")[0].reset();
            }
        })
    });

    // login form
    $("#loginForm").submit( (e)=>{
        e.preventDefault();
        var form_login = $("#loginForm").serialize();

        $.ajax({
            url: "inc/ajax.php",
            method: "post",
            data: form_login,
            success: function(res){
                var data = $.parseJSON(res);

                if (data.status == 'success') {
                    $("#message").html('<div class="alert alert-success">'+ data.message +'</br>'+'We will redirect you soon to your dashboard.</div>');
                    $("#loginForm")[0].reset();
                    window.location = 'admin/';
                }else{
                    $("#message").html('<div class="alert alert-danger">'+ data.message +'</div>');
                }

                
            }
        })
    });




});








