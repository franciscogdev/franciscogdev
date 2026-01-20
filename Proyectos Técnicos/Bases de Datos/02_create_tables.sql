CREATE DATABASE ServiceDeskDB;
GO

USE ServiceDeskDB;
GO

CREATE TABLE Usuarios (
    UsuarioID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Correo VARCHAR(50),
    Rol VARCHAR(50),
    FechaCreacion DATETIME DEFAULT GETDATE()
);

CREATE TABLE Tecnicos (
    TecnicoID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Especialidad VARCHAR(100),
    Activo BIT DEFAULT 1
);

CREATE TABLE EstadosTicket (
    EstadoID INT IDENTITY(1,1) PRIMARY KEY,
    NombreEstado VARCHAR(50) NOT NULL
);

CREATE TABLE Tickets (
    TicketID INT IDENTITY(1,1) PRIMARY KEY,
    UsuarioID INT NOT NULL,
    TecnicoID INT NOT NULL,
    EstadoID INT NOT NULL,
    FechaCreacion DATETIME DEFAULT GETDATE(),
    FechaCierre DATETIME NULL,
    Prioridad VARCHAR(20) NOT NULL,
    CONSTRAINT FK_Tickets_Usuarios FOREIGN KEY (UsuarioID)
        REFERENCES Usuarios(UsuarioID),
    CONSTRAINT FK_Tickets_Tecnicos FOREIGN KEY (TecnicoID)
        REFERENCES Tecnicos(TecnicoID),
    CONSTRAINT FK_Tickets_Estados FOREIGN KEY (EstadoID)
        REFERENCES EstadosTicket(EstadoID)
);