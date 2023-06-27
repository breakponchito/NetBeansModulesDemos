/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/NetBeansModuleDevelopment-files/actionListener.java to edit this template
 */
package org.myorg.googletoolbar;

import java.awt.Component;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.logging.Logger;
import javax.swing.AbstractAction;
import org.openide.awt.ActionID;
import org.openide.awt.ActionReference;
import org.openide.awt.ActionRegistration;
import org.openide.util.NbBundle.Messages;
import org.openide.util.actions.Presenter;

@ActionID(
        category = "File",
        id = "org.myorg.googletoolbar.GoogleActionListener"
)
@ActionRegistration(
        iconBase = "org/myorg/googletoolbar/payara-micro.png",
        displayName = "#CTL_GoogleActionListener"
)
@ActionReference(path = "Toolbars/File", position = 500)
@Messages("CTL_GoogleActionListener=Google")
public final class GoogleActionListener extends AbstractAction implements Presenter.Toolbar {
    
    public static final Logger log = Logger.getLogger(GoogleActionListener.class.getName());

    @Override
    public void actionPerformed(ActionEvent e) {
        // TODO implement action body
        log.info("Entering action:"+e.getActionCommand());
    }

    @Override
    public Component getToolbarPresenter() {
        return new GooglePanel();
    }
}
