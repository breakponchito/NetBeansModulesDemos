����   4 W	      Porg/netbeans/modules/openide/explorer/ExplorerActionsImpl$CopyCutActionPerformer this$0 ;Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl;
  	 
   Dorg/netbeans/modules/openide/explorer/ExplorerActionsImpl$BaseAction <init> @(Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl$1;)V	     copyCut Z
     	isEnabled ()Z
      9org/netbeans/modules/openide/explorer/ExplorerActionsImpl 
access$400 c(Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl;)Lorg/openide/explorer/ExplorerManager;
       $org/openide/explorer/ExplorerManager getSelectedNodes ()[Lorg/openide/nodes/Node;
  " # $ getTransferableOwner @([Lorg/openide/nodes/Node;Z)Ljava/awt/datatransfer/Transferable;
  & ' ( getClipboard #()Ljava/awt/datatransfer/Clipboard; * %java/awt/datatransfer/StringSelection ,  
 ) .  / (Ljava/lang/String;)V
 1 2 3 4 5 java/awt/datatransfer/Clipboard setContents M(Ljava/awt/datatransfer/Transferable;Ljava/awt/datatransfer/ClipboardOwner;)V ?(Lorg/netbeans/modules/openide/explorer/ExplorerActionsImpl;Z)V Code LineNumberTable LocalVariableTable this RLorg/netbeans/modules/openide/explorer/ExplorerActionsImpl$CopyCutActionPerformer; b MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; actionPerformed (Ljava/awt/event/ActionEvent;)V 	clipboard !Ljava/awt/datatransfer/Clipboard; ev Ljava/awt/event/ActionEvent; em &Lorg/openide/explorer/ExplorerManager; sel [Lorg/openide/nodes/Node; trans $Ljava/awt/datatransfer/Transferable; StackMapTable I O "java/awt/datatransfer/Transferable 
SourceFile ExplorerActionsImpl.java InnerClasses CopyCutActionPerformer 
BaseAction V ;org/netbeans/modules/openide/explorer/ExplorerActionsImpl$1                    6  7   L     *+� *� *� �    8      o 
p q 9        : ;      <   =   	  <       7   /     *� �    8      u 9        : ;   >     ?    @ A  7   �     <*� � M,� �,� N-*� � !:� � %:� � )Y+� -� 0�    8   * 
  z { | ~  � !� &� +� ;� 9   >  &  B C    < : ;     < D E   4 F G   * H I     J K  L    �  � - M N =    D   >     ?    P    Q R       S    T
 U    