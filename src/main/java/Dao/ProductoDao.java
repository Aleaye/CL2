package Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import interfaces.InterfaceProducto;
import model.Producto;


public class ProductoDao implements InterfaceProducto{

	@Override
	public void listarProductos(Producto producto) {
		EntityManagerFactory fabr=Persistence.createEntityManagerFactory("ProyectoMavenSabadoJPA");
		
		EntityManager em=fabr.createEntityManager();
		em.getTransaction().begin();
		Producto buscliente=em.find(Producto.class,Producto.getidproducto());
		em.getTransaction().commit();
		em.close();		
	}

	@Override
	public List<Producto> listarProductos() {
		EntityManagerFactory fabr=Persistence.createEntityManagerFactory("ExamenMavenCL2");
        EntityManager em=fabr.createEntityManager();
        em.getTransaction().begin();
        List<Producto> listarProducto=em.createQuery("select c from Producto c",Producto.class).getResultList();
        
        em.getTransaction().commit();
       
        em.close();
		return listarProducto;
	
	}

}
