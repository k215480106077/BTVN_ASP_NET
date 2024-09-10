$(document).ready(function () {
    function sendData() {
        var dataToSend = {
            a: $('#txtA').val(),
            h: $('#txtH').val(),
        };

        if (isNaN(dataToSend.a) ||  isNaN(dataToSend.h) || dataToSend.a <= 0  || dataToSend.h <= 0) {
            alert('Vui lòng nhập giá trị hợp lệ cho chiều dài và chiều cao.');
            return;
        }

        $.ajax({
            url: "WebForm1.aspx",
            type: "POST",
            data: JSON.stringify(dataToSend),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                $('#result').text('Thể tích hình hộp là: ' + response.volume);
            },
            error: function (xhr, status, error) {
                $('#result').text('Có lỗi xảy ra: ' + xhr.responseText);
            }
        });
    }

    $("#btnCalculate").click(function () {
        sendData();
    });
});
