package br.com.fatecpg.projetoQuiz;
import java.util.ArrayList;

public class DB {
    private static ArrayList<Usuario> usuarios;
     public static ArrayList<Usuario> getUsuarios () {
        if (usuarios==null) {
            usuarios = new ArrayList<>();
        }
        return usuarios;
    }
}
