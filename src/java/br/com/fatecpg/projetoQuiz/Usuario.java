package br.com.fatecpg.projetoQuiz;

public class Usuario {
    private String nome;
    private static double media;
    private static String dataTeste [];
    private static double resultadoTeste [];
    private static String alternativasTeste [];
      

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getMedia() {
        return media;
    }

    public void setMedia(double media) {
        this.media = media;
    }

    public String[] getDataTeste() {
        return dataTeste;
    }

    public void setDataTeste(String[] dataTeste) {
        this.dataTeste = dataTeste;
    }

    public double[] getResultadoTeste() {
        return resultadoTeste;
    }

    public void setResultadoTeste(double[] resultadoTeste) {
        this.resultadoTeste = resultadoTeste;
    }

    public String[] getAlternativasTeste() {
        return alternativasTeste;
    }

    public void setAlternativasTeste(String[] alternativasTeste) {
        this.alternativasTeste = alternativasTeste;
    }
    
    
}
