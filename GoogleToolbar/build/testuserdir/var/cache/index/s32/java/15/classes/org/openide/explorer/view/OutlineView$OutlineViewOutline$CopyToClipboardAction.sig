Êþº¾   4 	      Norg/openide/explorer/view/OutlineView$OutlineViewOutline$CopyToClipboardAction this$0 :Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;
  	 
   java/lang/Object <init> ()V	     orig Ljavax/swing/Action;
      8org/openide/explorer/view/OutlineView$OutlineViewOutline access$1700 b(Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;)Lorg/openide/explorer/ExplorerManager;
      "org/openide/explorer/ExplorerUtils 
actionCopy <(Lorg/openide/explorer/ExplorerManager;)Ljavax/swing/Action;     ! " javax/swing/Action 	isEnabled ()Z
  $ % & getDelegate ()Ljavax/swing/Action;  ( ) * getValue &(Ljava/lang/String;)Ljava/lang/Object;  , - . putValue '(Ljava/lang/String;Ljava/lang/Object;)V 0 'java/lang/UnsupportedOperationException 2 Not supported.
 / 4  5 (Ljava/lang/String;)V  7 8 9 addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V  ; < 9 removePropertyChangeListener
  > ? @ doCopy )(Lorg/openide/explorer/ExplorerManager;)V  B C D actionPerformed (Ljava/awt/event/ActionEvent;)V
 F G H I J $org/openide/explorer/ExplorerManager getSelectedNodes ()[Lorg/openide/nodes/Node;
 L M N O P 9org/netbeans/modules/openide/explorer/ExplorerActionsImpl getTransferableOwner @([Lorg/openide/nodes/Node;Z)Ljava/awt/datatransfer/Transferable; R Oorg/openide/explorer/view/OutlineView$OutlineViewOutline$OutlineTransferHandler
 Q T  U f(Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;Lorg/openide/explorer/view/OutlineView$1;)V
 Q W X Y createOutlineTransferable &()Ljava/awt/datatransfer/Transferable; [ Norg/openide/explorer/view/OutlineView$OutlineViewOutline$TextAddedTransferable
 Z ]  ^ K(Ljava/awt/datatransfer/Transferable;Ljava/awt/datatransfer/Transferable;)V
 L ` a b getClipboard #()Ljava/awt/datatransfer/Clipboard; d %java/awt/datatransfer/StringSelection f  
 c 4
 i j k l m java/awt/datatransfer/Clipboard setContents M(Ljava/awt/datatransfer/Transferable;Ljava/awt/datatransfer/ClipboardOwner;)V Q(Lorg/openide/explorer/view/OutlineView$OutlineViewOutline;Ljavax/swing/Action;)V Code LineNumberTable LocalVariableTable this PLorg/openide/explorer/view/OutlineView$OutlineViewOutline$CopyToClipboardAction; MethodParameters em &Lorg/openide/explorer/ExplorerManager; a StackMapTable key Ljava/lang/String; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; value Ljava/lang/Object; 
setEnabled (Z)V b Z listener #Ljava/beans/PropertyChangeListener; e Ljava/awt/event/ActionEvent; 	clipboard !Ljava/awt/datatransfer/Clipboard; sel [Lorg/openide/nodes/Node; trans $Ljava/awt/datatransfer/Transferable; ot   "java/awt/datatransfer/Transferable 
SourceFile OutlineView.java InnerClasses  %org/openide/explorer/view/OutlineView OutlineViewOutline CopyToClipboardAction OutlineTransferHandler  'org/openide/explorer/view/OutlineView$1 TextAddedTransferable                 
    n  o   K     *+µ *· *,µ ±    p       	  q        r s         t   	      % &  o        &*´ ¸ L+Ç *´ °+¸ M,¹   ,°*´ °    p           ¡ ¢ !¤ q        & r s     u v    w   x    ü  Fü    ) *  o   ?     *· #+¹ ' °    p      ª q        r s      y z  t    y   {     |    - .  o   N     *· #+,¹ + ±    p   
   ¯ ° q         r s      y z     } ~  t   	 y   }   {     |       o   >     
» /Y1· 3¿    p      ´ q       
 r s     
    t       {     |    ! "  o   4     
*· #¹  ¬    p      ¹ q       
 r s   {     |    8 9  o   C     *· #+¹ 6 ±    p   
   ¾ 
¿ q        r s         t       {     |    < 9  o   C     *· #+¹ : ±    p   
   Ã 
Ä q        r s         t       {     |    C D  o        +*´ ¸ M,Æ ,¸ N-¹   	*,· =±*· #+¹ A ±    p   "   È É Ê Ë Ì Í  Ð *Ñ q   *    w     + r s     +     # u v  x    ü   F t       {     |    ? @  o   ò     T+¶ EM,¸ KN» QY*´ · S¶ V:-Æ Æ » ZY-· \N§ N-Æ ¸ _:Æ -» cYe· g¶ h±    p   2   Õ Ö Ø Ù  Ú %Û 3Þ 6á :â ?ã Dä Sç q   >  ?       T r s     T u v   O     I     8    x    þ 3    t    u            *          Q           Z   
