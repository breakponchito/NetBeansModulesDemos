����   4 ^	      3org/netbeans/swing/etable/ETable$CompareQuickFilter this$0 "Lorg/netbeans/swing/etable/ETable;
  	 
   java/lang/Object <init> ()V	     column I	     value Ljava/lang/Object;	     greater Z	     equalsCounts
     	doCompare '(Ljava/lang/Object;Ljava/lang/Object;)I ! java/lang/Comparable
  # $ % getClass ()Ljava/lang/Class;
 ' ( ) * + java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z   - . / 	compareTo (Ljava/lang/Object;)I
  1 2 3 toString ()Ljava/lang/String;
 5 6 7 . 8 java/lang/String (Ljava/lang/String;)I
 : ; < = >  org/netbeans/swing/etable/ETable setQuickFilter (ILjava/lang/Object;)V @ java/awt/event/ActionListener B %org/netbeans/swing/etable/QuickFilter :(Lorg/netbeans/swing/etable/ETable;ILjava/lang/Object;ZZ)V Code LineNumberTable LocalVariableTable this 5Lorg/netbeans/swing/etable/ETable$CompareQuickFilter; MethodParameters accept (Ljava/lang/Object;)Z aValue StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; c1 Ljava/lang/Comparable; obj1 obj2 Ljava/lang/SuppressWarnings; 	unchecked actionPerformed (Ljava/awt/event/ActionEvent;)V actionEvent Ljava/awt/event/ActionEvent; 
SourceFile ETable.java InnerClasses CompareQuickFilter      ? A                             C  D   �      *+� *� *� *-� *� *� �    E      � 	� � � � � F   4      G H                               I                  J K  D   �     ]*� � .*� � **� +� � � �**� +� � � �*� � **� +� � � �**� +� � � �    E           2 9	 K F       ] G H     ] L   M    @ @ @ @ I    L   N     O       D   �     D+� 	,� �+� �,� �+�  � +� ",� "� &� +�  N-,� , �+� 0,� 0� 4�    E   * 
    
     + 0 8 F   *  0  P Q    D G H     D R     D S   M    
! I   	 R   S   N     T  [ s U  V W  D   E     *� *� *� 9�    E   
   $ % F        G H      X Y  I    X   N     O    Z    [ \   
   : ] 