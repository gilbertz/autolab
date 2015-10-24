package com.autolab.api.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;

/**
 * Created by KUN on 2015/10/24.
 */

@EqualsAndHashCode(callSuper = false)
@Data
@Entity
@Table(name = Book.TABLE_NAME)
public class Book extends BaseEntity{
    public static final String TAG = Book.class.getSimpleName().toLowerCase();
    public static final String TAGS = TAG + "s";
    public static final String TABLE_NAME=BaseEntity.PREFIX+"book";

    @JsonIgnore
    @ManyToOne(cascade = {}, fetch = FetchType.EAGER)
    @JoinColumn(name = "batch_id", nullable = false)
    private Batch batch;

    private String grade;

    @JsonIgnore
    @ManyToOne(cascade = {}, fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;
}
