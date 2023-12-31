����   4 I
      java/lang/Object <init> ()V	  	 
   1org/openide/loaders/DataFolder$ClonedFilterHandle folder  Lorg/openide/loaders/DataObject;	     filter  Lorg/openide/loaders/DataFilter;  org/openide/loaders/DataFolder  +org/openide/loaders/DataFolder$ClonedFilter
      java/util/Objects requireNonNull &(Ljava/lang/Object;)Ljava/lang/Object;
     C(Lorg/openide/loaders/DataFolder;Lorg/openide/loaders/DataFilter;)V  java/io/InvalidObjectException !  
 # $ % & ' org/openide/loaders/DataObject toString ()Ljava/lang/String;
  )  * (Ljava/lang/String;)V , org/openide/nodes/Node$Handle serialVersionUID J ConstantValue  
p��B Code LineNumberTable LocalVariableTable this 3Lorg/openide/loaders/DataFolder$ClonedFilterHandle;  Lorg/openide/loaders/DataFolder; MethodParameters getNode ()Lorg/openide/nodes/Node; StackMapTable = java/lang/String 
Exceptions @ java/io/IOException 
SourceFile DataFolder.java InnerClasses ClonedFilterHandle ClonedFilter G org/openide/nodes/Node Handle 0    +   - .  /    0                2   Y     *� *+� *,� �    3      � � 	� � 4         5 6       7        8   	        9 :  2   �     =*� � � � Y*� � Y� W*� � �� Y*� �  � 
*� � "� (�    3      � 
� "� &� 4       = 5 6   ;   & "�     " "�     " " < >     ?  A    B C       D    E  + F H	