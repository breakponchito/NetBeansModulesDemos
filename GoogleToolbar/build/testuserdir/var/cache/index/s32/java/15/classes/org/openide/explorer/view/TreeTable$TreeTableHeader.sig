����   4 A
      javax/swing/table/JTableHeader <init> '(Ljavax/swing/table/TableColumnModel;)V
   	 
 getPreferredSize ()Ljava/awt/Dimension;
      3org/openide/explorer/view/TreeTable$TreeTableHeader getDefaultRenderer '()Ljavax/swing/table/TableCellRenderer;
     getTable ()Ljavax/swing/JTable;  X      #javax/swing/table/TableCellRenderer getTableCellRendererComponent @(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;
    java/awt/Component	 ! " # $ % java/awt/Dimension height I
 ' ( ) * + java/lang/Math max (II)I Code LineNumberTable LocalVariableTable this 5Lorg/openide/explorer/view/TreeTable$TreeTableHeader; columnModel $Ljavax/swing/table/TableColumnModel; MethodParameters retValue Ljava/awt/Dimension; comp Ljava/awt/Component; rendererHeight #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile TreeTable.java InnerClasses ? #org/openide/explorer/view/TreeTable TreeTableHeader              ,   >     *+� �    -   
   � � .        / 0      1 2  3    1    	 
  ,   �     /*� L*� *� �  M,� �  >++�  � &�  +�    -      � � � !� -� .   *    / / 0    * 4 5    6 7  !  8 %  9     :    ;    < =   
   > @ 
