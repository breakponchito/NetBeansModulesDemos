����   4 \
      +org/openide/util/lookup/AbstractLookup$Pair <init> ()V  java/lang/NullPointerException
  	      2org/openide/util/lookup/InstanceContent$SimpleItem obj Ljava/lang/Object;
      java/lang/Class 
isInstance (Ljava/lang/Object;)Z
      java/lang/Object equals
     hashCode ()I   java/lang/StringBuilder
   # IL[
  % & ' append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  ) * + toString ()Ljava/lang/String;
  )
  . / 0 getClass ()Ljava/lang/Class; 	Signature TT; (Ljava/lang/Object;)V Code LineNumberTable LocalVariableTable this 4Lorg/openide/util/lookup/InstanceContent$SimpleItem; LocalVariableTypeTable 9Lorg/openide/util/lookup/InstanceContent$SimpleItem<TT;>; StackMapTable MethodParameters (TT;)V 
instanceOf (Ljava/lang/Class;)Z c Ljava/lang/Class; Ljava/lang/Class<*>; (Ljava/lang/Class<*>;)Z getInstance ()Ljava/lang/Object; ()TT; o #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getId getDisplayName 	creatorOf getType ()Ljava/lang/Class<+TT;>; Ljava/lang/SuppressWarnings; value 	unchecked H<T:Ljava/lang/Object;>Lorg/openide/util/lookup/AbstractLookup$Pair<TT;>; 
SourceFile InstanceContent.java InnerClasses W &org/openide/util/lookup/AbstractLookup Pair Z 'org/openide/util/lookup/InstanceContent 
SimpleItem 0          1    2 	   3  4   �     *� +� � Y� 	�*+� 
�    5       �  �  �  �  � 6        7 8         9        7 :       2  ;    �       <       1    =  > ?  4   Y     	+*� 
� �    5       � 6       	 7 8     	 @ A  9       	 7 :     	 @ B  <    @   1    C  D E  4   A     *� 
�    5       � 6        7 8   9        7 :   1    F     4   o     +� � *� 
+� � 
� ��    5       �  �  � 6        7 8      G   9        7 :   ;     <    G   H     I       4   D     *� 
� �    5       � 6        7 8   9        7 :   H     I    J +  4   V     � Y� !"� $*� 
� (� $� ,�    5       � 6        7 8   9        7 :    K +  4   D     *� 
� (�    5       � 6        7 8   9        7 :    L   4   o     +� *� 
� � � +*� 
� �    5       � 6        7 8         9        7 :   ;    G <       H     I    M 0  4   D     *� 
� -�    5       � 6        7 8   9        7 :   1    N H     O  P[ s Q  1    R S    T U      V X	  Y [ 