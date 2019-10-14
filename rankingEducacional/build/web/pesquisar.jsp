<%-- 
    Document   : pesquisar
    Created on : 20/09/2019, 17:56:12
    Author     : Jhon
--%>

<%@page import="dao.RankingDAO"%>
<%@page import="model.AlunoFator"%>
<%@page import="dao.AlunoFatorDAO"%>
<%@page import="controllers.AlunoFatorController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Cadastrar Aluno</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<script src="js/init.js"></script>
		<script src="js/index.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-desktop.css" />
		</noscript>
	</head>
	<body>

	<!-- Header -->
		<div id="header">
			<div id="nav-wrapper"> 
				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li><a href="index.html">Início</a></li>
						<li><a href="novo-aluno.html">Adicionar Aluno</a></li>
						<li><a href="pesquisar.jsp">Pesquisar Aluno</a></li>
						<li class="active"><a href="ranking.jsp">Ranking</a></li>
					</ul>
				</nav>
			</div>
			<div class="container"> 
				
				<!-- Logo -->
				<div id="logo">
					<h1><a href="#">Sistema X</a></h1>
					<a href="#main"><span class="fa fa-chevron-down"></span></a>
				</div>
			</div>
		</div>
	<!-- Header --> 

	<!-- Main -->
		<div id="main" class="quest">
			<div id="content" class="container">
				<section class="questionario">
					<header>
						<h2>Pesquisar Aluno</h2>
					</header>							
					<form onsubmit="return validaPesquisa();">
		                <div>
                    		<input type="text" name="matricula" placeholder="Matrícula" />
                    		<input type="submit" name="pesquisar" value="Pesquisar" >	
		                </div>
                                
                                <%
                                    AlunoFatorDAO alunoFatorDAO  = new AlunoFatorDAO();
                                    AlunoFator alunoFator = new AlunoFator();
                                    int pontuacaoAluno = (new RankingDAO()).selectPontuacaoByMatricula("matricula_aluno");
                                    
                                    alunoFator = alunoFatorDAO.selectAlunoFatorByMatricula("matricula_aluno");
                                    out.println("<h2>"+alunoFator.getAnoEmCurso()+"</h2>");
                                    //Agora é so pegar os atributos do aluno fator passando a matricula
                                    //e exibir nos lugares corretos
                                    //Obs.: mudar o # das pasginas para atualizar quando clicar no icone da pagina
                                    
                                %>
		                <div>
		                	<p id=>Pontuação: 00</p>
		                </div>

						<p>Ano Letivo</p>
                                            <input type="radio" value="1" name="ano_letivo" id="primeiro_ano" />
					    <label for="primeiro_ano">1°</label>
					    <input type="radio" value="0" name="ano_letivo" id="segundo_ano" />
					    <label for="segundo_ano">2°</label>
					    <input type="radio" value="-1" name="ano_letivo" id="terceiro_ano" />
					    <label for="terceiro_ano">3°</label>
					    <input type="radio" value="-1" name="ano_letivo" id="quarto_ano" />
					    <label for="quarto_ano">4°</label>


		                <p>1 - Faltas Recorrentes?</p>
                                            <input type="radio" value="1" name="fator1" id="fator1_s" />
                                            <label for="fator1_s">Sim</label>
					    <input type="radio" value="0" name="fator1" id="fator1_n" />
					    <label for="fator1_n">Não</label>
					    <input type="radio" value="-1" name="fator1" id="fator1_d" />
					    <label for="fator1_d">Dúvida</label>
					
		                <p>2 - Dificuldades no deslocamento até a escola?</p>
                                            <input type="radio" value="1" name="fator2" id="fator2_s" />
					    <label for="fator2_s">Sim</label>
					    <input type="radio" value="0" name="fator2" id="fator2_n" />
					    <label for="fator2_n">Não</label>
					    <input type="radio" value="-1" name="fator2" id="fator2_d" />
					    <label for="fator2_d">Dúvida</label>
					
		                <p>3 - Problemas Comportamentais?</p>
                                            <input type="radio" value="1" name="fator3" id="fator3_s" />
					    <label for="fator3_s">Sim</label>
					    <input type="radio" value="0" name="fator3" id="fator3_n" />
					    <label for="fator3_n">Não</label>
					    <input type="radio" value="-1" name="fator3" id="fator3_d" />
					    <label for="fator3_d">Dúvida</label>
					
		                <p>4 - Problemas Cognitivos?</p>
                                            <input type="radio" value="1" name="fator4" id="fator4_s" />
					    <label for="fator4_s">Sim</label>
					    <input type="radio" value="0" name="fator4" id="fator4_n" />
					    <label for="fator4_n">Não</label>
					    <input type="radio" value="-1" name="fator4" id="fator4_d" />
					    <label for="fator4_d">Dúvida</label>
					
		                <p>5 - Interesse pelo curso/área?</p>
                                            <input type="radio" value="1" name="fator5" id="fator5_s" />
					    <label for="fator5_s">Sim</label>
					    <input type="radio" value="0" name="fator5" id="fator5_n" />
					    <label for="fator5_n">Não</label>
					    <input type="radio" value="-1" name="fator5" id="fator5_d" />
					    <label for="fator5_d">Dúvida</label>
					
		                <p>6 - Defasagem Educacional?</p>
                                            <input type="radio" value="1" name="fator6" id="fator6_s" />
					    <label for="fator6_s">Sim</label>
					    <input type="radio" value="0" name="fator6" id="fator6_n" />
					    <label for="fator6_n">Não</label>
					    <input type="radio" value="-1" name="fator6" id="fator6_d" />
					    <label for="fator6_d">Dúvida</label>
					
		                <p>7 - Dificuldade de relacionamento com os colegas?</p>
                                            <input type="radio" value="1" name="fator7" id="fator7_s" />
					    <label for="fator7_s">Sim</label>
					    <input type="radio" value="0" name="fator7" id="fator7_n" />
					    <label for="fator7_n">Não</label>
					    <input type="radio" value="-1" name="fator7" id="fator7_d" />
					    <label for="fator7_d">Dúvida</label>
					
		                <p>8 - Reprovado em escolas anteriores?</p>
                                            <input type="radio" value="1" name="fator8" id="fator8_s" />
					    <label for="fator8_s">Sim</label>
					    <input type="radio" value="0" name="fator8" id="fator8_n" />
					    <label for="fator8_n">Não</label>
					    <input type="radio" value="-1" name="fator8" id="fator8_d" />
					    <label for="fator8_d">Dúvida</label>
					
		                <p>9 - Repetente no IFBA?</p>
                                            <input type="radio" value="1" name="fator9" id="fator9_s" />
					    <label for="fator9_s">Sim</label>
					    <input type="radio" value="0" name="fator9" id="fator9_n" />
					    <label for="fator9_n">Não</label>
					    <input type="radio" value="-1" name="fator9" id="fator9_d" />
					    <label for="fator9_d">Dúvida</label>
					
		                <p>10 - Vítima de Bullying?</p>
                                            <input type="radio" value="1" name="fator10" id="fator10_s" />
					    <label for="fator10_s">Sim</label>
					    <input type="radio" value="0" name="fator10" id="fator10_n" />
					    <label for="fator10_n">Não</label>
					    <input type="radio" value="-1" name="fator10" id="fator10_d" />
					    <label for="fator10_d">Dúvida</label>
					
		                <p>11 - Distorção de idade/série?</p>
                                            <input type="radio" value="1" name="fator11" id="fator11_s" />
					    <label for="fator11_s">Sim</label>
					    <input type="radio" value="0" name="fator11" id="fator11_n" />
					    <label for="fator11_n">Não</label>
					    <input type="radio" value="-1" name="fator11" id="fator11_d" />
					    <label for="fator11_d">Dúvida</label>
					
		                <p>12 - Cotista?</p>
                                            <input type="radio" value="1" name="fator12" id="fator12_s" />
					    <label for="fator12_s">Sim</label>
					    <input type="radio" value="0" name="fator12" id="fator12_n" />
					    <label for="fator12_n">Não</label>
					    <input type="radio" value="-1" name="fator12" id="fator12_d" />
					    <label for="fator12_d">Dúvida</label>
					
		                <p>13 - Reprovado na mesma disciplina por duas unidades?</p>
                                            <input type="radio" value="1" name="fator13" id="fator13_s" />
					    <label for="fator13_s">Sim</label>
					    <input type="radio" value="0" name="fator13" id="fator13_n" />
					    <label for="fator13_n">Não</label>
					    <input type="radio" value="-1" name="fator13" id="fator13_d" />
					    <label for="fator13_d">Dúvida</label>
					
		                <p>14 - Possui disponibilidade de tempo para participar de atividades no turno oposto?</p>
                                            <input type="radio" value="1" name="fator14" id="fator14_s" />
					    <label for="fator14_s">Sim</label>
					    <input type="radio" value="0" name="fator14" id="fator14_n" />
					    <label for="fator14_n">Não</label>
					    <input type="radio" value="-1" name="fator14" id="fator14_d" />
					    <label for="fator14_d">Dúvida</label>
					
		                <p>15 - Já concluiu o ensino médio em outra instituição?</p>
                                            <input type="radio" value="1" name="fator15" id="fator15_s" />
					    <label for="fator15_s">Sim</label>
					    <input type="radio" value="0" name="fator15" id="fator15_n" />
					    <label for="fator15_n">Não</label>
					    <input type="radio" value="-1" name="fator15" id="fator15_d" />
					    <label for="fator15_d">Dúvida</label>
					
		                <p>16 - Possui vulnerabilidade socioeconômica?</p>
                                            <input type="radio" value="1" name="fator16" id="fator16_s" />
					    <label for="fator16_s">Sim</label>
					    <input type="radio" value="0" name="fator16" id="fator16_n" />
					    <label for="fator16_n">Não</label>
					    <input type="radio" value="-1" name="fator16" id="fator16_d" />
					    <label for="fator16_d">Dúvida</label>
					
		                <p>17 - Tem filhos?</p>
                                            <input type="radio" value="1" name="fator17" id="fator17_s" />
					    <label for="fator17_s">Sim</label>
					    <input type="radio" value="0" name="fator17" id="fator17_n" />
					    <label for="fator17_n">Não</label>
					    <input type="radio" value="-1" name="fator17" id="fator17_d" />
					    <label for="fator17_d">Dúvida</label>
					
		                <p>18 - Possui acompanhamento da família no processo de ensino/aprendizagem?</p>
                                            <input type="radio" value="1" name="fator18" id="fator18_s" />
					    <label for="fator18_s">Sim</label>
					    <input type="radio" value="0" name="fator18" id="fator18_n" />
					    <label for="fator18_n">Não</label>
					    <input type="radio" value="-1" name="fator18" id="fator18_d" />
					    <label for="fator18_d">Dúvida</label>
					
		                <p>19 - Trabalha no turno oposto às aulas?</p>
                                            <input type="radio" value="1" name="fator19" id="fator19_s" />
					    <label for="fator19_s">Sim</label>
					    <input type="radio" value="0" name="fator19" id="fator19_n" />
					    <label for="fator19_n">Não</label>
					    <input type="radio" value="-1" name="fator19" id="fator19_d" />
					    <label for="fator19_d">Dúvida</label>
					
		                <p>20 - Reside com tutor legal?</p>
                                            <input type="radio" value="1" name="fator20" id="fator20_s" />
					    <label for="fator20_s">Sim</label>
					    <input type="radio" value="0" name="fator20" id="fator20_n" />
					    <label for="fator20_n">Não</label>
					    <input type="radio" value="-1" name="fator20" id="fator20_d" />
					    <label for="fator20_d">Dúvida</label>
                                            
                                <p>21 - Possui problemas psicológicos?</p>
                                            <input type="radio" value="1" name="fator21" id="fator21_s" />
					    <label for="fator21_s">Sim</label>
					    <input type="radio" value="0" name="fator21" id="fator21_n" />
					    <label for="fator21_n">Não</label>
					    <input type="radio" value="-1" name="fator21" id="fator21_d" />
					    <label for="fator21_d">Dúvida</label>
					
		                <p>22 - Possui conflitos familiares?</p>
                                            <input type="radio" value="1" name="fator22" id="fator22_s" />
					    <label for="fator22_s">Sim</label>
					    <input type="radio" value="0" name="fator22" id="fator22_n" />
					    <label for="fator22_n">Não</label>
					    <input type="radio" value="-1" name="fator22" id="fator22_d" />
					    <label for="fator22_d">Dúvida</label>
					
		                <p>23 - Possui acompanhamento da rede de proteção local (Conselho Tutelar/CRAS/CREAS/CAPS)?</p>
                                            <input type="radio" value="1" name="fator23" id="fator23_s" />
					    <label for="fator23_s">Sim</label>
					    <input type="radio" value="0" name="fator23" id="fator23_n" />
					    <label for="fator23_n">Não</label>
					    <input type="radio" value="-1" name="fator23" id="fator23_d" />
					    <label for="fator23_d">Dúvida</label>
					
		                <p>24 - Está envolvido com drogas/atos infracionais?</p>
                                            <input type="radio" value="1" name="fator24" id="fator24_s" />
					    <label for="fator24_s">Sim</label>
					    <input type="radio" value="0" name="fator24" id="fator24_n" />
					    <label for="fator24_n">Não</label>
					    <input type="radio" value="-1" name="fator24" id="fator24_d" />
					    <label for="fator24_d">Dúvida</label>
					
		                <p>25 - Tem problemas de saúde?</p>
                                            <input type="radio" value="1" name="fator25" id="fator25_s" />
					    <label for="fator25_s">Sim</label>
					    <input type="radio" value="0" name="fator25" id="fator25_n" />
					    <label for="fator25_n">Não</label>
					    <input type="radio" value="-1" name="fator25" id="fator25_d" />
					    <label for="fator25_d">Dúvida</label>
					
		                <p>26 - O ambiente doméstico do estudante favorece o estudo?</p>
                                            <input type="radio" value="1" name="fator26" id="fator26_s" />
					    <label for="fator26_s">Sim</label>
					    <input type="radio" value="0" name="fator26" id="fator26_n" />
					    <label for="fator26_n">Não</label>
					    <input type="radio" value="-1" name="fator26" id="fator26_d" />
					    <label for="fator26_d">Dúvida</label>
					
		                <p>27 - É cuidador de parentes no turno oposto (idoso, criança, pessoa com necessidade especial)?</p>
                                            <input type="radio" value="1" name="fator27" id="fator27_s" />
					    <label for="fator27_s">Sim</label>
					    <input type="radio" value="0" name="fator27" id="fator27_n" />
					    <label for="fator27_n">Não</label>
					    <input type="radio" value="-1" name="fator27" id="fator27_d" />
					    <label for="fator27_d">Dúvida</label>
					
		                <p>28 - O estudante tem rotina de estudos?</p>
                                            <input type="radio" value="1" name="fator28" id="fator28_s" />
					    <label for="fator28_s">Sim</label>
                            		    <input type="radio" value="0" name="fator28" id="fator28_n" />
					    <label for="fator28_n">Não</label>
					    <input type="radio" value="-1" name="fator28" id="fator28_d" />
					    <label for="fator28_d">Dúvida</label>
					
		                <p>29 - Convive com alguma divergência e/ou intolerância religiosa?</p>
                                            <input type="radio" value="1" name="fator29" id="fator29_s" />
					    <label for="fator29_s">Sim</label>
					    <input type="radio" value="0" name="fator29" id="fator29_n" />
					    <label for="fator29_n">Não</label>
					    <input type="radio" value="-1" name="fator29" id="fator29_d" />
					    <label for="fator29_d">Dúvida</label>
					
		                <p>30 - O estudante tem necessidades educativas especiais?</p>
                                            <input type="radio" value="1" name="fator30" id="fator30_s" />
					    <label for="fator30_s">Sim</label>
					    <input type="radio" value="0" name="fator30" id="fator30_n" />
					    <label for="fator30_n">Não</label>
					    <input type="radio" value="-1" name="fator30" id="fator30_d" />
					    <label for="fator30_d">Dúvida</label>
		                <br><br>
					    <input type="submit" value="Alterar"/>
					    <input type="submit" value="Excluir Aluno"/>
					</form>
				</section>
			</div>
		</div>
	<!-- /Main -->

	<!-- Tweet -->
		<div id="tweet">
			<div class="container">
				<section>
					<blockquote>&ldquo;A educação é um processo social, é desenvolvimento. Não é a preparação para a vida, é a própria vida.&rdquo; - John Dewey</blockquote>
				</section>
			</div>
		</div>
	<!-- /Tweet -->

	<!-- Footer -->
		<div id="footer">
			<div class="container">
				<section>
					<header>
						<h2>Contate-nos</h2>
						<span class="byline">Em caso de dúvidas, críticas ou elogios, envie uma mensagem em um dos seguintes links</span>
					</header>
					<ul class="contact">
						<li><a href="#" class="fa fa-twitter"><span>Twitter</span></a></li>
						<li class="active"><a href="#" class="fa fa-facebook"><span>Facebook</span></a></li>
						<li><a href="#" class="fa fa-instagram"><span>Instagram</span></a></li>
						<li><a href="#" class="fa fa-envelope"><span>Gmail</span></a></li>
					</ul>
				</section>
			</div>
		</div>
	<!-- /Footer -->

	<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				Design: <a href="http://templated.co">TEMPLATED</a> Images: <a href="http://unsplash.com">Unsplash</a> (<a href="http://unsplash.com/cc0">CC0</a>)
			</div>
		</div>
	</body>
</html>
