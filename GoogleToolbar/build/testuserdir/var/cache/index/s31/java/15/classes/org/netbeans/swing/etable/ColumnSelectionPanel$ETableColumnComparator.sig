����   4 1
      java/lang/Object <init> ()V  &org/netbeans/swing/etable/ETableColumn
  
   	compareTo +(Lorg/netbeans/swing/etable/ETableColumn;)I  javax/swing/table/TableColumn
      Eorg/netbeans/swing/etable/ColumnSelectionPanel$ETableColumnComparator compare A(Ljavax/swing/table/TableColumn;Ljavax/swing/table/TableColumn;)I
  	     DEFAULT GLorg/netbeans/swing/etable/ColumnSelectionPanel$ETableColumnComparator;  java/util/Comparator Code LineNumberTable LocalVariableTable this o1 Ljavax/swing/table/TableColumn; o2 StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; '(Ljava/lang/Object;Ljava/lang/Object;)I <clinit> 	Signature ILjava/lang/Object;Ljava/util/Comparator<Ljavax/swing/table/TableColumn;>; 
SourceFile ColumnSelectionPanel.java InnerClasses / .org/netbeans/swing/etable/ColumnSelectionPanel ETableColumnComparator                     /     *� �          �                    k     +� � ,� � +� ,� � 	W�          � � �                   !     " !  #     $   	     "   %     &  A  '     7     *+� ,� � �          �             $   	    "  %     &    (      #      � Y� � �          �  )    * +    , -   
   . 0 
