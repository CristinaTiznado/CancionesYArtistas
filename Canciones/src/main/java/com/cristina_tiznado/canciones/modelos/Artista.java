package com.cristina_tiznado.canciones.modelos;

import java.time.LocalDateTime;
import java.util.List;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "artistas")
public class Artista {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull(message = "Este campo es obligatorio")
    @Size(min = 3, message = "Debe contener mas de 3 caracteres.")
    private String nombre;

    private String apellido;

    @NotNull(message = "Este campo es obligatorio.")
    private String biografia;

    @CreationTimestamp
    @Column(updatable = false)
    private LocalDateTime fechaCreacion;

    @UpdateTimestamp
    private LocalDateTime fechaActualizacion;

    @OneToMany(mappedBy = "artista")
    private List<Cancion> listaCanciones;

    public Artista(){}

    public Artista(String nombre, String apellido, String biografia, LocalDateTime fechaCreacion,
            LocalDateTime fechaActualizacion, List<Cancion> listaCanciones) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.biografia = biografia;
        this.fechaCreacion = fechaCreacion;
        this.fechaActualizacion = fechaActualizacion;
        this.listaCanciones = listaCanciones;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getBiografia() {
        return biografia;
    }

    public void setBiografia(String biografia) {
        this.biografia = biografia;
    }

    public LocalDateTime getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(LocalDateTime fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public LocalDateTime getFechaActualizacion() {
        return fechaActualizacion;
    }

    public void setFechaActualizacion(LocalDateTime fechaActualizacion) {
        this.fechaActualizacion = fechaActualizacion;
    }

    public List<Cancion> getListaCanciones() {
        return listaCanciones;
    }

    public void setListaCanciones(List<Cancion> listaCanciones) {
        this.listaCanciones = listaCanciones;
    }

    
}
