package org.fabrician.webapp.globalvar.web;
import org.fabrician.webapp.globalvar.domain.ComponentVariable;
import org.springframework.roo.addon.web.mvc.controller.annotations.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/componentvariables")
@Controller
@RooWebScaffold(path = "componentvariables", formBackingObject = ComponentVariable.class)
public class ComponentVariableController {
}
