import $ from "jquery";

document.addEventListener("turbolinks:load", function() {

    $(".comments-toggle").click(function() {
        console.log("aqui")
        $(this).closest(".card").next(".comments-list").toggle();
    });

   
});