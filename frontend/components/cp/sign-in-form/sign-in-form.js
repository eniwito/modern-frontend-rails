import $ from "jquery/dist/jquery";
import "./sign-in-form.css";

$("form#sign_in")
  .bind("ajax:success", function(e) {
    return (window.location = "/cp");
  })
  .bind("ajax:error", function(e) {
    const xhr = e.detail[2];
    $(".alert").remove();
    const ErrorMessages = JSON.parse(xhr.responseText).error
      ? "<div class='alert alert-danger mb-3'>" +
        JSON.parse(xhr.responseText).error +
        "</div>"
      : JSON.parse(xhr.responseText).errors
        ? $.map(JSON.parse(xhr.responseText).errors, function(v, k) {
            return (
              "<div class='alert alert-danger mb-3'>" + k + " " + v + "</div>"
            );
          }).join("")
        : "<div class='alert alert-danger mb-3'>Неизвестная ошибка</div>";
    return $(this).prepend(ErrorMessages);
  });
