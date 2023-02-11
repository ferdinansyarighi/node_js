var myChart = new Chart("myChart", {
    type: "bar",
    data: {
        labels: [],
        datasets: [{
            data: [],
            borderWidth: 1,
            borderColor: '#00c0ef',
            label: ' % ',
        }]
    },
    options: {
        legend: { display: false },
        title: {
            display: true,
            text: "Product Report"
        }
    }
});

$(document).ready(function () {
    setChart();
    setTable();
});

function updateData() {
    myChart.destroy();
    $.ajax({
        type: 'post',
        url: '/updatedata',
        data: {
            area: $('#area_ft').val(),
            start_date: $('#start_ft').val(),
            end_date: $('#end_ft').val()
        },
        dataType: 'json',
        success: function (data) {
            var myChart = new Chart("myChart", {
                type: "bar",
                data: {
                    labels: [],
                    datasets: [{
                        data: [],
                        borderWidth: 1,
                        borderColor: '#00c0ef',
                        label: ' % ',
                    }]
                },
                options: {
                    legend: { display: false },
                    title: {
                        display: true,
                        text: "Product Report"
                    }
                }
            });

            Object.keys(data).forEach(function (key) {
                myChart.data.labels.push(data[key].area_name);
                myChart.data.datasets[0].data.push(data[key].percentage);
            });

            myChart.update();
        }
    })

    updateTable();
}

function updateTable() {
    $("#mytable").empty();

    $.ajax({
        type: 'post',
        url: '/updatetable',
        data: {
            area: $('#area_ft').val(),
            start_date: $('#start_ft').val(),
            end_date: $('#end_ft').val()
        },
        dataType: 'json',
        success: function (data) {
            let tbl = "";
            tbl += "<thead>";
            tbl += "<tr>";
            tbl += "<th>Bahan</th>";
            tbl += "<th>DKI Jakarta</th>";
            tbl += "<th>Jawa Barat</th>";
            tbl += "<th>Kalimantan</th>";
            tbl += "<th>Jawa Tengah</th>";
            tbl += "<th>Bali</th>";
            tbl += "</tr>";
            tbl += "</thead>"
            tbl += "<tbody>";
            Object.keys(data).forEach(function (key) {
                tbl += "<tr>";
                tbl += "<td>" + data[key].brand_name + "</td>";
                tbl += "<td>" + data[key].DKI_jakarta + "</td>";
                tbl += "<td>" + data[key].Jawa_Barat + "</td>";
                tbl += "<td>" + data[key].Kalimantan + "</td>";
                tbl += "<td>" + data[key].Jawa_Tengah + "</td>";
                tbl += "<td>" + data[key].Bali + "</td>";
                tbl += "</tr>";
            });
            tbl += "</tbody>"

            $("#mytable").append(tbl);
        }
    })
}

function setChart() {
    $.ajax({
        type: 'get',
        url: '/getsales',
        success: function (data) {
            Object.keys(data).forEach(function (key) {
                myChart.data.labels.push(data[key].area_name);
                myChart.data.datasets[0].data.push(data[key].percentage);
            });
            myChart.update();
        }
    })
}

function setTable() {
    $.ajax({
        type: 'get',
        url: '/gettable',
        success: function (data) {
            let tbl = "";
            tbl += "<thead>";
            tbl += "<tr>";
            tbl += "<th>Bahan</th>";
            tbl += "<th>DKI Jakarta</th>";
            tbl += "<th>Jawa Barat</th>";
            tbl += "<th>Kalimantan</th>";
            tbl += "<th>Jawa Tengah</th>";
            tbl += "<th>Bali</th>";
            tbl += "</tr>";
            tbl += "</thead>"
            tbl += "<tbody>";
            Object.keys(data).forEach(function (key) {
                tbl += "<tr>";
                tbl += "<td>" + data[key].brand_name + "</td>";
                tbl += "<td>" + data[key].DKI_jakarta + "</td>";
                tbl += "<td>" + data[key].Jawa_Barat + "</td>";
                tbl += "<td>" + data[key].Kalimantan + "</td>";
                tbl += "<td>" + data[key].Jawa_Tengah + "</td>";
                tbl += "<td>" + data[key].Bali + "</td>";
                tbl += "</tr>";
            });
            tbl += "</tbody>"

            $("#mytable").append(tbl);
        }
    })
}