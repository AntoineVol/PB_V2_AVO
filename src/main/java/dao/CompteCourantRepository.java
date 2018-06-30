package dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import domaine.CompteCourant;

@Repository
public interface CompteCourantRepository extends JpaRepository<CompteCourant, Integer> {

}
