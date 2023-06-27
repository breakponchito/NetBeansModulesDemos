/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/NetBeansModuleDevelopment-files/contextAction.java to edit this template
 */
package org.yourorg.mymodule;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.logging.Logger;
import javax.swing.JFileChooser;
import javax.swing.JMenuItem;
import org.openide.loaders.DataObject;
import org.openide.awt.ActionID;
import org.openide.awt.ActionReference;
import org.openide.awt.ActionReferences;
import org.openide.awt.ActionRegistration;
import org.openide.util.NbBundle.Messages;

@ActionID(
        category = "File",
        id = "org.yourorg.mymodule.TwoPlacesListener"
)
@ActionRegistration(
        displayName = "#CTL_TwoPlacesListener"
)
@ActionReferences({
    @ActionReference(path = "Loaders/text/x-java/Actions", position = 2887, separatorBefore = 2881, separatorAfter = 2893),
    @ActionReference(path = "Editors/text/x-java/Popup", position = 1660, separatorBefore = 1630, separatorAfter = 1690),
    @ActionReference(path = "Loaders/folder/any/Actions", position = 2887, separatorBefore = 2881, separatorAfter = 2893)
})
@Messages("CTL_TwoPlacesListener=Transform to Jakarta EE")
public final class TwoPlacesListener implements ActionListener {
    
    private static final Logger log = Logger.getLogger(TwoPlacesListener.class.getName());

    private final DataObject context;

    public TwoPlacesListener(DataObject context) {
        this.context = context;
        log.info("TwoPlacesListener available context:"+context);
    }

    @Override
    public void actionPerformed(ActionEvent ev) {
        // TODO use context
        log.info("TwoPlacesListener action event:"+ev.toString());
        if(this.context != null) {
            log.info("Not null"+context);
            if(ev.getSource() instanceof JMenuItem) {
                JMenuItem item = (JMenuItem)ev.getSource();            
                JFileChooser chooser = new JFileChooser();
                chooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
                
                if(chooser.showOpenDialog(item.getParent()) == JFileChooser.APPROVE_OPTION) {
                    log.info("Chooser selection:"+chooser.getSelectedFile().toPath().toString());
                }
            }
            
            
        }
    }
}
