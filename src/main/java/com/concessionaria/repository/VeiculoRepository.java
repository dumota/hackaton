package com.concessionaria.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.concessionaria.models.Veiculo;

public interface VeiculoRepository extends JpaRepository<Veiculo, Long> {
	
	
	
    
	
	
	
	//@Query
	//(nativeQuery = true, value= "select v.id, v.modelo, m.marca, c.cor, v.anofabricacao, v.anomodelo, v.valor,v.fotodestaque from Veiculo v"
	//		+ " inner join cor c on( c.id = v.cor_id)"
	//		+ " inner join marca m on (m.id = v.marca_id)"
	//		+ " order by rand() limit :limit")
	///List<Veiculo> encontar(@Param("limit") int limit);
	
	//SELECT * from Veiculo order by rand() limit :limit
	
	
	
	@Query(nativeQuery = true, value ="SELECT * FROM Veiculo order by rand() limit :limit")
	 List<Veiculo> encontar(@Param("limit") int limit);
	

	
}
