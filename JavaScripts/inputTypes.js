function appendInputTypeClasses() {
    if (!document.getElementsByTagName)
        return;
    var inputs = document.getElementsByTagName('input');
    var inputLen = inputs.length;
    for (i = 0; i < inputLen; i++) {
        if (inputs[i].getAttribute('type'))
            inputs[i].className += ' ' + inputs[i].getAttribute('type');
    }
}