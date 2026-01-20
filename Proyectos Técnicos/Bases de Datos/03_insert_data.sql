USE ServiceDeskDB;
GO

INSERT INTO EstadosTicket (NombreEstado)
VALUES ('Abierto'), ('En Proceso'), ('Cerrado');

INSERT INTO Usuarios (Nombre, Correo, Rol)
VALUES 
('Carlos Gomez', 'carlos.gomez@empresa.com', 'Usuario'),
('Laura Martinez', 'laura.martinez@empresa.com', 'Usuario'),
('Andres Perez', 'andres.perez@empresa.com', 'Usuario');

INSERT INTO Tecnicos (Nombre, Especialidad)
VALUES
('Ana Lopez', 'Soporte Nivel 1'),
('Juan Torres', 'Soporte Nivel 2'),
('Maria Rodriguez', 'Infraestructura');

INSERT INTO Tickets (UsuarioID, TecnicoID, EstadoID, Prioridad)
VALUES
(1, 1, 1, 'Alta'),
(2, 2, 2, 'Media'),
(3, 3, 3, 'Baja');