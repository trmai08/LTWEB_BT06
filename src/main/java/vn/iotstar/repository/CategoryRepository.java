package vn.iotstar.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;
import vn.iotstar.entity.Category;
import java.util.List;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer> {
    List<Category> findByCateNameContainingIgnoreCase(String keyword);

    @Modifying
    @Transactional
    @Query(value = "DELETE FROM products WHERE cate_id = :categoryId", nativeQuery = true)
    void deleteProductsByCategoryId(@Param("categoryId") Integer categoryId);
}
