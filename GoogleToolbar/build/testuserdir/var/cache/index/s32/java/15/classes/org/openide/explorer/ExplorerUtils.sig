����   4 _
      java/lang/Object <init> ()V
  	 
   $org/openide/explorer/ExplorerManager findExplorerActionsImpl c(Lorg/openide/explorer/ExplorerManager;)Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl;
      9org/netbeans/modules/openide/explorer/ExplorerActionsImpl 
copyAction ()Ljavax/swing/Action;
     	cutAction
     deleteAction (Z)Ljavax/swing/Action;
     pasteAction
      attach )(Lorg/openide/explorer/ExplorerManager;)V
  " #  detach % $org/openide/explorer/DefaultEMLookup
 $ '  ( @(Lorg/openide/explorer/ExplorerManager;Ljavax/swing/ActionMap;)V
 * + , - . org/openide/nodes/Node 
getHelpCtx ()Lorg/openide/util/HelpCtx;	 0 1 2 3 4 org/openide/util/HelpCtx DEFAULT_HELP Lorg/openide/util/HelpCtx;
 0 6 7 8 equals (Ljava/lang/Object;)Z : "org/openide/explorer/ExplorerUtils Code LineNumberTable LocalVariableTable this $Lorg/openide/explorer/ExplorerUtils; 
actionCopy <(Lorg/openide/explorer/ExplorerManager;)Ljavax/swing/Action; em &Lorg/openide/explorer/ExplorerManager; MethodParameters 	actionCut actionDelete =(Lorg/openide/explorer/ExplorerManager;Z)Ljavax/swing/Action; confirm Z impl ;Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl; actionPaste activateActions *(Lorg/openide/explorer/ExplorerManager;Z)V enable StackMapTable createLookup X(Lorg/openide/explorer/ExplorerManager;Ljavax/swing/ActionMap;)Lorg/openide/util/Lookup; map Ljavax/swing/ActionMap; O([Lorg/openide/nodes/Node;Lorg/openide/util/HelpCtx;)Lorg/openide/util/HelpCtx; attempt i I sel [Lorg/openide/nodes/Node; def result 
SourceFile ExplorerUtils.java 1 9            ;   3     *� �    <   
    s  t =        > ?   	 @ A  ;   2     *� � �    <        =        B C   D    B   	 E A  ;   2     *� � �    <       � =        B C   D    B   	 F G  ;   M     *� M,� �    <   
    �  � =         B C      H I    J K  D   	 B   H   	 L A  ;   2     *� � �    <       � =        B C   D    B   	 M N  ;   a     � *� *� � 
*� � !�    <       �  �  �  � =        B C      O I  P     D   	 B   O   	 Q R  ;   >     
� $Y*+� &�    <       � =       
 B C     
 S T  D   	 B   S   	 - U  ;   �     JM>*�� 9*2� ):� &� /� 5� ,� ,� 5� 	M� M� 	����,� ,� +�    <   * 
   �  � 
 �  � " � / � 5 � 7 � : � @ � =   4   ( V 4   < W X    J Y Z     J [ 4   H \ 4  P    �  0� * 0� � @ 0 D   	 Y   [    ]    ^