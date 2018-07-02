package service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;

import domaine.Entity;

public abstract class CrudService<ENTITY extends Entity> {

	@Autowired
	JpaRepository<ENTITY, Integer> repo;
	
	public ENTITY save(ENTITY entity) {
		return this.repo.save(entity);
	}
	public ENTITY create(ENTITY entity) {
		return this.save(entity);
	}
	public ENTITY update(ENTITY entity) {
		if(entity.getId()!=null) {
			throw new IllegalArgumentException("L'élement ne peut pas être mis à jour car il n'est pas créé en base de donnée");
		}
		return this.save(entity);
	}
	public ENTITY getById(Integer id) {
		ENTITY result = null;
		final Optional<ENTITY> entity = this.repo.findById(id);
		if(entity.isPresent()) {
			result = entity.get();
		}
		return result;
	}
	public List<ENTITY> getAll(){
		return this.repo.findAll();
	}
	public void deleteById(Integer id) {
		this.repo.deleteById(id);
	}
}
