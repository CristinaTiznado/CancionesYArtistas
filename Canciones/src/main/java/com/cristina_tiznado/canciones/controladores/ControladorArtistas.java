package com.cristina_tiznado.canciones.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.cristina_tiznado.canciones.modelos.Artista;
import com.cristina_tiznado.canciones.modelos.Cancion;
import com.cristina_tiznado.canciones.servicios.ServicioArtistas;

import jakarta.validation.Valid;

@Controller
public class ControladorArtistas {

    @Autowired
    private ServicioArtistas servicio;

    @GetMapping("/artistas")
    public String desplegarArtistas(Model modelo){
        modelo.addAttribute("listaArtistas", this.servicio.obtenerTodosLosArtistas());
        return "artistas.jsp";
    }

    @GetMapping("/artistas/detalle/{idArtista}")
    public String desplegarDetalleArtista(@PathVariable("idArtista") Long id, Model modelo){
        modelo.addAttribute("artista", this.servicio.obtenerArtistaPorId(id));
        return "detalleArtista.jsp";
    }

    @GetMapping("/artistas/formulario/agregar")
    public String formularioAgregarArtistas(Model modelo){
        modelo.addAttribute("artista", new Artista());
        return "agregarArtista.jsp";
    }

    @PostMapping("/artistas/procesa/agregar")
    public String procesarAgregarArtista(@Valid @ModelAttribute("artista") Artista artista, BindingResult validaciones){
        if(validaciones.hasErrors()){
            return "agregarArtista.jsp";
        }
        this.servicio.agregarArtista(artista);
        return "redirect:/artistas";

    }
}
