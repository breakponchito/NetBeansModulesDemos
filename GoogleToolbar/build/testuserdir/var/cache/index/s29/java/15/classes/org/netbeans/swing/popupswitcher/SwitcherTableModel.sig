����   4 d
      org/openide/util/Utilities getUsableScreenBounds ()Ljava/awt/Rectangle;	  	 
   java/awt/Rectangle height I
      3org/netbeans/swing/popupswitcher/SwitcherTableModel <init> :([Lorg/netbeans/swing/popupswitcher/SwitcherTableItem;II)V
      $javax/swing/table/AbstractTableModel ()V	     items 5[Lorg/netbeans/swing/popupswitcher/SwitcherTableItem;
     computeRowsAndCols (II)V
 ! " # $ % java/lang/Math max (II)I
  ' (  setRowsAndColumns	  * +  rows	  - .  cols	  0 1 2 event #Ljavax/swing/event/TableModelEvent; 4 !javax/swing/event/TableModelEvent
 3 6  7 !(Ljavax/swing/table/TableModel;)V
  9 : ; fireTableChanged &(Ljavax/swing/event/TableModelEvent;)V = 2org/netbeans/swing/popupswitcher/SwitcherTableItem ?  
  A B C getRowCount ()I 9([Lorg/netbeans/swing/popupswitcher/SwitcherTableItem;I)V Code LineNumberTable LocalVariableTable this 5Lorg/netbeans/swing/popupswitcher/SwitcherTableModel; 	rowHeight MethodParameters tableHeight 
nOfColumns nOfRows nOfItems maxRowsPerCol StackMapTable getColumnClass (I)Ljava/lang/Class; columnIndex #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getColumnName (I)Ljava/lang/String; isCellEditable (II)Z rowIndex 
getValueAt (II)Ljava/lang/Object; docIdx ` java/lang/Object getColumnCount 
SourceFile SwitcherTableModel.java         1 2    +     .         
    D  E   O     *+� � � �    F   
    7  8 G         H I            J   K   	    J        E   d     *� *+� *� �    F       <  = 	 >  ? G   *     H I            J      L   K       J   L       E       U*� �>6� l6� ;� 6l6p� ��  6l6p� �*� &� 	*� &�    F   B    C  D 	 E  F  G  I ! J ( K + M 3 N 9 O @ P C R K S N T T V G   H  ! * M   9  N     U H I     U J     U L    O O   	 L P   Q    � � � � 
 K   	 J   L    (   E   �     6*� )� *� ,� (*� )*� ,*� /� *� 3Y*� 5� /**� /� 8�    F       Y  Z  [  \ ! ] - _ 5 a G        6 H I     6 +     6 .   Q     K   	 +   .    R S  E   7     <�    F       e G        H I      T   K    T   U     V    W X  E   7     >�    F       j G        H I      T   K    T   U     V    Y Z  E   @     �    F       o G         H I      [      T   K   	 [   T   U     V    \ ]  E   �     )� � �*� @h`>*� �� *� 2� �    F       s 
 t  v  w G   *    ) H I     ) [     ) T     ^   Q    
� @ _ K   	 [   T    B C  E   /     *� )�    F       { G        H I    a C  E   /     *� ,�    F        G        H I    b    c