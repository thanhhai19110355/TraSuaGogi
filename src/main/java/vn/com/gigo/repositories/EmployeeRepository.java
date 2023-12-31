package vn.com.gigo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import vn.com.gigo.entities.Employee;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long>{
	Employee findOneById(Long id);
	
	@Query("SELECT e FROM Employee e, Store s WHERE e.store.id = s.id AND s.id = :storeId")
	List<Employee> findByStoreId(Long storeId);
	
	Employee findByAccount_Username(String username);
	
	@Query(value="SELECT * FROM employees WHERE employees.account in (SELECT accounts.username FROM accounts WHERE accounts.account_id in (SELECT accounts_roles.account_id FROM accounts_roles WHERE accounts_roles.role_id = 3))", nativeQuery=true)
	List<Employee> getAllEmployee();
}