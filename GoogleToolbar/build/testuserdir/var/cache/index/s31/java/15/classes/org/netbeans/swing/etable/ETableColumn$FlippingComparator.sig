����   4 6
      java/lang/Object <init> ()V	  	 
   9org/netbeans/swing/etable/ETableColumn$FlippingComparator origComparator Ljava/util/Comparator;      java/util/Comparator compare '(Ljava/lang/Object;Ljava/lang/Object;)I  +org/netbeans/swing/etable/ETable$RowMapping
     ](Lorg/netbeans/swing/etable/ETable$RowMapping;Lorg/netbeans/swing/etable/ETable$RowMapping;)I 	Signature ELjava/util/Comparator<Lorg/netbeans/swing/etable/ETable$RowMapping;>; (Ljava/util/Comparator;)V Code LineNumberTable LocalVariableTable this ;Lorg/netbeans/swing/etable/ETableColumn$FlippingComparator; orig LocalVariableTypeTable MethodParameters H(Ljava/util/Comparator<Lorg/netbeans/swing/etable/ETable$RowMapping;>;)V o1 -Lorg/netbeans/swing/etable/ETable$RowMapping; o2 #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getOriginalComparator ()Ljava/util/Comparator; G()Ljava/util/Comparator<Lorg/netbeans/swing/etable/ETable$RowMapping;>; WLjava/lang/Object;Ljava/util/Comparator<Lorg/netbeans/swing/etable/ETable$RowMapping;>; 
SourceFile ETableColumn.java InnerClasses 1 &org/netbeans/swing/etable/ETableColumn FlippingComparator 4  org/netbeans/swing/etable/ETable 
RowMapping                         X     
*� *+� �          � � 	�        
       
     !       
     "            #        K     *� +,�  t�          �                 $ %     & %  "   	 $   &   '     (    ) *     /     *� �          �                 +A       7     *+� ,� � �          �             "   	 $  &  '     (        , -    . /      0 2   3 5 