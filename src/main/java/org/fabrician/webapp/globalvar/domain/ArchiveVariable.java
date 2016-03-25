package org.fabrician.webapp.globalvar.domain;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.activerecord.RooJpaActiveRecord;
import javax.persistence.Column;
import javax.validation.constraints.Size;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(table = "ARCHIVE_VARS")
public class ArchiveVariable {

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
    @Column(name = "archive_name")
    @Size(max = 1024)
    private String archiveName;

    /**
     */
    @Column(name = "archive_id")
    @Size(max = 1024)
    private String archiveId;

    /**
     */
    @Column(name = "archive_group_id")
    @Size(max = 1024)
    private String archiveGroupId;

    /**
     */
    @Column(name = "archive_version")
    @Size(max = 1024)
    private String archiveVersion;

    /**
     */
    @Column(name = "project")
    @Size(max = 1024)
    private String project;

    /**
     */
    @Column(name = "environment")
    @Size(max = 1024)
    private String environment;

    /**
     */
    @Column(name = "location")
    @Size(max = 1024)
    private String location;

    /**
     */
    @Column(name = "logical_machine")
    @Size(max = 1024)
    private String logicalMachine;

}
