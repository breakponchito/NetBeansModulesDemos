����   4 <
      java/lang/Object <init> ()V
  	 
   +org/openide/util/lookup/AbstractLookup$Pair getIndex ()I  @org/openide/util/lookup/ALPairComparator$DuplicatedPairException
     ](Lorg/openide/util/lookup/AbstractLookup$Pair;Lorg/openide/util/lookup/AbstractLookup$Pair;)V
      (org/openide/util/lookup/ALPairComparator compare ](Lorg/openide/util/lookup/AbstractLookup$Pair;Lorg/openide/util/lookup/AbstractLookup$Pair;)I
  	     DEFAULT Ljava/util/Comparator;  java/util/Comparator 	Signature HLjava/util/Comparator<Lorg/openide/util/lookup/AbstractLookup$Pair<*>;>; Code LineNumberTable LocalVariableTable this *Lorg/openide/util/lookup/ALPairComparator; i1 -Lorg/openide/util/lookup/AbstractLookup$Pair; i2 result I LocalVariableTypeTable 0Lorg/openide/util/lookup/AbstractLookup$Pair<*>; StackMapTable MethodParameters c(Lorg/openide/util/lookup/AbstractLookup$Pair<*>;Lorg/openide/util/lookup/AbstractLookup$Pair<*>;)I #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; '(Ljava/lang/Object;Ljava/lang/Object;)I <clinit> ZLjava/lang/Object;Ljava/util/Comparator<Lorg/openide/util/lookup/AbstractLookup$Pair<*>;>; 
SourceFile ALPairComparator.java InnerClasses 9 &org/openide/util/lookup/AbstractLookup Pair DuplicatedPairException 0                     !   3     *� �    "   
    !  " #        $ %       !   �     !+� ,� d>� +,� � Y+,� ���    "       ( 
 *  +  ,  /  2 #   *    ! $ %     ! & '    ! ( '  
  ) *  +       ! & ,    ! ( ,  -    �  .   	 &   (       / 0     1  A  2  !   7     *+� ,� � �    "        #        $ %   .   	 &  (  0     1    3   !   #      � Y� � �    "             4 5    6 7      8 :	   ; 