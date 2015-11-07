package com.autolab.api.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by KUN on 2015/10/24.
 */

@EqualsAndHashCode(callSuper = false)
@Data
@Entity
@Table(name = Class.TABLE_NAME)
public class Class extends BaseEntity{
    public static final String TAG = Class.class.getSimpleName().toLowerCase();
    public static final String TAGS = TAG + "s";
    public static final String TABLE_NAME=BaseEntity.PREFIX+"class";

    private String name;

    @JsonIgnore
    @OneToMany(mappedBy = "myClass", cascade = {}, fetch = FetchType.LAZY)
    private List<RelateClass> relateClasses = new ArrayList<>();
}
