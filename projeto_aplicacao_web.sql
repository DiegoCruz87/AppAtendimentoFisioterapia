-- Estrutura da tabela `horarioatendimento`
--

CREATE TABLE `horarioatendimento` (
  `idhorario` int(11) NOT NULL,
  `duracao` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `horarioatendimento`
--

INSERT INTO `horarioatendimento` (`idhorario`, `duracao`) VALUES
(1, '00:30:00'),
(2, '00:45:00'),
(3, '01:00:00'),
(4, '01:30:00'),
(5, '02:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

CREATE TABLE `paciente` (
  `idpaciente` int(11) NOT NULL,
  `nome_paciente` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `paciente`
--

INSERT INTO `paciente` (`idpaciente`, `nome_paciente`) VALUES
(1, 'João'),
(2, 'Pedro'),
(3, 'Maria'),
(4, 'Rodrigo'),
(5, 'Beatriz'),
(6, 'Cristina'),
(7, 'Diego'),
(8, 'Jorge'),
(9, 'Patricia'),
(10, 'Gisele');

-- --------------------------------------------------------

--
-- Estrutura da tabela `procedimento`
--

CREATE TABLE `procedimento` (
  `idprocedimento` int(11) NOT NULL,
  `nome_procedimento` varchar(25) NOT NULL,
  `valor_procedimento` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `procedimento`
--

INSERT INTO `procedimento` (`idprocedimento`, `nome_procedimento`, `valor_procedimento`) VALUES
(1, 'Medek', 90),
(2, 'Pedia', 60),
(3, 'Bobath', 30),
(4, 'Respiratoria', 30);

-- --------------------------------------------------------

--
-- Estrutura da tabela `terapeutas`
--

CREATE TABLE `terapeutas` (
  `idterapeuta` int(11) NOT NULL,
  `nome_terapeuta` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `terapeutas`
--

INSERT INTO `terapeutas` (`idterapeuta`, `nome_terapeuta`, `email`, `created`, `modified`) VALUES
(1, 'Mariela Fioriti Liberatori da Cruz', 'marielaflc@gmail.com', '2021-04-09 18:12:35', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `horarioatendimento`
--
ALTER TABLE `horarioatendimento`
  ADD PRIMARY KEY (`idhorario`);

--
-- Índices para tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`idpaciente`);

--
-- Índices para tabela `procedimento`
--
ALTER TABLE `procedimento`
  ADD PRIMARY KEY (`idprocedimento`);

--
-- Índices para tabela `terapeutas`
--
ALTER TABLE `terapeutas`
  ADD PRIMARY KEY (`idterapeuta`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `horarioatendimento`
--
ALTER TABLE `horarioatendimento`
  MODIFY `idhorario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `idpaciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `procedimento`
--
ALTER TABLE `procedimento`
  MODIFY `idprocedimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `terapeutas`
--
ALTER TABLE `terapeutas`
  MODIFY `idterapeuta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;