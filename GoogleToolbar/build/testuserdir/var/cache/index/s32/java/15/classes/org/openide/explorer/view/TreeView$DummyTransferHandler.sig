����   4 7
      7org/openide/explorer/view/TreeView$DummyTransferHandler <init> ()V
   	 javax/swing/TransferHandler Code LineNumberTable LocalVariableTable this 9Lorg/openide/explorer/view/TreeView$DummyTransferHandler; exportAsDrag 7(Ljavax/swing/JComponent;Ljava/awt/event/InputEvent;I)V comp Ljavax/swing/JComponent; e Ljava/awt/event/InputEvent; action I MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; exportToClipboard =(Ljavax/swing/JComponent;Ljava/awt/datatransfer/Clipboard;I)V clip !Ljava/awt/datatransfer/Clipboard; 
Exceptions   java/lang/IllegalStateException 	canImport >(Ljavax/swing/JComponent;[Ljava/awt/datatransfer/DataFlavor;)Z transferFlavors #[Ljava/awt/datatransfer/DataFlavor; 
importData ?(Ljavax/swing/JComponent;Ljava/awt/datatransfer/Transferable;)Z t $Ljava/awt/datatransfer/Transferable; getSourceActions (Ljavax/swing/JComponent;)I c )(Lorg/openide/explorer/view/TreeView$1;)V x0 &Lorg/openide/explorer/view/TreeView$1; 
SourceFile TreeView.java InnerClasses 3 "org/openide/explorer/view/TreeView DummyTransferHandler 6 $org/openide/explorer/view/TreeView$1              
   /     *� �          �                 
   I      �          �    *                                                    
   I      �          	    *                                                       ! "  
   @     �          	                       # $     	    #            % &  
   @     �          	                       ' (     	    '            ) *  
   6     �          	                +       +             ,  
   9     *� �          �                - .   /    0 1      2 4 
 5      