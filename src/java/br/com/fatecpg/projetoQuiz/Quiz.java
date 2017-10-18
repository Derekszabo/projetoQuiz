package br.com.fatecpg.projetoQuiz;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

public class Quiz {
    public static ArrayList<Questao> questoes;
    public static ArrayList<Questao> getQuestoes(){
        if (questoes==null){
            questoes=new ArrayList<>();
            Questao q1 = new Questao("Segundo disposto na Constituição Federal, compete ao Ministro de Estado, além de outras atribuições, referendar os atos e decretos assinados pelo Presidente da República. Neste caso, a manifestação de vontade de ambos os órgãos, ao se fundir para formar um ato único, resulta no denominado ato administrativo:",2, 
                    new String[]{"coligado, sendo que o referendo é pressuposto necessário para legitimar a vontade do Chefe do Executivo Federal.",
                    "complexo, em que se verifica identidade de conteúdo e fins.",
                    "coletivo, posto que se praticam dois atos, um principal e outro acessório.",
                    "colegiado, já que o referendo complementa a manifestação de vontade principal.",
                    "composto, em que a vontade de um é instrumental em relação a de outro, que edita o principal."});
            questoes.add(q1);
            Questao q2 = new Questao("O atributo que autoriza o Poder Público a editar atos administrativos obrigacionais que interferem na esfera jurídica dos administrados, independentemente da respectiva aquiescência, denomina-se:",1,
            new String[]{"Imperatividade.",
            "Auto-executoriedade.",
            "Coercibilidade.",
            "Exigibilidade.",
            "Presunção de veracidade."});
            questoes.add(q2);

            Questao q3 = new Questao("Com relação à anulação dos atos administrativos, é correto afirmar que:",5,
            new String[]{"opera efeitos ex nunc e não alcança os atos que geram direitos adquiridos e os que exauriram seus efeitos.",
            "apenas os atos vinculados emitidos em desacordo com os preceitos legais serão invalidados pela própria Administração, com efeitos ex nunc.",
            "o Poder Judiciário deverá anular os atos discricionários por motivo de conveniência e oportunidade.",
            "o Poder Judiciário não poderá declarar a nulidade dos atos administrativos discricionários eivados de vícios quanto ao sujeito.",
            "o desfazimento do ato que apresente vício quanto aos motivos produz efeitos retroativos à data em que foi emitido."});
            questoes.add(q3);

            Questao q4 = new Questao("A Administração Pública, objetivando vender produtos legalmente apreendidos, deverá realizar procedimento licitatório sob a modalidade de:",3,
            new String[]{"convite, desde que demonstre a ausência de utilidade pública dos bens em disputa.",
            "concurso, cujo vencedor será aquele que oferecer maior lance, igual ou superior ao valor da avaliação do bem.",
            "leilão, cujo edital deve ser amplamente divulgado principalmente no município em que se realizará.",
            "tomada de preços, cujos interessados devem estar cadastrados até o dia anterior à data do recebimento das propostas.",
            "concorrência pública, aberta a quaisquer interessados que, na fase de julgamento, comprovem possuir os requisitos mínimos de qualificação exigidos no edital."});
            questoes.add(q4);

            Questao q5 = new Questao("Assinale a alternativa que contém todos os princípios da administração pública direta e indireta de qualquer dos Poderes da União, dos Estados, do Distrito Federal e dos Municípios, mencionados no artigo 37 da Constituição Federal Brasileira.",1,
            new String[]{"Legalidade, impessoalidade, moralidade, publicidade e eficiência.",
            "Probidade administrativa, eficiência dos serviços públicos e moralidade.",
            "Legalidade, eficiência e moralidade.",
            "Legalidade, probidade, moralidade, eficiência e assiduidade dos servidores públicos.",
            "Legalidade, moralidade e publicidade."});
            questoes.add(q5);

            Questao q6 = new Questao("Por “Divisão Internacional do Trabalho – DIT” entende-se:",4,
            new String[]{"Produção de tudo que um país necessita para seu desenvolvimento e industrialização.",
            "Organização dos países subdesenvolvidos ao mundo globalizado sem perdas econômicas.",
            "Autonomia entre os países exportadores de matérias-primas e os exportadores de produtos industrializados.",
            "Especialização dos países na produção de determinadas mercadorias destinadas ao mercado internacional, em que as metrópoles sempre levaram vantagens em relação às colônias.",
            "NDR."});
            questoes.add(q6);

            Questao q7 = new Questao("Sobre a América do Sul é correto afirmar, exceto:",4,
            new String[]{"Grande parte do continente apresenta clima tropical quente e chuvoso. Ao longo da costa Oeste, as condições são muito mais secas, com clima semi-árido e desértico quente em alguns lugares.",
            "Embora a economia de alguns países dependa de atividades primárias, outros, como Brasil, Argentina e Venezuela, também desenvolveram uma série de atividades manufatureiras e de alta tecnologia.",
            "A produção de alimentos para exportação é uma importante fonte de renda para muitos países sul-americanos.",
            "Apesar de o clima ser tropical, existem poucas florestas tropicais no continente, cuja população é majoritariamente rural.",
            "A população da América do Sul está distribuída desigualmente. Existem altas densidades ao longo das costas, enquanto grande parte do interior é desocupada ou escassamente povoada."});
            questoes.add(q7);

            Questao q8 = new Questao("A organização do território de um espaço nacional, assim como as relações de produção, refletem a natureza do sistema social e político, que comanda as relações de produção desse território. Nesse sentido, é correto afirmar:",1,
            new String[]{"A organização do espaço brasileiro, para ser entendida, requer a compreensão tanto do processo de desenvolvimento do capitalismo internacional em sua expansão quanto das especificidades desse sistema na formação social brasileira.",
            "Todas as alterações nas formas de dependências, que o poder latino-americano conhece,  estão ligadas  ao rompimento dos laços construídos historicamente, porém, somente a dependência econômica se mantém.",
            "O subdesenvolvimento latino-americano é conseqüência direta da característica tipica­mente tropical desse continente e do estágio primitivo de suas populações autóctones.",
            "O desenvolvimento econômico, social e político do território brasileiro tem sua ori­gem nas políticas nacionalistas, implantadas no período colonial.",
            "O território está formado por uma sociedade constituída, principalmente, por uma maioria com alto poder aquisitivo e uma minoria com baixo poder aquisitivo."});
            questoes.add(q8);

            Questao q9 = new Questao("À EXCEÇÃO DE UMA, as alternativas abaixo apresentam de modo correto características do Renascimento. Assinale-a.",4,
            new String[]{"O retorno aos valores do mundo clássico, na literatura, nas artes, nas ciências e na filosofia.",
            "A valorização da experimentação como um dos caminhos para a investigação dos fenômenos da natureza.",
            "A possibilidade de uma estreita relação entre os diferentes campos do conhecimento.",
            "O fato de ter ocorrido com exclusividade nas cidades italianas.",
            "O uso da linguagem matemática e da experimentação nos estudos dos fenômenos da natureza."});
            questoes.add(q9);

            Questao q10 = new Questao("O mundo moderno está associado, na sua origem, à cultura renascentista. Invenções e descobertas só puderam ser realizadas porque os intelectuais renascentistas reuniram tradições clássicas ocidentais e orientais, a fim de dar novo sentido à ideia de HOMEM e NATUREZA. Assinale a afirmativa que pode ser corretamente associada ao Renascimento.",1,
            new String[]{"O livro da natureza foi escrito em caracteres matemáticos. (Galileu)",
            "O homem é imagem e semelhança de Deus. (Jean Bodin)",
            "O mundo é perfeito porque é uma obra divina e, assim, só pode ser esférico. (Marsílio Ficino)",
            "A perspectiva é o fundamento da relação entre espaço humano e natureza divina. (Alberti)",
            "A proporção é a qualidade matemática inadequada à representação do mundo natural. (Leonardo da Vinci)"});
            questoes.add(q10);
        }
        Collections.shuffle(questoes);
        return questoes;
    }
}
