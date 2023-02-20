(function () {
    var isSelectShowed = true;
    $('#select').click(function () {
        if (isSelectShowed) {
            $('#sel-option').hide();
        } else {
            $('#sel-option').show();
        }
        isSelectShowed = !isSelectShowed;
    });

    $('#sel-option a').click(function (e) {
        $('#select').text($(this).text());
        $('#sel-option').hide();
        $(this).addClass('current');
        e.preventDefault();
        isSelectShowed = false;
    })

    $("ul").on("click", "button", function (e) {
        e.preventDefault();
        $(this).parent().remove();
    });
})
