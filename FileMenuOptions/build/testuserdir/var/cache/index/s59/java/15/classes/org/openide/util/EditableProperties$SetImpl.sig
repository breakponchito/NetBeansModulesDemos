����   4 8	      +org/openide/util/EditableProperties$SetImpl this$0 %Lorg/openide/util/EditableProperties;
  	 
   java/util/AbstractSet <init> ()V  0org/openide/util/EditableProperties$IteratorImpl
     ((Lorg/openide/util/EditableProperties;)V
      #org/openide/util/EditableProperties 
access$100 R(Lorg/openide/util/EditableProperties;)Lorg/openide/util/EditableProperties$State;	      )org/openide/util/EditableProperties$State 	itemIndex Ljava/util/Map;    ! " # java/util/Map size ()I Code LineNumberTable LocalVariableTable this -Lorg/openide/util/EditableProperties$SetImpl; MethodParameters iterator ()Ljava/util/Iterator; 	Signature S()Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>; TLjava/util/AbstractSet<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>; 
SourceFile EditableProperties.java InnerClasses SetImpl IteratorImpl State 6 java/util/Map$Entry Entry                 $   4     
*+� *� �    %      > &       
 ' (   )      * +  $   6     � Y*� � �    %      A &        ' (   ,    -  " #  $   :     *� � � �  �    %      E &        ' (    ,    . /    0 1   "    2    3    4 
 5  7	