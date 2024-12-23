CREATE TABLE TBL_SALA (
    ID_SALA INTEGER PRIMARY KEY AUTOINCREMENT,
    DE_SALA TEXT NOT NULL UNIQUE,
    NVL_ACESSO INTEGER NOT NULL,
    CREATED_AT DATE DEFAULT (DATETIME('now')),
    ALTERED_AT DATE
)
;
CREATE TABLE TBL_INVENTARIO (
    ID_RECURSO INTEGER PRIMARY KEY AUTOINCREMENT,
    DE_RECURSO TEXT NOT NULL,
    NR_SERIE TEXT,
    ID_SALA INTEGER,
    CREATED_AT DATE DEFAULT (DATETIME('now')),
    ALTERED_AT DATE,
    FOREIGN KEY (ID_SALA) REFERENCES TBL_SALA(ID_SALA)
)
;
CREATE TABLE TBL_FUNCAO (
    ID_FUNCAO INTEGER PRIMARY KEY AUTOINCREMENT,
    DE_FUNCAO TEXT NOT NULL,
    NVL_ACESSO INTEGER NOT NULL
)
;
CREATE TABLE TBL_USUARIO (
    ID_USUARIO INTEGER PRIMARY KEY AUTOINCREMENT,
    NM_USUARIO TEXT NOT NULL UNIQUE,
    CPF TEXT,
    SENHA TEXT NOT NULL,
    ID_FUNCAO INTEGER NOT NULL,
    CREATED_AT DATE DEFAULT (DATETIME('now')),
    ALTERED_AT DATE,
    FOREIGN KEY (ID_FUNCAO) REFERENCES TBL_FUNCAO(ID_FUNCAO)
)

