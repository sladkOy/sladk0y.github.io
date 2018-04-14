function Download(API, tableId) {
    var XHRequest = 'onload' in new XMLHttpRequest() ? XMLHttpRequest : XDomainRequest;
    var xml = new XHRequest();

    xml.open('GET', API, true);

    xml.onload = function () {
        var xmlv = this.responseXML;
        var p24tb = document.getElementById(tableId).tBodies[0];
        var tempArr = xmlv.getElementsByTagName('exchangerate');
        for (var i = 0; i < p24tb.rows.length; i++) {
            var tableRow = p24tb.rows[i];
            tableRow.cells[0].innerHTML = tempArr[i].getAttribute('ccy');
            tableRow.cells[1].innerHTML = tempArr[i].getAttribute('buy');
            tableRow.cells[2].innerHTML = tempArr[i].getAttribute('sale');
            tableRow.cells[3].innerHTML = tempArr[i].getAttribute('base_ccy');
        }
    };

    xml.send();
}

var API = 'https://api.privatbank.ua/p24api/pubinfo?exchange&coursid=5';
var privatRatesTable = 'p24tb';
Download(API, privatRatesTable);