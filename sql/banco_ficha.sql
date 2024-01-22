-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22/01/2024 às 12:46
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco_ficha`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `compromisso`
--

CREATE TABLE `compromisso` (
  `id_compromisso` int(11) NOT NULL,
  `cod_compromisso` int(11) NOT NULL,
  `desc_compromisso` varchar(255) NOT NULL,
  `cod_des_programa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `compromisso`
--

INSERT INTO `compromisso` (`id_compromisso`, `cod_compromisso`, `desc_compromisso`, `cod_des_programa`) VALUES
(1, 1, 'Articular a oferta de serviços de promoção da cidadania com agenda integrada de acesso à justiça e direitos humanos', 1),
(2, 1, 'Promover a cultura de direitos humanos e o respeito às diversidades, contribuindo para a formação de uma consciência cidadã', 2),
(3, 1, 'Ampliar a proteção social básica à famílias e indivíduos em situação de vulnerabilidades e riscos sociais, com vínculos familiares e comunitários fragilizados', 3),
(4, 1, 'Promover a segurança alimentar e nutricional, prioritariamente das populações em situação de vulnerabilidade e risco social, considerando os recortes de gênero, raça, etnia, geração e territorialidades', 4),
(5, 1, 'Promover ações de redução de riscos e danos com enfoque no cuidado em liberdade para populações que fazem uso problemático de álcool e outras drogas ou afetadas por problemas relacionados à criminalização das drogas em contextos de vulnerabilidade', 5),
(6, 1, 'Intensificar a articulação dos atores do ecossistema de Ciência, Tecnologia e Inovação no estado', 6),
(7, 1, 'Fomentar as cadeias produtivas e os segmentos culturais de forma descentralizada territorialmente e abrangente setorialmente, visando a ampliação do acesso democrático aos bens e serviços culturais e artísticos', 7),
(8, 1, 'Salvaguadar a memória cultural e o patrimônio material, imaterial, histórico, natural, artístico', 8),
(9, 1, 'Promover os segmentos cultural e criativo como vetores estratégicos para o desenvolvimento do estado da Bahia', 9),
(10, 1, 'Promover a atração de novos investimentos produtivos potencializando a sustentabilidade ambiental e socioeconômica do estado', 10),
(11, 1, 'Desenvolver ações de atração e fortalecimento  das micro e pequenas empresas', 11),
(12, 1, 'Estruturar a atividade turística desenvolvendo produtos e serviços em bases sustentáveis', 12),
(13, 1, 'Promover a inserção e reinserção formal do trabalhador no mercado de trabalho', 13),
(14, 1, 'Fomentar o desenvolvimento sustentável de empreendimentos solidários e/ou populares fortalecendo as respectivas cadeias produtivas e vocações territoriais', 14),
(15, 1, 'Promover a prática de atividades físicas, do esporte de participação, educacional e o lazer comunitário, considerando as vocações territoriais', 15),
(16, 1, 'Expandir o acesso à terra e a regularização fundiária para agricultores familiares e povos e comunidades tradicionais', 16),
(17, 1, 'Ampliar o alcance da Assistência Técnica e Extensão Rural - ATER continuada, de qualidade e adequada para a agricultura familiar, povos e comunidades tradicionais, assentados de reforma agrária, jovens, negros e mulheres', 17),
(18, 1, 'Fomentar os sistemas produtivos sustentáveis da agricultura familiar, povos originários e comunidades tradicionais, assentados da reforma agrária, jovens e mulheres, considerando as particularidades e potencialidades territoriais', 18),
(19, 1, 'Ampliar o acesso à moradia digna, de acordo com as especificidades socioterritoriais', 19),
(20, 1, 'Aprimorar a integração dos municípios do Território Metropolitano de Salvador', 20),
(21, 1, 'Desenvolver ações, planos, projetos e políticas de saneamento básico', 21),
(22, 1, 'Fortalecer o planejamento territorial urbano', 22),
(23, 1, 'Elevar a qualidade da Educação Básica por meio do processo formativo omnilateral, da escola como espaço de fruição, da melhoria da aprendizagem e da regularização do fluxo escolar', 23),
(24, 1, 'Assegurar, no processo formativo dos(as) estudantes, a omnilateralidade e a territorialização  da rede estadual pública de educação profissional e tecnológica ', 24),
(25, 1, 'Expandir a interiorização do acesso à graduação e pós-gradução das instituições estaduais públicas de Educação Superior', 25),
(26, 1, 'Promover ações para o aprimoramento do Regime de Colaboração Federativa dos sistemas de ensino articulando os diferente níveis de governo', 26),
(27, 1, 'Ampliar o enfrentamento aos racismos', 27),
(28, 1, 'Promover a visibilidade e permanência para os Povos e Comunidades Tradicionais', 28),
(29, 1, 'Ampliar estratégias de políticas públicas e de regularização fundiária para povos indígenas em situação de conflito', 29),
(30, 1, 'Fortalecer ações estruturantes de enfrentamento à violência contra todas as mulheres, nas suas diversidades, nos espaços urbanos e rurais', 30),
(31, 1, 'Promover a inclusão socioprodutiva e a autonomia social, econômica e de tomadas de decisões das mulheres, nas suas diversidades, com ênfase em mulheres negras, nos espaços urbanos e rurais', 31),
(32, 1, 'Ampliar a Infraestrutura de energia elétrica com implantação de novas subestações, linhas de transmissão e distribuição', 32),
(33, 1, 'Promover a expansão e melhoria da qualidade da infraestrutura  rodoviária em todo o território baiano', 33),
(34, 1, 'Aprimorar o planejamento e a gestão ambiental participativa, integrada e compartilhada', 34),
(35, 1, 'Desenvolver planos e políticas de Segurança Hídrica', 35),
(36, 1, 'Fortalecer a resolutividade da Atenção Primária (APS) como coordenadora do cuidado e ordenadora da rede', 36),
(37, 1, '\"Aperfeiçoar a gestão estratégica em saúde de forma participativa com ênfase na regionalização, ampliando os mecanismos de controle e transparência, os canais de diálogo com a sociedade e o exercício pleno do controle social', 37),
(38, 1, 'Fortalecer a polícia comunitária visando à prevenção social à violência e aprimorar a qualidade de atendimento e dos serviços prestados ao cidadão, notadamente aos grupos  vulnerabilizados', 38),
(39, 1, 'Promover a melhoria contínua do sistema penitenciário com ênfase na racionalização de práticas operacionais e na modernização física e tecnológica das unidades prisionais', 39),
(40, 1, 'Promover ações de educação e conscientização para a redução dos Sinistros de Trânsito na Bahia', 40),
(41, 1, 'Fortalecer a concepção sistêmica e a integração do planejamento e gestão estratégica ', 41),
(42, 1, 'Fortalecer a arrecadação das receitas correntes, melhorando a produtividade da fiscalização e modernizando os modelos, processos e instrumentos de fiscalização, visando a manutenção do equilíbrio fiscal', 42),
(43, 1, 'Qualificar a gestão do atendimento dos serviços públicos ofertados pela Rede Serviço de Atendimento ao Cidadão (SAC)', 43),
(44, 1, 'Aprimorar a governança de Tecnologia da Informação e Comunicação (TIC) na gestão pública', 44),
(45, 1, 'Aprimorar instrumentos e mecanismos de participação e controle social no ciclo das políticas públicas, bem como as relações institucionais entre Estado e sociedade', 45),
(46, 1, 'Promover o desenvolvimento de competências dos servidores públicos, com vistas à potencialização do desempenho individual e de equipes, com foco nos processos organizacionais e no alcance de resultados das políticas públicas', 46),
(47, 1, 'Aprimorar a governança do Estado como controlador nas decisões estratégicas de preservação e gestão do patrimônio público', 47),
(48, 1, 'Prover o exercício do mandato parlamentar', 48),
(49, 1, 'Promover o Aprimoramento da Gestão Pública Estadual', 49),
(50, 1, 'Promover a integração do TCM com a sociedade', 50),
(51, 1, 'Assegurar acesso à justiça com cidadania e responsabilidade socioambiental', 51),
(52, 1, 'Desenvolver uma atuação ministerial integrada, estruturante e resolutiva na promoção do interesse social e na garantia dos direitos humanos', 52),
(53, 1, 'Prestar assistência jurídica, integral e gratuita', 53),
(54, 2, 'Articular ações de prevenção às ameaças e violações dos direitos das pessoas em situação de risco e vulnerabilidade social', 1),
(55, 2, 'Fortalecer práticas individuais e coletivas em favor da promoção, proteção e da defesa dos direitos humanos', 2),
(56, 2, 'Ampliar a proteção social especial à famílias e indivíduos em situação de ameaças, violências e violações de direitos, com vínculos familiares e comunitários fragilizados e rompidos', 3),
(57, 2, 'Realizar a aquisição e doação simultânea de alimentos da agricultura familiar', 4),
(58, 2, 'Ofertar o acolhimento residencial voluntário e transitório para pessoas que fazem uso problemático de álcool e outras drogas', 5),
(59, 2, 'Fomentar a Ciência, Tecnologia e Inovação para o Desenvolvimento sustentável do estado', 6),
(60, 2, 'Aprimorar física e tecnologicamente a rede de equipamentos culturais', 7),
(61, 2, 'Salvaguardar a memória histórica, bibliográfica e documental, protegendo o acervo documental proveniente de arquivos públicos e privados', 8),
(62, 2, 'Fortalecer o setor do audiovisual como vetor estratégico de desenvolvimento da economia criativa e sua cadeia produtiva', 9),
(63, 2, 'Implantar o Plano Estadual para a Economia do Hidrogênio Verde com responsabilidade socioambiental e sanitária', 10),
(64, 2, 'Aprimorar o ambiente de gestão com a adoção de inovação e tecnologia direcionada para o fortalecimento do empreendedorismo das micro, pequenas e empresas', 11),
(65, 2, 'Intensificar a  promoção do destino Bahia regional, nacional e internacionalmente', 12),
(66, 2, 'Promover a qualificação profissional de trabalhadoras e trabalhadores, jovens e populações em situação de vulnerabilidade social', 13),
(67, 2, 'Disseminar o serviço de assistência técnica a empreendimentos econômicos solidários, cooperativos e populares, fortalecendo a presença e capacidade dos Centros Públicos de Economia Solidária', 14),
(68, 2, 'Promover infraestrutura suficiente e adequada para a prática do esporte e lazer', 15),
(69, 2, 'Aperfeiçoar a geração e a democratização do conhecimento através de pesquisa, desenvolvimento e inovação focada em sistemas produtivos estratégicos, com ênfase na convivência com os diferentes Biomas', 17),
(70, 2, 'Promover a agregação de valor e o acesso aos mercados para produtos da agricultura familiar, incentivando a inclusão produtiva, o cooperativismo, o associativismo e a economia solidária no meio rural', 18),
(71, 2, 'Aprimorar as condições de habitação na Bahia, contemplando questões urbanísticas e fundiárias', 19),
(72, 2, 'Aperfeiçoar as condições de mobilidade intraurbana e intra e inter-regionais', 20),
(73, 2, 'Desenvolver ações, projetos e planos voltados à melhoria da drenagem e manejo das águas pluviais urbanas', 21),
(74, 2, 'Promover a governança interfederativa nas regiões metropolitanas, aglomerações urbanas e Regiões Integradas de Desenvolvimento (RIDE)', 22),
(75, 2, 'Desenvolver o acompanhamento, monitoramento e avaliação dos processos pedagógicos em todas as etapas e modalidades da Educação Básica', 23),
(76, 2, 'Potencializar a produção de tecnologias sociais nas unidades da rede estadual de ensino ofertantes de Educação Profissional', 24),
(77, 2, 'Consolidar as políticas de acesso e permanência integradas às estratégias de inclusão', 25),
(78, 2, 'Promover a gestão educacional democrática e participativa assegurando a participação da comunidade escolar', 26),
(79, 2, 'Promover a autonomia econômica de pessoas negras', 27),
(80, 2, 'Promover estratégias de apoio aos povos e comunidades tradicionais em situação conflito', 28),
(81, 2, 'Promover autonomia econômica e financeira dos povos indígenas', 29),
(82, 2, 'Promover ações de prevenção à violência contra todas as mulheres, em suas diversidades, nos espaços urbanos e rurais', 30),
(83, 2, 'Fomentar a governança estratégica das políticas para as mulheres, nos organismos municipais, o controle social e a participação das mulheres na política', 31),
(84, 2, 'Expandir o acesso a energia elétrica em todo o meio rural', 32),
(85, 2, 'Promover a diversificação nos modais de transporte e a integração logística da Bahia', 33),
(86, 2, 'Fortalecer as Unidades de Conservação e demais espaços territoriais especialmente protegidos', 34),
(87, 2, 'Ampliar o volume de reservação de água com infraestrutura hídrica', 35),
(88, 2, 'Fortalecer a transversalidade das políticas de equidade na Rede de Atenção à Saúde (RAS) com ênfase na atenção integral a saúde das populações historicamente excluídas, discriminadas e/ou estigmatizadas', 36),
(89, 2, 'Fomentar pesquisa, o desenvolvimento produtivo, científico e tecnológico em saúde', 37),
(90, 2, 'Aprimorar o enfrentamento à criminalidade violenta e às organizações criminosas', 38),
(91, 2, 'Promover ações para reinserção social das pessoas privadas de liberdade e egressos do sistema penitenciário', 39),
(92, 2, 'Promover a Gestão do Trânsito no Estado', 40),
(93, 2, 'Aperfeiçoar a gestão de dados de interesse para formulação de políticas públicas e gestão por evidências', 41),
(94, 2, 'Potencializar a recuperação da dívida ativa do Estado', 42),
(95, 2, 'Disseminar modelo de atendimento ao cidadão para a qualificação do atendimento na prestação de serviços e informações pelos órgãos governamentais', 43),
(96, 2, 'Aprimorar  a infraestrutura tecnológica para viabilização do Governo Digital', 44),
(97, 2, 'Aprimorar a transparência ativa e passiva do governo estadual ', 45),
(98, 2, 'Promover políticas e práticas em gestão de pessoas que fortaleçam a atração, valorização e engajamento dos servidores para realização da estratégia organizacional e melhoria na prestação dos serviços públicos', 46),
(99, 2, 'Aperfeiçoar a governança das compras e contratações públicas do Poder Executivo Estadual', 47),
(100, 2, 'Aprimorar a gestão da Assembleia Legislativa', 48),
(101, 2, 'Contribuir para o exercício do Controle Social', 49),
(102, 2, 'Aprimorar o modelo de governança institucional', 50),
(103, 2, 'Aprimorar a eficiência da prestação jurisdicional', 51),
(104, 2, 'Aprimorar a atuação institucional', 52),
(105, 2, 'Fomentar ações voltadas aos direitos humanos de forma integrada com os demais poderes do sistema de justiça e órgãos do estado e do municípios', 53),
(106, 3, 'Proteger pessoas ameaçadas de morte', 1),
(107, 3, 'Promover ações educativas de proteção e defesa das relações de consumo para a construção de uma cultura de respeito', 2),
(108, 3, 'Fortalecer a vigilância socioassistencial em suas dimensões', 3),
(109, 3, 'Promover a inclusão socioprodutiva e o desenvolvimento social das populações em situação de vulnerabilidade e risco social, considerando os recortes de gênero, raça, etnia, geração e territorialidades', 4),
(110, 3, 'Promover a inclusão socioprodutiva de pessoas em situação de extrema vulnerabilidade que fazem uso problemático de álcool e outras drogas', 5),
(111, 3, 'Contribuir com a infraestrutura de Ciência, Tecnologia e Inovação do estado', 6),
(112, 3, 'Consolidar o desenvolvimento territorial da Cultura no Estado, contemplando e fortalecendo sua diversidade de expressões manifestadas em todos os territórios de identidade', 7),
(113, 3, 'Promover a diversidade das expressões da cultura popular, transmissão de saberes e fazeres, e expressões das culturas identitárias; indígena, afrobrasileira, dos sertões, de gênero, raça, etária e orientação sexual', 8),
(114, 3, 'Promover a formação artística e capacitação técnica e criativa dos agentes e fazedores de cultura em consonância com as vocações territoriais, fortalecendo os negócios culturais e impulsionando as cadeias produtivas culturais e criativas', 9),
(115, 3, 'Aprimorar a gestão e integração relacionadas à política de atração do Estado', 10),
(116, 3, 'Aprimorar a infraestrutura turística do Estado', 12),
(117, 3, 'Promover a inserção no mundo do trabalho de estudantes e egressos da educação profissional técnica de nível médio da rede pública estadual e da educação superior, com a garantia de direitos e relações de trabalho decentes, em especial das questões de raça', 13),
(118, 3, 'Promover a inclusão socioprodutiva por meio da produção artesanal, como forma de geração de renda', 14),
(119, 3, 'Fomentar o esporte de alto desempenho considerando as vocações territoriais', 15),
(120, 3, 'Promover ações de mitigação dos efeitos das mudanças climáticas na produção agrícola', 17),
(121, 3, 'Promover ações de inclusão produtiva para produtores de médio e pequeno porte', 18),
(122, 3, 'Ampliar a oferta de habitação adequada nas áreas rurais, em acordo com as especificidades sociais e produtivas', 19),
(123, 3, 'Garantir o serviço de transporte intermunicipal regular de passageiros com qualidade e segurança', 20),
(124, 3, 'Desenvolver ações na área de resíduos sólidos, prioritariamente em consórcios públicos multifinalitários', 21),
(125, 3, 'Fortalecer as instâncias e processos de participação e de controle social democráticos', 22),
(126, 3, 'Qualificar as estratégias que assegurem a implementação da Educação Decolonial, Antirracista e Inclusiva na Educação Básica', 23),
(127, 3, 'Assegurar as políticas de acesso e permanência integradas às estratégias de inclusão na Educação Profissional', 24),
(128, 3, 'Promover o desenvolvimento de atividades de Extensão universitária em articulação permanente com o ensino e a pesquisa', 25),
(129, 3, 'Aprimorar a produção, tratamento e gestão das informações inerentes as políticas educacionais', 26),
(130, 3, 'Promover ações de fortalecimento do Sistema Estadual de Promoção da Igualdade Racial - Sisepir', 27),
(131, 3, 'Promover ações de enfrentamento ao racismo religioso', 28),
(132, 3, 'Promover ações versando o respeito aos povos indígenas', 29),
(133, 3, 'Fortalecer o setor de energia renovável, ampliando a geração, o uso racional e o adensamento de cadeias', 32),
(134, 3, 'Potencializar a conservação da biodiversidade nos diferentes biomas do estado', 34),
(135, 3, 'Desenvolver ações ambientais em corpos hídricos do estado', 35),
(136, 3, 'Potencializar a Rede de Atenção à Saúde (RAS) de forma regionalizada, humanizada, ampliando a equidade de acesso e garantindo a integralidade', 36),
(137, 3, 'Ordenar a formação, educação na saúde e fortalecer as estratégias de gestão do trabalho, com foco na valorização do trabalho e do trabalhador no SUS/BA', 37),
(138, 3, 'Fortalecer as atividades de produção da prova material e identificação civil', 38),
(139, 3, 'Fortalecer os mecanismos de aplicação de alternativas penais', 39),
(140, 3, 'Consolidar o planejamento de longo prazo, por meio de atualização e aprimoramento do Plano de Desenvolvimento Integrado', 41),
(141, 3, 'Promover a redução da taxa de crescimento dos déficits do Regime Próprio de Previdência dos Servidores Públicos do Estado da Bahia (RPPS) e do Sistema de Proteção Social dos Policiais e Bombeiros Militares (SPSM)', 42),
(142, 3, 'Fortalecer a gestão das parcerias celebradas com entidades sem fins lucrativos para aprimoramento das políticas púbicas e dos processos de interação com a sociedade', 43),
(143, 3, 'Desenvolver a transformação digital dos serviços públicos', 44),
(144, 3, 'Fortalecer o Sistema de Controle Interno do Poder Executivo Estadual', 45),
(145, 3, 'Fortalecer a assistência à saúde dos servidores públicos e seus dependentes, objetivando a sua sustentabilidade futura', 46),
(146, 3, 'Promover a eficiência da gestão patrimonial com o uso de modelagem de informação da construção', 47),
(147, 3, 'Promover a aproximação da sociedade baiana e o Poder Legislativo', 48),
(148, 3, 'Aprimorar os processos de trabalho finalísticos, gerenciais e de suporte', 49),
(149, 3, 'Fortalecer o exercício do controle externo da gestão pública municipal', 50),
(150, 3, 'Desenvolver a governança corporativa', 51),
(151, 3, 'Aprimorar a Gestão Administrativa', 52),
(152, 3, 'Aprimorar a gestão de pessoas da Defensoria Pública', 53),
(153, 4, 'Promover acessibilidade às pessoas com deficiência', 1),
(154, 4, 'Promover a defesa de direitos socioassitenciais', 3),
(155, 4, 'Ampliar a oferta de tecnologias sociais de captação e acesso à água para consumo humano e produção', 4),
(156, 4, 'Fortalecer a governança intersetorial da política estadual sobre drogas', 5),
(157, 4, 'Fomentar o desenvolvimento, a disseminação e o uso das tecnologias sociais e ambientais', 6),
(158, 4, 'Promover a preservação e a valorização da tradição afro nos munícipios, com apoio a festas, ritos e outras festividades - Programa Ouro Negro', 8),
(159, 4, 'Fortalecer festas, celebrações e eventos da Bahia promovendo a interiorização e o desenvolvimento do turismo', 12),
(160, 4, 'Disseminar o Trabalho Decente como prevenção à precarização das relações e condições de trabalho', 13),
(161, 4, 'Fortalecer as finanças solidárias e a oferta de crédito para microempreendedores populares, cooperativas e associações', 14),
(162, 4, 'Fortalecer o sistema público de esporte e lazer', 15),
(163, 4, 'Promover a gestão de políticas públicas de desenvolvimento rural e reforma agrária nos territórios de identidade', 17),
(164, 4, 'Promover a sanidade na agropecuária do estado', 18),
(165, 4, 'Desenvolver ações e planos voltados à adequação habitacional', 19),
(166, 4, 'Ampliar a disponibilidade de equipamentos públicos urbanos', 20),
(167, 4, 'Expandir a cobertura do esgotamento sanitário nas áreas urbana e rural', 21),
(168, 4, 'Qualificar a educação contextualizada, atendendo as modalidades da educação do campo, educação escolar indígena e educação escolar quilombola e as propostas pedagógicas específicas dos povos e comunidades tradicionais', 23),
(169, 4, 'Ofertar Educação Profissional, integrada a Juventude e aos trabalhadores e trabalhadoras em seus diferentes níveis e modalidades de ensino e as dimensões do trabalho', 24),
(170, 4, 'Desenvolver Pesquisa e Inovação Tecnológica integrada ao desenvolvimento local e regional em consonância com os aspectos socioeconômicos, culturais e ambientais', 25),
(171, 4, 'Assegurar o atendimento Biopsicossocial dos docentes e dos profissionais da educação, com ênfase na prevenção de doenças decorrentes do trabalho', 26),
(172, 4, 'Ampliar a distribuição e comercialização de gás nos diversos municípios da Bahia, priorizando a política de preços com sustentabilidade ambiental', 32),
(173, 4, 'Potencializar a educação ambiental de forma transversal e continuada', 34),
(174, 4, 'Fortalecer a regulação nas três dimensões de atuação: Sistemas, Atenção à Saúde e Acesso a Assistência de forma equânime, oportuna e integrada à Rede de Atenção à Saúde (RAS)', 36),
(175, 4, 'Incorporar as estratégias de saúde digital no âmbito estadual', 37),
(176, 4, 'Fortalecer as ações das corregedorias visando à redução da criminalidade e letalidade policial', 38),
(177, 4, 'Promover articulação com os órgãos do sistema de Justiça para redução dos presos provisórios', 39),
(178, 4, 'Potencializar a negociação de parcerias e mobilizações de recursos para financiamento de políticas públicas', 41),
(179, 4, 'Aperfeiçoar a gestão do acervo documental (físico e digital) e a preservação da memória institucional do Estado', 43),
(180, 4, 'Promover a governança estadual de dados', 44),
(181, 4, 'Ampliar o acesso dos cidadãos aos serviços públicos, atos oficiais e demais comunicações governamentais', 45),
(182, 4, 'Otimizar o tempo de concessão de benefícios', 46),
(183, 4, 'Implementar o Plano Diretor do Centro Administrativo da Bahia (CAB)', 47),
(184, 4, 'Desenvolver cultura organizacional orientada para pessoas e resultados', 49),
(185, 4, 'Modernizar, de forma sustentável, a infraestrutura física, organizacional e tecnológica do TCM/BA', 50),
(186, 4, 'Exercer o cumprimento dos serviços de justiça prestados pelos magistrados e servidores', 51),
(187, 4, 'Apoiar as atividades institucionais através do uso estratégico da tecnologia da informação', 52),
(188, 4, 'Fortalecer a capacidade institucional da Defensoria Pública', 53),
(189, 5, 'Assegurar o atendimento qualificados dos consumidores ', 1),
(190, 5, 'Aprimorar a oferta do Serviço de Atenção a Pessoas em Situação de Violência Sexual', 3),
(191, 5, 'Instituir governança estratégica da política de segurança alimentar e nutricional com mecanismos e instrumentos de transversalidade e intersetorialidade sistemática', 4),
(192, 5, 'Aperfeiçoar a gestão democrática, a participação e o controle social no âmbito da política sobre drogas', 5),
(193, 5, 'Promover ações de disseminação e popularização da cultura científica, tecnológica e de inovação', 6),
(194, 5, 'Fortalecer o sistema estadual de gestão de turismo', 12),
(195, 5, 'Fomentar a geração de renda de trabalhadoras(es) autônomas(os) e MEI\'s - Micro e Pequenas(os) Empreendedoras(es) Individuais', 13),
(196, 5, 'Ampliar o acesso à água de qualidade e em quantidade adequada na área rural, com foco no semiárido', 21),
(197, 5, 'Promover a Educação de Jovens, Adultos e Idosos que não concluíram a Educação Básica', 23),
(198, 5, 'Promover a gestão universitária democrática e inovadora', 25),
(199, 5, 'Potencializar ações de adaptação e mitigação das mudanças climáticas', 34),
(200, 5, 'Aprimorar a Rede de Atenção Hematológica e Hemoterápica, Fortalecendo a Regionalização', 36),
(201, 5, 'Promover a gestão dos recursos administrativos e infraestrutura para prestação das ações e serviços de saúde', 37),
(202, 5, 'Aprimorar a cobertura dos serviços de prevenção e respostas às emergências e desastres e o enfrentamento às irregularidades relacionadas à segurança contra incêndio e pânico no estado', 38),
(203, 5, 'Promover a incorporação da Política de Desenvolvimento Territorial, com participação social, no ciclo do planejamento e gestão governamental', 41),
(204, 5, 'Ampliar o atendimento à população, de forma presencial e por meio eletrônico, do Arquivo Público do Estado da Bahia (APEB)', 43),
(205, 5, 'Implementar política de combate à desinformação', 45),
(206, 5, 'Promover a acessibilidade dos prédios públicos no Centro Administrativo da Bahia (CAB)', 47),
(207, 5, 'Ampliar o uso dos Sistemas de Informação', 49),
(208, 5, 'Fortalecer a gestão de pessoas, a aprendizagem organizacional e a qualidade de vida no trabalho', 52),
(209, 6, 'Promover ações fiscalizatórias na proteção dos consumidores', 1),
(210, 6, 'Aprimorar as ações de gestão do trabalho e educação permanente com base nos princípios e diretrizes do SUAS', 3),
(211, 6, 'Consolidar o abastecimento de água com qualidade na área urbana', 21),
(212, 6, 'Desenvolver ações de promoção e articulação do bem estar biopsicossocial dos estudantes', 23),
(213, 6, 'Promover a modernização e a inovação das tecnologias da informação e do geoprocessamento na Política de Meio Ambiente e de Recursos Hídricos', 34),
(214, 6, 'Consolidar o Sistema Estadual de Vigilância em Saúde como orientador do modelo de atenção, de forma regionalizada, aperfeiçoando e ampliando as ações de vigilância, proteção, promoção e prevenção em saúde em todos os territórios do estado', 36),
(215, 6, 'Ampliar a incorporação de tecnologias da informação e comunicação', 38),
(216, 6, 'Fomentar a cooperação interfederativa, especialmente o consorciamento  público de municípios, com vistas ao fortalecimento da capacidade de desenvolvimento e gestão de políticas públicas', 41),
(217, 6, 'Fomentar a implantação e o funcionamento de Arquivos Públicos Municipais', 43),
(218, 6, 'Fomentar o uso racional de água e energia nos prédios públicos do Poder Executivo Estadual', 47),
(219, 6, '\"Aperfeiçoar a infraestrutura e otimizar a utilização de recursos', 49),
(220, 7, 'Assegurar o atendimento qualificado para adolescentes e jovens em cumprimento de medidas socioeducativas restritivas e privativas de liberdade', 1),
(221, 7, 'Aperfeiçoar a gestão democrática, a participação e o controle social no âmbito da política de assistência social', 3),
(222, 7, 'Promover a comunicação pública como ferramenta para a educação, informação e entretenimento', 23),
(223, 7, 'Promover a Transição Socioambiental, Ecológica e Econômica do estado', 34),
(224, 7, 'Fortalecer a capacidade de resposta em situações de emergência em saúde pública', 36),
(225, 7, 'Aperfeiçoar a gestão de pessoas, a saúde e a valorização do profissional', 38),
(226, 7, 'Promover a formação de competências em planejamento e gestão estratégica', 41),
(227, 8, 'Promover a reintegração social de adolescentes e jovens no pós medida', 1),
(228, 8, 'Promover a convivência comunitária e a promoção social por meio dos equipamentos descentralizados', 3),
(229, 8, 'Desenvolver programas de formação para docente e profissionais não docentes da Rede Estadual de Ensino ', 23),
(230, 8, 'Prover a gestão estratégica, a logística e a infraestrutura física necessárias ao funcionamento do Sistema Estadual de Segurança Pública (SESP)', 38),
(231, 8, 'Subsidiar o planejamento e gestão de políticas públicas com análises sistemáticas sobre aspectos socioeconômicos, demográficos, geográficos e de recursos naturais e ambientais do estado', 41),
(232, 9, 'Fortalecer a produção de conhecimento, dados e metodologias inovadoras no âmbito da política pública de acesso à justiça e direitos humanos', 1),
(233, 9, 'Promover ações de prevenção, preparação, mitigação, resposta e recuperação a desastres', 38),
(234, 9, 'Promover a produção e atualização de geoinformação de referência e temática em escala adequada para cobertura do território baiano', 41),
(235, 10, 'Fortalecer a gestão democrática e participativa da política pública de acesso à justiça e direitos humanos', 1),
(236, 10, 'Promover a atualização de limites territoriais interestaduais, intermunicipais e interdistritais', 41),
(237, 11, 'Consolidar a Infraestrutura de Dados Espaciais do Estado da Bahia (IDE-Bahia)', 41),
(238, 12, 'Promover a produção e incorporação de conhecimentos científicos, tecnologias e inovações dedicados à melhoria e integração da gestão pública', 41),
(239, 13, 'Aperfeiçoar as atividades de consultoria e assessoramento jurídico, e de representação judicial e extrajudicial do Estado', 41),
(240, 14, 'Fortalecer a incorporação e sistematização de processos e práticas de planejamento e gestão estratégica (níveis organizacional e estratégico de médio e longo prazos - Plano Plurianual e Plano de Desenvolvimento Integrado)', 41),
(241, 15, 'Fortalecer arranjos político-institucionais de mútua colaboração, intraestaduais, interfederativos e interpoderes, para formulação e gestão de políticas públicas', 41),
(242, 16, 'Promover política articulada de investimentos para expansão e diversificação da economia, que contribuam para o desenvolvimento socioeconômico do estado', 41),
(243, 17, 'Promover a implementação de políticas e programas para a juventude', 41),
(244, 18, 'Assegurar a gestão das ações integradas de promoção da segurança alimentar e nutricional', 41);

