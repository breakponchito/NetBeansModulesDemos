����   4 P	      Forg/openide/explorer/view/TableSheetCell$NullPanel$AccessibleNullPanel this$0 4Lorg/openide/explorer/view/TableSheetCell$NullPanel;
  	 
   #javax/swing/JPanel$AccessibleJPanel <init> (Ljavax/swing/JPanel;)V
     getAccessibleName ()Ljava/lang/String;  ACS_NullPanel
      (org/openide/explorer/view/TableSheetCell 
access$000 &(Ljava/lang/String;)Ljava/lang/String;
     getAccessibleDescription
      ! 2org/openide/explorer/view/TableSheetCell$NullPanel 
access$100 O(Lorg/openide/explorer/view/TableSheetCell$NullPanel;)Ljava/lang/ref/Reference;
 # $ % & ' java/lang/ref/Reference get ()Ljava/lang/Object; ) org/openide/nodes/Node + ACSD_NullPanel - java/lang/Object
 ( / 0  getDisplayName
 2 3 4 5 6 java/text/MessageFormat format 9(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 7(Lorg/openide/explorer/view/TableSheetCell$NullPanel;)V Code LineNumberTable LocalVariableTable this HLorg/openide/explorer/view/TableSheetCell$NullPanel$AccessibleNullPanel; MethodParameters name Ljava/lang/String; StackMapTable B java/lang/String #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; node Lorg/openide/nodes/Node; description 
SourceFile TableSheetCell.java InnerClasses 	NullPanel AccessibleNullPanel N javax/swing/JPanel AccessibleJPanel                7  8   9     *+� *+� �    9   
   � 
� :        ; <   =         8   _     *� L+� 	� L+�    9      � � 	� � :        ; <     > ?  @    �  A C     D       8   �     1*� L+� )*� � � "� (M,� *� � ,Y,� .S� 1L+�    9   "   � � 	� � � � +� /� :        E F    1 ; <    , G ?  @    � / A C     D    H    I J       K 
   L   M O 