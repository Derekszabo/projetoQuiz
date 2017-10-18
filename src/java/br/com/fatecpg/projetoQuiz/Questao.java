package br.com.fatecpg.projetoQuiz;

public class Questao {
    private String pergunta;
    private int resposta;
    private String alternativas[];
    
    public Questao(String p, int r, String[] alter){
        pergunta=p;
        resposta=r;
        alternativas=alter;
    }

    public String getPergunta() {
        return pergunta;
    }

    public void setPergunta(String pergunta) {
        this.pergunta = pergunta;
    }

    public int getResposta() {
        return resposta;
    }

    public void setResposta(int resposta) {
        this.resposta = resposta;
    }

    public String[] getAlternativas() {
        return alternativas;
    }

    public void setAlternativas(String[] alternativas) {
        this.alternativas = alternativas;
    }
    
    
}