-- --------------------------------------------------------

--
-- Estrutura para tabela `eixo`
--

CREATE TABLE `eixo` (
  `id_eixo` int(11) NOT NULL,
  `cod_eixo_estrategico` int(11) NOT NULL,
  `nome_eixo_estrategico` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `eixo`
--

INSERT INTO `eixo` (`id_eixo`, `cod_eixo_estrategico`, `nome_eixo_estrategico`) VALUES
(1, 1, 'Assistência Social e Garantia de Direitos'),
(2, 2, 'Ciência, Tecnologia e Inovação'),
(3, 3, 'Cultura'),
(4, 4, 'Desenvolvimento Produtivo'),
(5, 5, 'Desenvolvimento Rural'),
(6, 6, 'Desenvolvimento Urbano e Rede de Cidades'),
(7, 7, 'Educação'),
(8, 8, 'Igualdade Racial e Gênero e Povos e Comunidades Tradicionais'),
(9, 9, 'Infraestrutura e Logística'),
(10, 10, 'Meio Ambiente e Segurança Hídrica'),
(11, 11, 'Saúde'),
(12, 12, 'Segurança Pública e Defesa Social'),
(13, 13, 'Gestão Governamental'),
(14, 15, 'Legislativo - Assembleia Legislativa da Bahia'),
(15, 16, 'Legislativo - Tribunal de Contas do Estado'),
(16, 17, 'Legislativo - Tribunal de Contas dos Municípios'),
(17, 18, 'Judiciário - Tribunal de Justiça'),
(18, 19, 'Ministério Público – MPE'),
(19, 20, 'Defensoria Pública – DPE');

-- --------------------------------------------------------

--
-- Estrutura para tabela `medidas`
--

CREATE TABLE `medidas` (
  `id` int(11) NOT NULL,
  `eixo_relacionado` varchar(255) NOT NULL,
  `problema_relacionado` varchar(255) NOT NULL,
  `compromisso_relacionado` varchar(255) NOT NULL,
  `problema` varchar(255) NOT NULL,
  `causas_criticas` varchar(255) NOT NULL,
  `acoes_criticas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `medidas`
--

INSERT INTO `medidas` (`id`, `eixo_relacionado`, `problema_relacionado`, `compromisso_relacionado`, `problema`, `causas_criticas`, `acoes_criticas`) VALUES
(17, '1 - Assistência Social e Garantia de Direitos', '432 - Bahia em Movimento: Logística para o Crescimento', '1 - \"Aperfeiçoar a gestão estratégica em saúde de forma participativa com ênfase na regionalização, ampliando os mecanismos de controle e transparência, os canais de diálogo com a sociedade e o exercício pleno do controle social', 'werw', 'ewr', 'ewr'),
(18, '1 - Assistência Social e Garantia de Direitos', '400 - Acesso à Justiça e aos Direitos Humanos', '1 - Ampliar o alcance da Assistência Técnica e Extensão Rural - ATER continuada, de qualidade e adequada para a agricultura familiar, povos e comunidades tradicionais, assentados de reforma agrária, jovens, negros e mulheres', 'fgd', 'dfg', 'dg'),
(19, '1 - Assistência Social e Garantia de Direitos', '400 - Acesso à Justiça e aos Direitos Humanos', '1 - Ampliar a Infraestrutura de energia elétrica com implantação de novas subestações, linhas de transmissão e distribuição', 'ew', 'we', 'w'),
(20, '1 - Assistência Social e Garantia de Direitos', '400 - Acesso à Justiça e aos Direitos Humanos', '1 - \"Aperfeiçoar a gestão estratégica em saúde de forma participativa com ênfase na regionalização, ampliando os mecanismos de controle e transparência, os canais de diálogo com a sociedade e o exercício pleno do controle social', 'wew', 'we', 'we'),
(21, '1 - Assistência Social e Garantia de Direitos', '400 - Acesso à Justiça e aos Direitos Humanos', '1 - \"Aperfeiçoar a gestão estratégica em saúde de forma participativa com ênfase na regionalização, ampliando os mecanismos de controle e transparência, os canais de diálogo com a sociedade e o exercício pleno do controle social', 'ewe', 'we', 'wew'),
(22, '1 - Assistência Social e Garantia de Direitos', '400 - Acesso à Justiça e aos Direitos Humanos', '1 - Ampliar a proteção social básica à famílias e indivíduos em situação de vulnerabilidades e riscos sociais, com vínculos familiares e comunitários fragilizados', 'rfdsfdsf', 'gdfsgf', 'fdgfd'),
(23, '1 - Assistência Social e Garantia de Direitos', '400 - Acesso à Justiça e aos Direitos Humanos', '1 - Ampliar a proteção social básica à famílias e indivíduos em situação de vulnerabilidades e riscos sociais, com vínculos familiares e comunitários fragilizados', 'rfdsfdsf', 'gdfsgf', 'fdgfd'),
(24, '1 - Assistência Social e Garantia de Direitos', '401 - Educação e Cultura em Direitos Humanos', '1 - \"Aperfeiçoar a gestão estratégica em saúde de forma participativa com ênfase na regionalização, ampliando os mecanismos de controle e transparência, os canais de diálogo com a sociedade e o exercício pleno do controle social', 'dsfds', 'sdfdsf', 'dsfdsf');

-- --------------------------------------------------------

--
-- Estrutura para tabela `programa`
--

CREATE TABLE `programa` (
  `id_programa` int(11) NOT NULL,
  `cod_programa_governo` int(11) NOT NULL,
  `desc_programa_governo` varchar(255) NOT NULL,
  `cod_nome_eixo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `programa`
--

INSERT INTO `programa` (`id_programa`, `cod_programa_governo`, `desc_programa_governo`, `cod_nome_eixo`) VALUES
(1, 400, 'Acesso à Justiça e aos Direitos Humanos', 1),
(2, 401, 'Educação e Cultura em Direitos Humanos', 1),
(3, 402, 'SUAS Bahia: Fortalecendo a Assistência Social', 1),
(4, 403, 'Segurança Alimentar e Nutricional com Justiça Social', 1),
(5, 404, 'Cuidado em Liberdade: Reduzindo Danos', 1),
(6, 405, 'Bahia Mais Inovadora: Estímulo e Difusão de Ciência, Tecnologia e Inovação', 2),
(7, 406, 'Cultura em Toda a Bahia', 3),
(8, 407, 'Memória e Patrimônio Cultural', 3),
(9, 408, 'Economia da Cultura e Inovação', 3),
(10, 409, 'Cresce Mais Bahia', 4),
(11, 410, 'Fortalece Aê', 4),
(12, 411, 'Viva Bahia: Turismo e Desenvolvimento', 4),
(13, 412, 'Trabalho Decente', 4),
(14, 413, 'Bahia Solidária e Artesanal', 4),
(15, 414, 'Esporte por Toda Parte', 4),
(16, 415, 'Minha Terra Legal: Acesso à Terra e Garantia de Direitos no Campo', 5),
(17, 416, 'Cultive Conhecimento: Assistência Técnica e Extensão Rural para o Sucesso no Campo', 5),
(18, 417, 'Campo Sustentável: Cultivando a Vida e o Futuro', 5),
(19, 418, 'Bahia Minha Casa', 6),
(20, 419, 'Mobilidade Bahia', 6),
(21, 420, 'Universalização do Saneamento Básico', 6),
(22, 421, 'Urbaniza Bahia', 6),
(23, 422, 'Escola Presente: Permanências e Aprendizagem', 7),
(24, 423, 'Educatecno: Educação, Tecnologia e Mundo do Trabalho', 7),
(25, 424, 'Educação Superior da Bahia: Ensino, Pesquisa e Extensão', 7),
(26, 425, 'Escola Democrática: Participação Social e Qualidade', 7),
(27, 426, 'Bahia Antirracista', 8),
(28, 427, 'Povos e Comunidades Tradicionais', 8),
(29, 428, 'Bahia Indígena', 8),
(30, 429, 'Mulher, Viver sem Violência', 8),
(31, 430, 'Direitos e Inclusão Socioprodutiva das Mulheres', 8),
(32, 431, 'Bahia Mais Energia: Potencializando o Desenvolvimento', 9),
(33, 432, 'Bahia em Movimento: Logística para o Crescimento', 9),
(34, 433, 'Meio Ambiente e Mudança do Clima', 10),
(35, 434, 'Segurança Hídrica', 10),
(36, 435, 'Cuidar Mais', 11),
(37, 436, 'SUS Mais Forte', 11),
(38, 437, 'Bahia Mais Segura', 12),
(39, 438, 'Ressocializar é o Caminho: Transformando Vidas', 12),
(40, 439, 'Gente Boa no Trânsito', 12),
(41, 440, 'Planeja Bahia', 13),
(42, 441, 'Gestão Fiscal', 13),
(43, 442, 'Gestão de Serviços Públicos', 13),
(44, 443, 'Governo Digital', 13),
(45, 444, 'Bahia Participativa', 13),
(46, 445, 'Gestão de Pessoas', 13),
(47, 446, 'Gestão do Patrimônio e da Logística de Suprimentos', 13),
(48, 460, 'Fortalecimento da Ação Legislativa', 14),
(49, 461, 'Efetividade no Controle Externo da Administração Pública Estadual, em benefício da sociedade', 15),
(50, 462, 'Efetividade do Controle Externo na Gestão Pública Municipal', 16),
(51, 463, 'Justiça Efetiva', 17),
(52, 464, 'Defesa da Sociedade e Promoção da Cidadania', 18),
(53, 465, 'Proteção dos direitos humanos e a defesa judicial e extrajudicial dos cidadãos e cidadãs', 19);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `compromisso`
--
ALTER TABLE `compromisso`
  ADD PRIMARY KEY (`id_compromisso`),
  ADD KEY `fk_programa` (`cod_des_programa`);

--
-- Índices de tabela `eixo`
--
ALTER TABLE `eixo`
  ADD PRIMARY KEY (`id_eixo`);

--
-- Índices de tabela `medidas`
--
ALTER TABLE `medidas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`id_programa`),
  ADD KEY `fk_eixo` (`cod_nome_eixo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `compromisso`
--
ALTER TABLE `compromisso`
  MODIFY `id_compromisso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT de tabela `eixo`
--
ALTER TABLE `eixo`
  MODIFY `id_eixo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `medidas`
--
ALTER TABLE `medidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `programa`
--
ALTER TABLE `programa`
  MODIFY `id_programa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `compromisso`
--
ALTER TABLE `compromisso`
  ADD CONSTRAINT `fk_programa` FOREIGN KEY (`cod_des_programa`) REFERENCES `programa` (`id_programa`);

--
-- Restrições para tabelas `programa`
--
ALTER TABLE `programa`
  ADD CONSTRAINT `fk_eixo` FOREIGN KEY (`cod_nome_eixo`) REFERENCES `eixo` (`id_eixo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
