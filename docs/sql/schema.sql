-- Estrutura simplificada do banco Farmed

CREATE TABLE pacientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    medicamento TEXT,
    data_prescricao DATE,
    ultima_retirada DATE,
    qtd_meses INTEGER,
    observacao TEXT,
    receita_valida BOOLEAN
);

CREATE TABLE registro_medicacao (
    id SERIAL PRIMARY KEY,
    paciente_id INTEGER NOT NULL,
    data DATE NOT NULL,
    horario VARCHAR(10) NOT NULL,
    status BOOLEAN,

    FOREIGN KEY (paciente_id)
    REFERENCES pacientes(id)
);

CREATE TABLE calendario (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255),
    data DATE,
    links TEXT
);
