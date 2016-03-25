// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.fabrician.webapp.globalvar.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.fabrician.webapp.globalvar.domain.ArchiveVariable;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ArchiveVariable_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ArchiveVariable.entityManager;
    
    public static final List<String> ArchiveVariable.fieldNames4OrderClauseFilter = java.util.Arrays.asList("gvName", "gvValue", "archiveName", "archiveId", "archiveGroupId", "archiveVersion", "project", "environment", "location", "logicalMachine");
    
    public static final EntityManager ArchiveVariable.entityManager() {
        EntityManager em = new ArchiveVariable().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ArchiveVariable.countArchiveVariables() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ArchiveVariable o", Long.class).getSingleResult();
    }
    
    public static List<ArchiveVariable> ArchiveVariable.findAllArchiveVariables() {
        return entityManager().createQuery("SELECT o FROM ArchiveVariable o", ArchiveVariable.class).getResultList();
    }
    
    public static List<ArchiveVariable> ArchiveVariable.findAllArchiveVariables(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ArchiveVariable o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ArchiveVariable.class).getResultList();
    }
    
    public static ArchiveVariable ArchiveVariable.findArchiveVariable(Long id) {
        if (id == null) return null;
        return entityManager().find(ArchiveVariable.class, id);
    }
    
    public static List<ArchiveVariable> ArchiveVariable.findArchiveVariableEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ArchiveVariable o", ArchiveVariable.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<ArchiveVariable> ArchiveVariable.findArchiveVariableEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ArchiveVariable o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ArchiveVariable.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ArchiveVariable.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ArchiveVariable.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ArchiveVariable attached = ArchiveVariable.findArchiveVariable(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ArchiveVariable.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ArchiveVariable.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ArchiveVariable ArchiveVariable.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ArchiveVariable merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}