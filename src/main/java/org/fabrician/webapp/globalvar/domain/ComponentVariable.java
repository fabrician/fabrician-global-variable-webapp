package org.fabrician.webapp.globalvar.domain;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.activerecord.RooJpaActiveRecord;
import javax.validation.constraints.Size;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(table = "COMP_VARS")
public class ComponentVariable {

    /**
     */
    @NotNull
    @Column(name = "gv_name")
    @Size(max = 1024)
    private String gvName;

    /**
     */
    @NotNull
    @Column(name = "gv_value")
    @Size(max = 1024)
    private String gvValue;


    /**
     */
    @Size(max = 1024)
    @Column(name = "project")
    private String project;

    /**
     */
    @Size(max = 1024)
    @Column(name = "environment")
    private String environment;

    /**
     */
    @Size(max = 1024)
    @Column(name = "location")
    private String location;

    /**
     */
    @Column(name = "logical_machine")
    @Size(max = 1024)
    private String logicalMachine;
}
