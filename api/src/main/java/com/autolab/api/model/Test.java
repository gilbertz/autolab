package com.autolab.api.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;

/**
 * Created by zhao on 15/10/23.
 */
@EqualsAndHashCode(callSuper = false)
@Data
@Entity
@Table(name = Test.TABLE_NAME)
public class Test extends BaseEntity {
    public static final String TAG = Test.class.getSimpleName().toLowerCase();
    public static final String TAGS = TAG + "s";
    public static final String TABLE_NAME=BaseEntity.PREFIX+"test";

    private String grade;

    @JsonIgnore
    @ManyToOne(cascade = {}, fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

}
