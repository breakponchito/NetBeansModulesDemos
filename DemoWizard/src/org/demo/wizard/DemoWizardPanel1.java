/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/NetBeansModuleDevelopment-files/wizardPanel.java to edit this template
 */
package org.demo.wizard;

import javax.swing.event.ChangeListener;
import org.openide.WizardDescriptor;
import org.openide.WizardValidationException;
import org.openide.util.HelpCtx;
import org.openide.util.NbPreferences;

public class DemoWizardPanel1 implements WizardDescriptor.ValidatingPanel<WizardDescriptor> {//implements WizardDescriptor.Panel<WizardDescriptor> {

    /**
     * The visual component that displays this panel. If you need to access the
     * component from this class, just use getComponent().
     */
    private DemoVisualPanel1 component;
    
    private boolean isValid = true;

    // Get the visual component for the panel. In this template, the component
    // is kept separate. This can be more efficient: if the wizard is created
    // but never displayed, or not all panels are displayed, it is better to
    // create only those which really need to be visible.
    @Override
    public DemoVisualPanel1 getComponent() {
        if (component == null) {
            component = new DemoVisualPanel1();
        }
        return component;
    }

    @Override
    public HelpCtx getHelp() {
        // Show no Help button for this panel:
        return HelpCtx.DEFAULT_HELP;
        // If you have context help:
        // return new HelpCtx("help.key.here");
    }

    @Override
    public boolean isValid() {
        // If it is always OK to press Next or Finish, then:
        return isValid;
        // If it depends on some condition (form filled out...) and
        // this condition changes (last form field filled in...) then
        // use ChangeSupport to implement add/removeChangeListener below.
        // WizardDescriptor.ERROR/WARNING/INFORMATION_MESSAGE will also be useful.
    }

    @Override
    public void addChangeListener(ChangeListener l) {
    }

    @Override
    public void removeChangeListener(ChangeListener l) {
    }

    @Override
    public void readSettings(WizardDescriptor wiz) {
        // use wiz.getProperty to retrieve previous panel state
        component.getNamedField().setText(NbPreferences.forModule(DemoWizardPanel1.class).get("namePreference", ""));
        component.getAddressField().setText(NbPreferences.forModule(DemoWizardPanel1.class).get("addressPreference", ""));
    }

    /*@Override
    public void storeSettings(WizardDescriptor wiz) {
        // use wiz.putProperty to remember current panel state
        wiz.putProperty("name", getComponent().getNamedField().getText());
        wiz.putProperty("address", getComponent().getAddressField().getText());
    }*/
    
    @Override
    public void storeSettings(WizardDescriptor wiz) {
        // use wiz.putProperty to remember current panel state
        wiz.putProperty("name", getComponent().getNamedField().getText());
        wiz.putProperty("address", getComponent().getAddressField().getText());
        NbPreferences.forModule(DemoWizardPanel1.class).put("namePreference", component.getNamedField().getText());
        NbPreferences.forModule(DemoWizardPanel1.class).put("addressPreference", component.getAddressField().getText());
    }

    @Override
    public void validate() throws WizardValidationException {
        String name = component.getNamedField().getText();
        if(name.equals("")) {
            isValid = false;
            throw new WizardValidationException(null, "Invalid Name", null);
        }
    }

    
    
}
