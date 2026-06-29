package com.cristina_tiznado.canciones.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cristina_tiznado.canciones.modelos.Artista;
import com.cristina_tiznado.canciones.repositorios.RepositorioArtistas;

@Service
public class ServicioArtistas {

    @Autowired
    private RepositorioArtistas repositorioArtistas;

    public List<Artista> obtenerTodosLosArtistas(){
        return this.repositorioArtistas.findAll();
    }

    public Artista obtenerArtistaPorId(Long id){
        return this.repositorioArtistas.findById(id).orElse(null);
    }

    public Artista agregarArtista(Artista artista){
        return this.repositorioArtistas.save(artista);
    }
}
