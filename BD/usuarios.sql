Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `nome_usuario` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `usuario` varchar(220) NOT NULL,
  `senha` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `nome_usuario`, `email`, `usuario`, `senha`) VALUES
(1, 'Diego', 'diegocruz@gmail.com', 'diegocruz@gmail.com', '$2y$10$S4DQk5iIiGsY8VLPA8OCR.Rdw5YrNYBOkNeRhF16bb8yTv1UofzoC'),
(5, 'Rodrigo Cardozo', 'rodrigocardozo@gmail.com', 'rodrigocardozo@gmail.com', '$2y$10$XqwfnpV4Ys0RkPE3cgxlmejcv2RXhG.aRDIsd5DTF6EOwx3lw/mt2');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
