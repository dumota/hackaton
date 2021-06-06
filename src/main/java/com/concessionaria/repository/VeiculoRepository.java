package com.concessionaria.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.concessionaria.models.Veiculo;

public interface VeiculoRepository extends JpaRepository<Veiculo, Long> {

}
