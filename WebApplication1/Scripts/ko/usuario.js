﻿var UsuarioModel = new function () {
    model = this
    model.usuarios = ko.observable([
        {
            "Codigo": 1,
            "Email": "fabiano@gmail.com",
            "UltimoAcesso": "2024-03-20T19:13:55.497"
        }
    ]);
    model.carregar = function () {
        var settings = {
            "url": "http://localhost:50751/api/Usuarios",
            "method": "GET",
            "timeout": 0,
        };

        $.ajax(settings).done(function (response) {
            model.usuarios(response);
        });
    };
        model.carregar();
}

    ko.applyBindings(UsuarioModel);