package org.fabrician.webapp.globalvar.web;
import org.fabrician.webapp.globalvar.domain.ArchiveVariable;
import org.springframework.roo.addon.web.mvc.controller.annotations.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/archivevariables")
@Controller
@RooWebScaffold(path = "archivevariables", formBackingObject = ArchiveVariable.class)
public class ArchiveVariableController {
}
