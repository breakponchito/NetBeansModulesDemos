/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/NetBeansModuleDevelopment-files/actionListener.java to edit this template
 */
package org.myorg.googletoolbar;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import org.openide.awt.ActionID;
import org.openide.awt.ActionReference;
import org.openide.awt.ActionRegistration;
import org.openide.util.NbBundle.Messages;

@ActionID(
        category = "File",
        id = "org.myorg.googletoolbar.MyListenerActionOpenFileSelection"
)
@ActionRegistration(
        iconBase = "org/myorg/googletoolbar/payara-micro.png",
        displayName = "#CTL_MyListenerActionOpenFileSelection"
)
@ActionReference(path = "Menu/File", position = 0, separatorBefore = -50, separatorAfter = 50)
@Messages("CTL_MyListenerActionOpenFileSelection=OpenFileSelection")
public final class MyListenerActionOpenFileSelection implements ActionListener {

    @Override
    public void actionPerformed(ActionEvent e) {
        // TODO implement action body
        System.out.println("Hello World");
        //dialog
        
    }
}
