package com.autolab.api.repository;

import com.autolab.api.model.Batch;
import com.autolab.api.model.Item;
import org.springframework.data.jpa.domain.Specification;

import java.util.List;

/**
 * Created by ABC on 2015/10/24 0024.
 */
public interface BatchDao extends BaseDao<Batch, Long>{
    List<Batch> findAll(Specification<Batch> spec);

    List<Batch> findByItemAndWeek(Item item, Integer week);
}
