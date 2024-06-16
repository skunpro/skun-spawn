window.addEventListener('message', function(event) {
    if (event.data.type === "ui") {
        if (event.data.status) {
            document.body.style.display = "flex";
        } else {
            document.body.style.display = "none";
        }
    }
});

function spawn(index) {
    fetch(`https://${GetParentResourceName()}/spawn`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json; charset=UTF-8'
        },
        body: JSON.stringify({ spawnIndex: index - 1 })
    });
}

function exit() {
    fetch(`https://${GetParentResourceName()}/exit`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json; charset=UTF-8'
        },
        body: JSON.stringify({})
    });
}
