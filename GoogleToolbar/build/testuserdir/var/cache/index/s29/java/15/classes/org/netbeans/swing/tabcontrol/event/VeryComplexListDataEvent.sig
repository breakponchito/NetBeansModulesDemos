����   4 L  8org/netbeans/swing/tabcontrol/event/ComplexListDataEvent
     <init> (Ljava/lang/Object;III)V	  	 
   <org/netbeans/swing/tabcontrol/event/VeryComplexListDataEvent old ([Lorg/netbeans/swing/tabcontrol/TabData;	     nue
      -org/netbeans/swing/tabcontrol/event/ArrayDiff 
createDiff �([Lorg/netbeans/swing/tabcontrol/TabData;[Lorg/netbeans/swing/tabcontrol/TabData;)Lorg/netbeans/swing/tabcontrol/event/ArrayDiff;  java/lang/StringBuffer
     ()V  "VeryComplexListEvent - old array: 
      append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
 " # $ % & java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
  (  ) ,(Ljava/lang/Object;)Ljava/lang/StringBuffer; +  new array:  -  diff: 
  / 0 1 getDiff 1()Lorg/netbeans/swing/tabcontrol/event/ArrayDiff;
  3 4 5 toString ()Ljava/lang/String; 7 , e(Ljava/lang/Object;[Lorg/netbeans/swing/tabcontrol/TabData;[Lorg/netbeans/swing/tabcontrol/TabData;)V Code LineNumberTable LocalVariableTable this >Lorg/netbeans/swing/tabcontrol/event/VeryComplexListDataEvent; source Ljava/lang/Object; MethodParameters sb Ljava/lang/StringBuffer; arr2str .([Ljava/lang/Object;Ljava/lang/StringBuffer;)V i I o [Ljava/lang/Object; StackMapTable 
SourceFile VeryComplexListDataEvent.java 1                     8  9   g     *+� *,� *-� �    :       >  ?  @  A ;   *     < =      > ?              @    >          0 1  9   6     *� *� � �    :       H ;        < =    4 5  9   �     C� Y� L+� W+*� � !� 'W+*� W+*� � !� 'W+,� W+*� .� 'W+� 2�    :   "    L  M  N  O " P . Q 5 R > S ;       C < =    ; A B   C D  9   �     &=*��  +*2� 'W*�d� 
+6� W����    :       W  X  Y  Z  W % ] ;       # E F    & G H     & A B  I   
 � �  @   	 G   A    J    K