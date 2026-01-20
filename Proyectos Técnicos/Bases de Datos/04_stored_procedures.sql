IF OBJECT_ID('sp_CrearTicket', 'P') IS NOT NULL
    DROP PROCEDURE sp_CrearTicket;
GO

CREATE PROCEDURE sp_CrearTicket
    @UsuarioID INT,
    @TecnicoID INT,
    @Prioridad VARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Tickets (UsuarioID, TecnicoID, EstadoID, Prioridad)
    VALUES (@UsuarioID, @TecnicoID, 1, @Prioridad);
END;
GO

-- Cerrar ticket
IF OBJECT_ID('sp_CerrarTicket', 'P') IS NOT NULL
    DROP PROCEDURE sp_CerrarTicket;
GO

CREATE PROCEDURE sp_CerrarTicket
    @TicketID INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Tickets
    SET EstadoID = 3,
        FechaCierre = GETDATE()
    WHERE TicketID = @TicketID;
END;
GO

-- Tickets abiertos
IF OBJECT_ID('sp_TicketsAbiertos', 'P') IS NOT NULL
    DROP PROCEDURE sp_TicketsAbiertos;
GO

CREATE PROCEDURE sp_TicketsAbiertos
AS
BEGIN
    SET NOCOUNT ON;

    SELECT T.TicketID,
           U.Nombre AS Usuario,
           Tec.Nombre AS Tecnico,
           T.Prioridad,
           T.FechaCreacion
    FROM Tickets T
    JOIN Usuarios U ON T.UsuarioID = U.UsuarioID
    JOIN Tecnicos Tec ON T.TecnicoID = Tec.TecnicoID
    WHERE T.EstadoID = 1;
END;
GO