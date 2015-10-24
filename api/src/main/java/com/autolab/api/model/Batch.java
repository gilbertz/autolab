package com.autolab.api.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by KUN on 2015/10/24.
 */

@EqualsAndHashCode(callSuper = false)
@Data
@Entity
@Table(name = Batch.TABLE_NAME)
public class Batch extends BaseEntity{
    public static final String TAG = Batch.class.getSimpleName().toLowerCase();
    public static final String TAGS = TAG + "s";
    public static final String TABLE_NAME=BaseEntity.PREFIX+"batch";

    @JsonIgnore
    @ManyToOne(cascade = {}, fetch = FetchType.LAZY)
    @JoinColumn(name = "item_id", nullable = true)
    private Item item;

    private String laboratory;

    private Integer allowNumber;

    private Date startTime;

    private Date endTime;

    @JsonIgnore
    @OneToMany(mappedBy = "batch", cascade = {}, fetch = FetchType.LAZY)
    private List<Book> books = new ArrayList<>();
}