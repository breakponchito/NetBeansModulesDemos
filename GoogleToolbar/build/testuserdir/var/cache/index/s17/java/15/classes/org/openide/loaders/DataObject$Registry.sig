����   4 J
      'org/openide/loaders/DataObject$Registry <init> ()V
   	 java/lang/Object
      org/openide/loaders/DataObject 
access$500 3()Lorg/openide/loaders/DataObject$ModifiedRegistry;
      /org/openide/loaders/DataObject$ModifiedRegistry addChangeListener %(Ljavax/swing/event/ChangeListener;)V
     removeChangeListener
     
access$600 ()Ljava/util/Set;  java/util/HashSet
     ! (Ljava/util/Collection;)V
  # $  getModifiedSet & ' ( ) * java/util/Set toArray (([Ljava/lang/Object;)[Ljava/lang/Object; , ![Lorg/openide/loaders/DataObject; Code LineNumberTable LocalVariableTable this )Lorg/openide/loaders/DataObject$Registry; chl "Ljavax/swing/event/ChangeListener; MethodParameters set Ljava/util/HashSet; LocalVariableTypeTable 5Ljava/util/HashSet<Lorg/openide/loaders/DataObject;>; StackMapTable ; java/lang/Throwable 	Signature 3()Ljava/util/Set<Lorg/openide/loaders/DataObject;>; getModified #()[Lorg/openide/loaders/DataObject; %(Lorg/openide/loaders/DataObject$1;)V x0 "Lorg/openide/loaders/DataObject$1; 
SourceFile DataObject.java InnerClasses Registry ModifiedRegistry I  org/openide/loaders/DataObject$1 1            -   3     *� �    .   
   Q R /        0 1       -   @     � 
+� �    .   
   X Y /        0 1      2 3  4    2      -   @     � 
+� �    .   
   _ ` /        0 1      2 3  4    2   $   -   �     � YL» Y� � M,+ðN+�-�             .      f g h i /       5 6     0 1   7       5 8  9    �      : <    =  > ?  -   ;     *� "� � % � +�    .      p /        0 1     @  -   9     *� �    .      N /        0 1      A B   C    D E       F    G  H      