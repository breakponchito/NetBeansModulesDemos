����   4 �
      java/lang/Object <init> ()V  %javax/swing/DefaultListSelectionModel
  	      3org/openide/explorer/propertysheet/SheetColumnModel lsm  Ljavax/swing/ListSelectionModel;  javax/swing/table/TableColumn
     (I)V	     namesColumn Ljavax/swing/table/TableColumn;	     NAMES_IDENTIFIER Ljava/lang/Object;
      setIdentifier (Ljava/lang/Object;)V	  " #  valuesColumn	  % &  VALUES_IDENTIFIER
  ( )  setMinWidth + 'java/lang/UnsupportedOperationException - Adding columns not supported
 * /  0 (Ljava/lang/String;)V 2 "java/lang/IllegalArgumentException 4 java/lang/StringBuilder
 3  7 $Property sheet only has 2 columns - 
 3 9 : ; append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 = > ? @ A java/lang/Integer toString (I)Ljava/lang/String;
 3 C @ D ()Ljava/lang/String;
 1 / G java/lang/String
  I J K equals (Ljava/lang/Object;)Z M Illegal value: 
 3 O : P -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
  R S T getWidth ()I V 5org/openide/explorer/propertysheet/SheetColumnModel$1
 U X  Y 8(Lorg/openide/explorer/propertysheet/SheetColumnModel;)V [ Deleting columns not supported ] names _ values a "javax/swing/table/TableColumnModel Code LineNumberTable LocalVariableTable this 5Lorg/openide/explorer/propertysheet/SheetColumnModel; 	addColumn "(Ljavax/swing/table/TableColumn;)V aColumn MethodParameters addColumnModelListener /(Ljavax/swing/event/TableColumnModelListener;)V x ,Ljavax/swing/event/TableColumnModelListener; 	getColumn "(I)Ljavax/swing/table/TableColumn; columnIndex I StackMapTable getColumnCount getColumnIndex (Ljava/lang/Object;)I columnIdentifier getColumnIndexAtX (I)I 	xPosition width0 getColumnMargin getColumnSelectionAllowed ()Z 
getColumns ()Ljava/util/Enumeration; 	Signature :()Ljava/util/Enumeration<Ljavax/swing/table/TableColumn;>; getSelectedColumnCount getSelectedColumns ()[I getSelectionModel "()Ljavax/swing/ListSelectionModel; getTotalColumnWidth 
moveColumn (II)V newIndex removeColumn column removeColumnModelListener setColumnMargin 	newMargin setColumnSelectionAllowed (Z)V flag Z setSelectionModel #(Ljavax/swing/ListSelectionModel;)V newModel <clinit> 
SourceFile SheetColumnModel.java InnerClasses 0    `        &            #               b   �     N*� *� Y� 	� 
*� Y� � *� � � *� Y� � !*� !� $� *� <� '*� !� '�    c   & 	   /  ,  0  1 % 2 1 3 ; 4 D 5 M 6 d       N e f    g h  b   >     
� *Y,� .�    c       9 d       
 e f     
 i   j    i    k l  b   5      �    c       > d        e f      m n  j    m    o p  b   �     D�     %                 *� �*� !�� 1Y� 3Y� 56� 8� <� 8� B� E�    c       A  C ! F & I d       D e f     D q r  s     j    q    t T  b   ,     �    c       M d        e f    u v  b   �     :+� F� +� � H� �+� $� H� �� 1Y� 3Y� 5L� 8+� N� B� E�    c       Q  R  S  V  W  [ d       : e f     : w   s     j    w    x y  b         *� � Q=� �*� !� Q`� ��    c       _  a  b  e  f  i d          e f       z r    { r  s    �  j    z    | T  b   ,     �    c       m d        e f    } ~  b   ,     �    c       q d        e f     �  b   3     	� UY*� W�    c       u d       	 e f   �    �  � T  b   ,     �    c       � d        e f    � �  b   .     �
�    c       � d        e f    � �  b   /     *� 
�    c       � d        e f    � T  b   :     *� � Q*� !� Q`�    c       � d        e f    � �  b   ?      �    c       � d         e f      q r     � r  j   	 q   �    � h  b   >     
� *YZ� .�    c       � d       
 e f     
 �   j    �    � l  b   5      �    c       � d        e f      m n  j    m    �   b   5      �    c       � d        e f      � r  j    �    � �  b   5      �    c       � d        e f      � �  j    �    � �  b   5      �    c       � d        e f      �   j    �    �   b   '      \� ^� $�    c   
    (  )  �    � �   
  U      