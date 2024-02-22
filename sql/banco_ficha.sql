-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 22-Fev-2024 às 00:44
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.2.0

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
-- Estrutura da tabela `compromisso`
--

DROP TABLE IF EXISTS `compromisso`;
CREATE TABLE IF NOT EXISTS `compromisso` (
  `id_compromisso` int NOT NULL AUTO_INCREMENT,
  `cod_compromisso` int NOT NULL,
  `desc_compromisso` varchar(255) NOT NULL,
  `cod_des_programa` int NOT NULL,
  PRIMARY KEY (`id_compromisso`),
  KEY `fk_programa` (`cod_des_programa`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `compromisso`
--

INSERT INTO `compromisso` (`id_compromisso`, `cod_compromisso`, `desc_compromisso`, `cod_des_programa`) VALUES
(1, 1, 'Articular a oferta de serviços de promoção da cidadania com agenda integrada de acesso à justiça e direitos humanos', 400),
(2, 1, 'Promover a cultura de direitos humanos e o respeito às diversidades, contribuindo para a formação de uma consciência cidadã', 401),
(3, 1, 'Ampliar a proteção social básica à famílias e indivíduos em situação de vulnerabilidades e riscos sociais, com vínculos familiares e comunitários fragilizados', 402),
(4, 1, 'Promover a segurança alimentar e nutricional, prioritariamente das populações em situação de vulnerabilidade e risco social, considerando os recortes de gênero, raça, etnia, geração e territorialidades', 403),
(5, 1, 'Promover ações de redução de riscos e danos com enfoque no cuidado em liberdade para populações que fazem uso problemático de álcool e outras drogas ou afetadas por problemas relacionados à criminalização das drogas em contextos de vulnerabilidade', 404),
(6, 1, 'Intensificar a articulação dos atores do ecossistema de Ciência, Tecnologia e Inovação no estado', 405),
(7, 1, 'Fomentar as cadeias produtivas e os segmentos culturais de forma descentralizada territorialmente e abrangente setorialmente, visando a ampliação do acesso democrático aos bens e serviços culturais e artísticos', 406),
(8, 1, 'Salvaguadar a memória cultural e o patrimônio material, imaterial, histórico, natural, artístico', 407),
(9, 1, 'Promover os segmentos cultural e criativo como vetores estratégicos para o desenvolvimento do estado da Bahia', 408),
(10, 1, 'Promover a atração de novos investimentos produtivos potencializando a sustentabilidade ambiental e socioeconômica do estado', 409),
(11, 1, 'Desenvolver ações de atração e fortalecimento  das micro e pequenas empresas', 410),
(12, 1, 'Estruturar a atividade turística desenvolvendo produtos e serviços em bases sustentáveis', 411),
(13, 1, 'Promover a inserção e reinserção formal do trabalhador no mercado de trabalho', 412),
(14, 1, 'Fomentar o desenvolvimento sustentável de empreendimentos solidários e/ou populares fortalecendo as respectivas cadeias produtivas e vocações territoriais', 413),
(15, 1, 'Promover a prática de atividades físicas, do esporte de participação, educacional e o lazer comunitário, considerando as vocações territoriais', 414),
(16, 1, 'Expandir o acesso à terra e a regularização fundiária para agricultores familiares e povos e comunidades tradicionais', 415),
(17, 1, 'Ampliar o alcance da Assistência Técnica e Extensão Rural - ATER continuada, de qualidade e adequada para a agricultura familiar, povos e comunidades tradicionais, assentados de reforma agrária, jovens, negros e mulheres', 416),
(18, 1, 'Fomentar os sistemas produtivos sustentáveis da agricultura familiar, povos originários e comunidades tradicionais, assentados da reforma agrária, jovens e mulheres, considerando as particularidades e potencialidades territoriais', 417),
(19, 1, 'Ampliar o acesso à moradia digna, de acordo com as especificidades socioterritoriais', 418),
(20, 1, 'Aprimorar a integração dos municípios do Território Metropolitano de Salvador', 419),
(21, 1, 'Desenvolver ações, planos, projetos e políticas de saneamento básico', 420),
(22, 1, 'Fortalecer o planejamento territorial urbano', 421),
(23, 1, 'Elevar a qualidade da Educação Básica por meio do processo formativo omnilateral, da escola como espaço de fruição, da melhoria da aprendizagem e da regularização do fluxo escolar', 422),
(24, 1, 'Assegurar, no processo formativo dos(as) estudantes, a omnilateralidade e a territorialização  da rede estadual pública de educação profissional e tecnológica ', 423),
(25, 1, 'Expandir a interiorização do acesso à graduação e pós-gradução das instituições estaduais públicas de Educação Superior', 424),
(26, 1, 'Promover ações para o aprimoramento do Regime de Colaboração Federativa dos sistemas de ensino articulando os diferente níveis de governo', 425),
(27, 1, 'Ampliar o enfrentamento aos racismos', 426),
(28, 1, 'Promover a visibilidade e permanência para os Povos e Comunidades Tradicionais', 427),
(29, 1, 'Ampliar estratégias de políticas públicas e de regularização fundiária para povos indígenas em situação de conflito', 428),
(30, 1, 'Fortalecer ações estruturantes de enfrentamento à violência contra todas as mulheres, nas suas diversidades, nos espaços urbanos e rurais', 429),
(31, 1, 'Promover a inclusão socioprodutiva e a autonomia social, econômica e de tomadas de decisões das mulheres, nas suas diversidades, com ênfase em mulheres negras, nos espaços urbanos e rurais', 430),
(32, 1, 'Ampliar a Infraestrutura de energia elétrica com implantação de novas subestações, linhas de transmissão e distribuição', 431),
(33, 1, 'Promover a expansão e melhoria da qualidade da infraestrutura  rodoviária em todo o território baiano', 432),
(34, 1, 'Aprimorar o planejamento e a gestão ambiental participativa, integrada e compartilhada', 433),
(35, 1, 'Desenvolver planos e políticas de Segurança Hídrica', 434),
(36, 1, 'Fortalecer a resolutividade da Atenção Primária (APS) como coordenadora do cuidado e ordenadora da rede', 435),
(37, 1, 'Aperfeiçoar a gestão estratégica em saúde de forma participativa com ênfase na regionalização, ampliando os mecanismos de controle e transparência, os canais de diálogo com a sociedade e o exercício pleno do controle social', 436),
(38, 1, 'Fortalecer a polícia comunitária visando à prevenção social à violência e aprimorar a qualidade de atendimento e dos serviços prestados ao cidadão, notadamente aos grupos  vulnerabilizados', 437),
(39, 1, 'Promover a melhoria contínua do sistema penitenciário com ênfase na racionalização de práticas operacionais e na modernização física e tecnológica das unidades prisionais', 438),
(40, 1, 'Promover ações de educação e conscientização para a redução dos Sinistros de Trânsito na Bahia', 439),
(41, 1, 'Fortalecer a concepção sistêmica e a integração do planejamento e gestão estratégica ', 440),
(42, 1, 'Fortalecer a arrecadação das receitas correntes, melhorando a produtividade da fiscalização e modernizando os modelos, processos e instrumentos de fiscalização, visando a manutenção do equilíbrio fiscal', 441),
(43, 1, 'Qualificar a gestão do atendimento dos serviços públicos ofertados pela Rede Serviço de Atendimento ao Cidadão (SAC)', 442),
(44, 1, 'Aprimorar a governança de Tecnologia da Informação e Comunicação (TIC) na gestão pública', 443),
(45, 1, 'Aprimorar instrumentos e mecanismos de participação e controle social no ciclo das políticas públicas, bem como as relações institucionais entre Estado e sociedade', 444),
(46, 1, 'Promover o desenvolvimento de competências dos servidores públicos, com vistas à potencialização do desempenho individual e de equipes, com foco nos processos organizacionais e no alcance de resultados das políticas públicas', 445),
(47, 1, 'Aprimorar a governança do Estado como controlador nas decisões estratégicas de preservação e gestão do patrimônio público', 446),
(48, 1, 'Prover o exercício do mandato parlamentar', 460),
(49, 1, 'Promover o Aprimoramento da Gestão Pública Estadual', 461),
(50, 1, 'Promover a integração do TCM com a sociedade', 462),
(51, 1, 'Assegurar acesso à justiça com cidadania e responsabilidade socioambiental', 463),
(52, 1, 'Desenvolver uma atuação ministerial integrada, estruturante e resolutiva na promoção do interesse social e na garantia dos direitos humanos', 464),
(53, 1, 'Prestar assistência jurídica, integral e gratuita', 465),
(54, 2, 'Articular ações de prevenção às ameaças e violações dos direitos das pessoas em situação de risco e vulnerabilidade social', 400),
(55, 2, 'Fortalecer práticas individuais e coletivas em favor da promoção, proteção e da defesa dos direitos humanos', 401),
(56, 2, 'Ampliar a proteção social especial à famílias e indivíduos em situação de ameaças, violências e violações de direitos, com vínculos familiares e comunitários fragilizados e rompidos', 402),
(57, 2, 'Realizar a aquisição e doação simultânea de alimentos da agricultura familiar', 403),
(58, 2, 'Ofertar o acolhimento residencial voluntário e transitório para pessoas que fazem uso problemático de álcool e outras drogas', 404),
(59, 2, 'Fomentar a Ciência, Tecnologia e Inovação para o Desenvolvimento sustentável do estado', 405),
(60, 2, 'Aprimorar física e tecnologicamente a rede de equipamentos culturais', 406),
(61, 2, 'Salvaguardar a memória histórica, bibliográfica e documental, protegendo o acervo documental proveniente de arquivos públicos e privados', 407),
(62, 2, 'Fortalecer o setor do audiovisual como vetor estratégico de desenvolvimento da economia criativa e sua cadeia produtiva', 408),
(63, 2, 'Implantar o Plano Estadual para a Economia do Hidrogênio Verde com responsabilidade socioambiental e sanitária', 409),
(64, 2, 'Aprimorar o ambiente de gestão com a adoção de inovação e tecnologia direcionada para o fortalecimento do empreendedorismo das micro, pequenas e empresas', 410),
(65, 2, 'Intensificar a  promoção do destino Bahia regional, nacional e internacionalmente', 411),
(66, 2, 'Promover a qualificação profissional de trabalhadoras e trabalhadores, jovens e populações em situação de vulnerabilidade social', 412),
(67, 2, 'Disseminar o serviço de assistência técnica a empreendimentos econômicos solidários, cooperativos e populares, fortalecendo a presença e capacidade dos Centros Públicos de Economia Solidária', 413),
(68, 2, 'Promover infraestrutura suficiente e adequada para a prática do esporte e lazer', 414),
(69, 2, 'Aperfeiçoar a geração e a democratização do conhecimento através de pesquisa, desenvolvimento e inovação focada em sistemas produtivos estratégicos, com ênfase na convivência com os diferentes Biomas', 416),
(70, 2, 'Promover a agregação de valor e o acesso aos mercados para produtos da agricultura familiar, incentivando a inclusão produtiva, o cooperativismo, o associativismo e a economia solidária no meio rural', 417),
(71, 2, 'Aprimorar as condições de habitação na Bahia, contemplando questões urbanísticas e fundiárias', 418),
(72, 2, 'Aperfeiçoar as condições de mobilidade intraurbana e intra e inter-regionais', 419),
(73, 2, 'Desenvolver ações, projetos e planos voltados à melhoria da drenagem e manejo das águas pluviais urbanas', 420),
(74, 2, 'Promover a governança interfederativa nas regiões metropolitanas, aglomerações urbanas e Regiões Integradas de Desenvolvimento (RIDE)', 421),
(75, 2, 'Desenvolver o acompanhamento, monitoramento e avaliação dos processos pedagógicos em todas as etapas e modalidades da Educação Básica', 422),
(76, 2, 'Potencializar a produção de tecnologias sociais nas unidades da rede estadual de ensino ofertantes de Educação Profissional', 423),
(77, 2, 'Consolidar as políticas de acesso e permanência integradas às estratégias de inclusão', 424),
(78, 2, 'Promover a gestão educacional democrática e participativa assegurando a participação da comunidade escolar', 425),
(79, 2, 'Promover a autonomia econômica de pessoas negras', 426),
(80, 2, 'Promover estratégias de apoio aos povos e comunidades tradicionais em situação conflito', 427),
(81, 2, 'Promover autonomia econômica e financeira dos povos indígenas', 428),
(82, 2, 'Promover ações de prevenção à violência contra todas as mulheres, em suas diversidades, nos espaços urbanos e rurais', 429),
(83, 2, 'Fomentar a governança estratégica das políticas para as mulheres, nos organismos municipais, o controle social e a participação das mulheres na política', 430),
(84, 2, 'Expandir o acesso a energia elétrica em todo o meio rural', 431),
(85, 2, 'Promover a diversificação nos modais de transporte e a integração logística da Bahia', 432),
(86, 2, 'Fortalecer as Unidades de Conservação e demais espaços territoriais especialmente protegidos', 433),
(87, 2, 'Ampliar o volume de reservação de água com infraestrutura hídrica', 434),
(88, 2, 'Fortalecer a transversalidade das políticas de equidade na Rede de Atenção à Saúde (RAS) com ênfase na atenção integral a saúde das populações historicamente excluídas, discriminadas e/ou estigmatizadas', 435),
(89, 2, 'Fomentar pesquisa, o desenvolvimento produtivo, científico e tecnológico em saúde', 436),
(90, 2, 'Aprimorar o enfrentamento à criminalidade violenta e às organizações criminosas', 437),
(91, 2, 'Promover ações para reinserção social das pessoas privadas de liberdade e egressos do sistema penitenciário', 438),
(92, 2, 'Promover a Gestão do Trânsito no Estado', 439),
(93, 2, 'Aperfeiçoar a gestão de dados de interesse para formulação de políticas públicas e gestão por evidências', 440),
(94, 2, 'Potencializar a recuperação da dívida ativa do Estado', 441),
(95, 2, 'Disseminar modelo de atendimento ao cidadão para a qualificação do atendimento na prestação de serviços e informações pelos órgãos governamentais', 442),
(96, 2, 'Aprimorar  a infraestrutura tecnológica para viabilização do Governo Digital', 443),
(97, 2, 'Aprimorar a transparência ativa e passiva do governo estadual ', 444),
(98, 2, 'Promover políticas e práticas em gestão de pessoas que fortaleçam a atração, valorização e engajamento dos servidores para realização da estratégia organizacional e melhoria na prestação dos serviços públicos', 445),
(99, 2, 'Aperfeiçoar a governança das compras e contratações públicas do Poder Executivo Estadual', 446),
(100, 2, 'Aprimorar a gestão da Assembleia Legislativa', 460),
(101, 2, 'Contribuir para o exercício do Controle Social', 461),
(102, 2, 'Aprimorar o modelo de governança institucional', 462),
(103, 2, 'Aprimorar a eficiência da prestação jurisdicional', 463),
(104, 2, 'Aprimorar a atuação institucional', 464),
(105, 2, 'Fomentar ações voltadas aos direitos humanos de forma integrada com os demais poderes do sistema de justiça e órgãos do estado e do municípios', 465),
(106, 3, 'Proteger pessoas ameaçadas de morte', 400),
(107, 3, 'Promover ações educativas de proteção e defesa das relações de consumo para a construção de uma cultura de respeito', 401),
(108, 3, 'Fortalecer a vigilância socioassistencial em suas dimensões', 402),
(109, 3, 'Promover a inclusão socioprodutiva e o desenvolvimento social das populações em situação de vulnerabilidade e risco social, considerando os recortes de gênero, raça, etnia, geração e territorialidades', 403),
(110, 3, 'Promover a inclusão socioprodutiva de pessoas em situação de extrema vulnerabilidade que fazem uso problemático de álcool e outras drogas', 404),
(111, 3, 'Contribuir com a infraestrutura de Ciência, Tecnologia e Inovação do estado', 405),
(112, 3, 'Consolidar o desenvolvimento territorial da Cultura no Estado, contemplando e fortalecendo sua diversidade de expressões manifestadas em todos os territórios de identidade', 406),
(113, 3, 'Promover a diversidade das expressões da cultura popular, transmissão de saberes e fazeres, e expressões das culturas identitárias; indígena, afrobrasileira, dos sertões, de gênero, raça, etária e orientação sexual', 407),
(114, 3, 'Promover a formação artística e capacitação técnica e criativa dos agentes e fazedores de cultura em consonância com as vocações territoriais, fortalecendo os negócios culturais e impulsionando as cadeias produtivas culturais e criativas', 408),
(115, 3, 'Aprimorar a gestão e integração relacionadas à política de atração do Estado', 409),
(116, 3, 'Aprimorar a infraestrutura turística do Estado', 411),
(117, 3, 'Promover a inserção no mundo do trabalho de estudantes e egressos da educação profissional técnica de nível médio da rede pública estadual e da educação superior, com a garantia de direitos e relações de trabalho decentes, em especial das questões de raça', 412),
(118, 3, 'Promover a inclusão socioprodutiva por meio da produção artesanal, como forma de geração de renda', 413),
(119, 3, 'Fomentar o esporte de alto desempenho considerando as vocações territoriais', 414),
(120, 3, 'Promover ações de mitigação dos efeitos das mudanças climáticas na produção agrícola', 416),
(121, 3, 'Promover ações de inclusão produtiva para produtores de médio e pequeno porte', 417),
(122, 3, 'Ampliar a oferta de habitação adequada nas áreas rurais, em acordo com as especificidades sociais e produtivas', 418),
(123, 3, 'Garantir o serviço de transporte intermunicipal regular de passageiros com qualidade e segurança', 419),
(124, 3, 'Desenvolver ações na área de resíduos sólidos, prioritariamente em consórcios públicos multifinalitários', 420),
(125, 3, 'Fortalecer as instâncias e processos de participação e de controle social democráticos', 421),
(126, 3, 'Qualificar as estratégias que assegurem a implementação da Educação Decolonial, Antirracista e Inclusiva na Educação Básica', 422),
(127, 3, 'Assegurar as políticas de acesso e permanência integradas às estratégias de inclusão na Educação Profissional', 423),
(128, 3, 'Promover o desenvolvimento de atividades de Extensão universitária em articulação permanente com o ensino e a pesquisa', 424),
(129, 3, 'Aprimorar a produção, tratamento e gestão das informações inerentes as políticas educacionais', 425),
(130, 3, 'Promover ações de fortalecimento do Sistema Estadual de Promoção da Igualdade Racial - Sisepir', 426),
(131, 3, 'Promover ações de enfrentamento ao racismo religioso', 427),
(132, 3, 'Promover ações versando o respeito aos povos indígenas', 428),
(133, 3, 'Fortalecer o setor de energia renovável, ampliando a geração, o uso racional e o adensamento de cadeias', 431),
(134, 3, 'Potencializar a conservação da biodiversidade nos diferentes biomas do estado', 433),
(135, 3, 'Desenvolver ações ambientais em corpos hídricos do estado', 434),
(136, 3, 'Potencializar a Rede de Atenção à Saúde (RAS) de forma regionalizada, humanizada, ampliando a equidade de acesso e garantindo a integralidade', 435),
(137, 3, 'Ordenar a formação, educação na saúde e fortalecer as estratégias de gestão do trabalho, com foco na valorização do trabalho e do trabalhador no SUS/BA', 436),
(138, 3, 'Fortalecer as atividades de produção da prova material e identificação civil', 437),
(139, 3, 'Fortalecer os mecanismos de aplicação de alternativas penais', 438),
(140, 3, 'Consolidar o planejamento de longo prazo, por meio de atualização e aprimoramento do Plano de Desenvolvimento Integrado', 440),
(141, 3, 'Promover a redução da taxa de crescimento dos déficits do Regime Próprio de Previdência dos Servidores Públicos do Estado da Bahia (RPPS) e do Sistema de Proteção Social dos Policiais e Bombeiros Militares (SPSM)', 441),
(142, 3, 'Fortalecer a gestão das parcerias celebradas com entidades sem fins lucrativos para aprimoramento das políticas púbicas e dos processos de interação com a sociedade', 442),
(143, 3, 'Desenvolver a transformação digital dos serviços públicos', 443),
(144, 3, 'Fortalecer o Sistema de Controle Interno do Poder Executivo Estadual', 444),
(145, 3, 'Fortalecer a assistência à saúde dos servidores públicos e seus dependentes, objetivando a sua sustentabilidade futura', 445),
(146, 3, 'Promover a eficiência da gestão patrimonial com o uso de modelagem de informação da construção', 446),
(147, 3, 'Promover a aproximação da sociedade baiana e o Poder Legislativo', 460),
(148, 3, 'Aprimorar os processos de trabalho finalísticos, gerenciais e de suporte', 461),
(149, 3, 'Fortalecer o exercício do controle externo da gestão pública municipal', 462),
(150, 3, 'Desenvolver a governança corporativa', 463),
(151, 3, 'Aprimorar a Gestão Administrativa', 464),
(152, 3, 'Aprimorar a gestão de pessoas da Defensoria Pública', 465),
(153, 4, 'Promover acessibilidade às pessoas com deficiência', 400),
(154, 4, 'Promover a defesa de direitos socioassitenciais', 402),
(155, 4, 'Ampliar a oferta de tecnologias sociais de captação e acesso à água para consumo humano e produção', 403),
(156, 4, 'Fortalecer a governança intersetorial da política estadual sobre drogas', 404),
(157, 4, 'Fomentar o desenvolvimento, a disseminação e o uso das tecnologias sociais e ambientais', 405),
(158, 4, 'Promover a preservação e a valorização da tradição afro nos munícipios, com apoio a festas, ritos e outras festividades - Programa Ouro Negro', 407),
(159, 4, 'Fortalecer festas, celebrações e eventos da Bahia promovendo a interiorização e o desenvolvimento do turismo', 411),
(160, 4, 'Disseminar o Trabalho Decente como prevenção à precarização das relações e condições de trabalho', 412),
(161, 4, 'Fortalecer as finanças solidárias e a oferta de crédito para microempreendedores populares, cooperativas e associações', 413),
(162, 4, 'Fortalecer o sistema público de esporte e lazer', 414),
(163, 4, 'Promover a gestão de políticas públicas de desenvolvimento rural e reforma agrária nos territórios de identidade', 416),
(164, 4, 'Promover a sanidade na agropecuária do estado', 417),
(165, 4, 'Desenvolver ações e planos voltados à adequação habitacional', 418),
(166, 4, 'Ampliar a disponibilidade de equipamentos públicos urbanos', 419),
(167, 4, 'Expandir a cobertura do esgotamento sanitário nas áreas urbana e rural', 420),
(168, 4, 'Qualificar a educação contextualizada, atendendo as modalidades da educação do campo, educação escolar indígena e educação escolar quilombola e as propostas pedagógicas específicas dos povos e comunidades tradicionais', 422),
(169, 4, 'Ofertar Educação Profissional, integrada a Juventude e aos trabalhadores e trabalhadoras em seus diferentes níveis e modalidades de ensino e as dimensões do trabalho', 423),
(170, 4, 'Desenvolver Pesquisa e Inovação Tecnológica integrada ao desenvolvimento local e regional em consonância com os aspectos socioeconômicos, culturais e ambientais', 424),
(171, 4, 'Assegurar o atendimento Biopsicossocial dos docentes e dos profissionais da educação, com ênfase na prevenção de doenças decorrentes do trabalho', 425),
(172, 4, 'Ampliar a distribuição e comercialização de gás nos diversos municípios da Bahia, priorizando a política de preços com sustentabilidade ambiental', 431),
(173, 4, 'Potencializar a educação ambiental de forma transversal e continuada', 433),
(174, 4, 'Fortalecer a regulação nas três dimensões de atuação: Sistemas, Atenção à Saúde e Acesso a Assistência de forma equânime, oportuna e integrada à Rede de Atenção à Saúde (RAS)', 435),
(175, 4, 'Incorporar as estratégias de saúde digital no âmbito estadual', 436),
(176, 4, 'Fortalecer as ações das corregedorias visando à redução da criminalidade e letalidade policial', 437),
(177, 4, 'Promover articulação com os órgãos do sistema de Justiça para redução dos presos provisórios', 438),
(178, 4, 'Potencializar a negociação de parcerias e mobilizações de recursos para financiamento de políticas públicas', 440),
(179, 4, 'Aperfeiçoar a gestão do acervo documental (físico e digital) e a preservação da memória institucional do Estado', 442),
(180, 4, 'Promover a governança estadual de dados', 443),
(181, 4, 'Ampliar o acesso dos cidadãos aos serviços públicos, atos oficiais e demais comunicações governamentais', 444),
(182, 4, 'Otimizar o tempo de concessão de benefícios', 445),
(183, 4, 'Implementar o Plano Diretor do Centro Administrativo da Bahia (CAB)', 446),
(184, 4, 'Desenvolver cultura organizacional orientada para pessoas e resultados', 461),
(185, 4, 'Modernizar, de forma sustentável, a infraestrutura física, organizacional e tecnológica do TCM/BA', 462),
(186, 4, 'Exercer o cumprimento dos serviços de justiça prestados pelos magistrados e servidores', 463),
(187, 4, 'Apoiar as atividades institucionais através do uso estratégico da tecnologia da informação', 464),
(188, 4, 'Fortalecer a capacidade institucional da Defensoria Pública', 465),
(189, 5, 'Assegurar o atendimento qualificados dos consumidores ', 400),
(190, 5, 'Aprimorar a oferta do Serviço de Atenção a Pessoas em Situação de Violência Sexual', 402),
(191, 5, 'Instituir governança estratégica da política de segurança alimentar e nutricional com mecanismos e instrumentos de transversalidade e intersetorialidade sistemática', 403),
(192, 5, 'Aperfeiçoar a gestão democrática, a participação e o controle social no âmbito da política sobre drogas', 404),
(193, 5, 'Promover ações de disseminação e popularização da cultura científica, tecnológica e de inovação', 405),
(194, 5, 'Fortalecer o sistema estadual de gestão de turismo', 411),
(195, 5, 'Fomentar a geração de renda de trabalhadoras(es) autônomas(os) e MEI\'s - Micro e Pequenas(os) Empreendedoras(es) Individuais', 412),
(196, 5, 'Ampliar o acesso à água de qualidade e em quantidade adequada na área rural, com foco no semiárido', 420),
(197, 5, 'Promover a Educação de Jovens, Adultos e Idosos que não concluíram a Educação Básica', 422),
(198, 5, 'Promover a gestão universitária democrática e inovadora', 424),
(199, 5, 'Potencializar ações de adaptação e mitigação das mudanças climáticas', 433),
(200, 5, 'Aprimorar a Rede de Atenção Hematológica e Hemoterápica, Fortalecendo a Regionalização', 435),
(201, 5, 'Promover a gestão dos recursos administrativos e infraestrutura para prestação das ações e serviços de saúde', 436),
(202, 5, 'Aprimorar a cobertura dos serviços de prevenção e respostas às emergências e desastres e o enfrentamento às irregularidades relacionadas à segurança contra incêndio e pânico no estado', 437),
(203, 5, 'Promover a incorporação da Política de Desenvolvimento Territorial, com participação social, no ciclo do planejamento e gestão governamental', 440),
(204, 5, 'Ampliar o atendimento à população, de forma presencial e por meio eletrônico, do Arquivo Público do Estado da Bahia (APEB)', 442),
(205, 5, 'Implementar política de combate à desinformação', 444),
(206, 5, 'Promover a acessibilidade dos prédios públicos no Centro Administrativo da Bahia (CAB)', 446),
(207, 5, 'Ampliar o uso dos Sistemas de Informação', 461),
(208, 5, 'Fortalecer a gestão de pessoas, a aprendizagem organizacional e a qualidade de vida no trabalho', 464),
(209, 6, 'Promover ações fiscalizatórias na proteção dos consumidores', 400),
(210, 6, 'Aprimorar as ações de gestão do trabalho e educação permanente com base nos princípios e diretrizes do SUAS', 402),
(211, 6, 'Consolidar o abastecimento de água com qualidade na área urbana', 420),
(212, 6, 'Desenvolver ações de promoção e articulação do bem estar biopsicossocial dos estudantes', 422),
(213, 6, 'Promover a modernização e a inovação das tecnologias da informação e do geoprocessamento na Política de Meio Ambiente e de Recursos Hídricos', 433),
(214, 6, 'Consolidar o Sistema Estadual de Vigilância em Saúde como orientador do modelo de atenção, de forma regionalizada, aperfeiçoando e ampliando as ações de vigilância, proteção, promoção e prevenção em saúde em todos os territórios do estado', 435),
(215, 6, 'Ampliar a incorporação de tecnologias da informação e comunicação', 437),
(216, 6, 'Fomentar a cooperação interfederativa, especialmente o consorciamento  público de municípios, com vistas ao fortalecimento da capacidade de desenvolvimento e gestão de políticas públicas', 440),
(217, 6, 'Fomentar a implantação e o funcionamento de Arquivos Públicos Municipais ', 442),
(218, 6, 'Fomentar o uso racional de água e energia nos prédios públicos do Poder Executivo Estadual', 446),
(219, 6, 'Aperfeiçoar a infraestrutura e otimizar a utilização de recursos', 461),
(220, 7, 'Assegurar o atendimento qualificado para adolescentes e jovens em cumprimento de medidas socioeducativas restritivas e privativas de liberdade', 400),
(221, 7, 'Aperfeiçoar a gestão democrática, a participação e o controle social no âmbito da política de assistência social', 402),
(222, 7, 'Promover a comunicação pública como ferramenta para a educação, informação e entretenimento', 422),
(223, 7, 'Promover a Transição Socioambiental, Ecológica e Econômica do estado', 433),
(224, 7, 'Fortalecer a capacidade de resposta em situações de emergência em saúde pública', 435),
(225, 7, 'Aperfeiçoar a gestão de pessoas, a saúde e a valorização do profissional', 437),
(226, 7, 'Promover a formação de competências em planejamento e gestão estratégica', 440),
(227, 8, 'Promover a reintegração social de adolescentes e jovens no pós medida', 400),
(228, 8, 'Promover a convivência comunitária e a promoção social por meio dos equipamentos descentralizados', 402),
(229, 8, 'Desenvolver programas de formação para docente e profissionais não docentes da Rede Estadual de Ensino ', 422),
(230, 8, 'Prover a gestão estratégica, a logística e a infraestrutura física necessárias ao funcionamento do Sistema Estadual de Segurança Pública (SESP)', 437),
(231, 8, 'Subsidiar o planejamento e gestão de políticas públicas com análises sistemáticas sobre aspectos socioeconômicos, demográficos, geográficos e de recursos naturais e ambientais do estado', 440),
(232, 9, 'Fortalecer a produção de conhecimento, dados e metodologias inovadoras no âmbito da política pública de acesso à justiça e direitos humanos', 400),
(233, 9, 'Promover ações de prevenção, preparação, mitigação, resposta e recuperação a desastres', 437),
(234, 9, 'Promover a produção e atualização de geoinformação de referência e temática em escala adequada para cobertura do território baiano', 440),
(235, 10, 'Fortalecer a gestão democrática e participativa da política pública de acesso à justiça e direitos humanos', 400),
(236, 10, 'Promover a atualização de limites territoriais interestaduais, intermunicipais e interdistritais', 440),
(237, 11, 'Consolidar a Infraestrutura de Dados Espaciais do Estado da Bahia (IDE-Bahia)', 440),
(238, 12, 'Promover a produção e incorporação de conhecimentos científicos, tecnologias e inovações dedicados à melhoria e integração da gestão pública', 440),
(239, 13, 'Aperfeiçoar as atividades de consultoria e assessoramento jurídico, e de representação judicial e extrajudicial do Estado', 440),
(240, 14, 'Fortalecer a incorporação e sistematização de processos e práticas de planejamento e gestão estratégica (níveis organizacional e estratégico de médio e longo prazos - Plano Plurianual e Plano de Desenvolvimento Integrado)', 440),
(241, 15, 'Fortalecer arranjos político-institucionais de mútua colaboração, intraestaduais, interfederativos e interpoderes, para formulação e gestão de políticas públicas', 440),
(242, 16, 'Promover política articulada de investimentos para expansão e diversificação da economia, que contribuam para o desenvolvimento socioeconômico do estado', 440),
(243, 17, 'Promover a implementação de políticas e programas para a juventude', 440),
(244, 18, 'Assegurar a gestão das ações integradas de promoção da segurança alimentar e nutricional', 440);

-- --------------------------------------------------------

--
-- Estrutura da tabela `eixo`
--

DROP TABLE IF EXISTS `eixo`;
CREATE TABLE IF NOT EXISTS `eixo` (
  `cod_eixo_estrategico` int NOT NULL AUTO_INCREMENT,
  `nome_eixo_estrategico` varchar(255) NOT NULL,
  PRIMARY KEY (`cod_eixo_estrategico`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `eixo`
--

INSERT INTO `eixo` (`cod_eixo_estrategico`, `nome_eixo_estrategico`) VALUES
(1, 'Assistência Social e Garantia de Direitos'),
(2, 'Ciência, Tecnologia e Inovação'),
(3, 'Cultura'),
(4, 'Desenvolvimento Produtivo'),
(5, 'Desenvolvimento Rural'),
(6, 'Desenvolvimento Urbano e Rede de Cidades'),
(7, 'Educação'),
(8, 'Igualdade Racial e Gênero e Povos e Comunidades Tradicionais'),
(9, 'Infraestrutura e Logística'),
(10, 'Meio Ambiente e Segurança Hídrica'),
(11, 'Saúde'),
(12, 'Segurança Pública e Defesa Social'),
(13, 'Gestão Governamental'),
(15, 'Legislativo - Assembleia Legislativa da Bahia'),
(16, 'Legislativo - Tribunal de Contas do Estado'),
(17, 'Legislativo - Tribunal de Contas dos Municípios'),
(18, 'Judiciário - Tribunal de Justiça'),
(19, 'Ministério Público – MPE'),
(20, 'Defensoria Pública – DPE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `medidas`
--

DROP TABLE IF EXISTS `medidas`;
CREATE TABLE IF NOT EXISTS `medidas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `eixo_relacionado` varchar(255) NOT NULL,
  `programa_relacionado` varchar(255) NOT NULL,
  `compromisso_relacionado` varchar(255) NOT NULL,
  `problema` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `causas_criticas` varchar(255) NOT NULL,
  `acoes_criticas` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `medidas`
--

INSERT INTO `medidas` (`id`, `eixo_relacionado`, `programa_relacionado`, `compromisso_relacionado`, `problema`, `causas_criticas`, `acoes_criticas`) VALUES
(1, 'eixo', 'programa', 'compromisso', 'problema', 'causas', 'acoes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `programa`
--

DROP TABLE IF EXISTS `programa`;
CREATE TABLE IF NOT EXISTS `programa` (
  `cod_programa_governo` int NOT NULL AUTO_INCREMENT,
  `desc_programa_governo` varchar(255) NOT NULL,
  `cod_nome_eixo` int NOT NULL,
  PRIMARY KEY (`cod_programa_governo`),
  KEY `fk_eixo` (`cod_nome_eixo`)
) ENGINE=InnoDB AUTO_INCREMENT=466 DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `programa`
--

INSERT INTO `programa` (`cod_programa_governo`, `desc_programa_governo`, `cod_nome_eixo`) VALUES
(400, 'Acesso à Justiça e aos Direitos Humanos', 1),
(401, 'Educação e Cultura em Direitos Humanos', 1),
(402, 'SUAS Bahia: Fortalecendo a Assistência Social', 1),
(403, 'Segurança Alimentar e Nutricional com Justiça Social', 1),
(404, 'Cuidado em Liberdade: Reduzindo Danos', 1),
(405, 'Bahia Mais Inovadora: Estímulo e Difusão de Ciência, Tecnologia e Inovação', 2),
(406, 'Cultura em Toda a Bahia', 3),
(407, 'Memória e Patrimônio Cultural', 3),
(408, 'Economia da Cultura e Inovação', 3),
(409, 'Cresce Mais Bahia', 4),
(410, 'Fortalece Aê', 4),
(411, 'Viva Bahia: Turismo e Desenvolvimento', 4),
(412, 'Trabalho Decente', 4),
(413, 'Bahia Solidária e Artesanal', 4),
(414, 'Esporte por Toda Parte', 4),
(415, 'Minha Terra Legal: Acesso à Terra e Garantia de Direitos no Campo', 5),
(416, 'Cultive Conhecimento: Assistência Técnica e Extensão Rural para o Sucesso no Campo', 5),
(417, 'Campo Sustentável: Cultivando a Vida e o Futuro', 5),
(418, 'Bahia Minha Casa', 6),
(419, 'Mobilidade Bahia', 6),
(420, 'Universalização do Saneamento Básico', 6),
(421, 'Urbaniza Bahia', 6),
(422, 'Escola Presente: Permanências e Aprendizagem', 7),
(423, 'Educatecno: Educação, Tecnologia e Mundo do Trabalho', 7),
(424, 'Educação Superior da Bahia: Ensino, Pesquisa e Extensão', 7),
(425, 'Escola Democrática: Participação Social e Qualidade', 7),
(426, 'Bahia Antirracista', 8),
(427, 'Povos e Comunidades Tradicionais', 8),
(428, 'Bahia Indígena', 8),
(429, 'Mulher, Viver sem Violência', 8),
(430, 'Direitos e Inclusão Socioprodutiva das Mulheres', 8),
(431, 'Bahia Mais Energia: Potencializando o Desenvolvimento', 9),
(432, 'Bahia em Movimento: Logística para o Crescimento', 9),
(433, 'Meio Ambiente e Mudança do Clima', 10),
(434, 'Segurança Hídrica', 10),
(435, 'Cuidar Mais', 11),
(436, 'SUS Mais Forte', 11),
(437, 'Bahia Mais Segura', 12),
(438, 'Ressocializar é o Caminho: Transformando Vidas', 12),
(439, 'Gente Boa no Trânsito', 12),
(440, 'Planeja Bahia', 13),
(441, 'Gestão Fiscal', 13),
(442, 'Gestão de Serviços Públicos', 13),
(443, 'Governo Digital', 13),
(444, 'Bahia Participativa', 13),
(445, 'Gestão de Pessoas', 13),
(446, 'Gestão do Patrimônio e da Logística de Suprimentos', 13),
(460, 'Fortalecimento da Ação Legislativa', 15),
(461, 'Efetividade no Controle Externo da Administração Pública Estadual, em benefício da sociedade', 16),
(462, 'Efetividade do Controle Externo na Gestão Pública Municipal', 17),
(463, 'Justiça Efetiva', 18),
(464, 'Defesa da Sociedade e Promoção da Cidadania', 19),
(465, 'Proteção dos direitos humanos e a defesa judicial e extrajudicial dos cidadãos e cidadãs', 20);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `compromisso`
--
ALTER TABLE `compromisso`
  ADD CONSTRAINT `fk_programa` FOREIGN KEY (`cod_des_programa`) REFERENCES `programa` (`cod_programa_governo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Limitadores para a tabela `programa`
--
ALTER TABLE `programa`
  ADD CONSTRAINT `fk_eixo` FOREIGN KEY (`cod_nome_eixo`) REFERENCES `eixo` (`cod_eixo_estrategico`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
