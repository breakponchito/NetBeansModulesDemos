����   4 �	      0org/openide/text/CloneableEditorSupport$Listener this$0 )Lorg/openide/text/CloneableEditorSupport;
  	 
   java/lang/Object <init> ()V
      'org/openide/text/CloneableEditorSupport callNotifyModified ()Z	     revertModifiedFlag Z  modified
      java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String;
   ! " # $ java/lang/String equals (Ljava/lang/Object;)Z	 & ' ( ) * java/lang/Boolean TRUE Ljava/lang/Boolean;
  , - . getNewValue ()Ljava/lang/Object;
 & !
  1 2 3 
access$400 =(Lorg/openide/text/CloneableEditorSupport;)Ljava/lang/Object;
  5 6  isAlreadyModified 8  java/beans/PropertyVetoException : Not allowed
 7 <  = 5(Ljava/lang/String;Ljava/beans/PropertyChangeEvent;)V
  ? @  callNotifyUnmodified B expectedTime D java/util/Date
 C F G H getTime ()J
  J K L 
access$502 -(Lorg/openide/text/CloneableEditorSupport;J)J N +org/openide/text/CloneableEditorSupport$Env P time	  R S T ERR Ljava/util/logging/Logger; V java/lang/StringBuilder
 U 	
  Y Z  
documentID
 U \ ] ^ append -(Ljava/lang/String;)Ljava/lang/StringBuilder; ` : PROP_TIME new value: 
 U b ] c -(Ljava/lang/Object;)Ljava/lang/StringBuilder; e , ��������
 U i ] j (J)Ljava/lang/StringBuilder;
 U l m  toString
 o p q r s java/util/logging/Logger fine (Ljava/lang/String;)V u        lastSaveTime: 
  w x y 
access$500 ,(Lorg/openide/text/CloneableEditorSupport;)J
 C {  | (J)V      ' �              reload: 
 U � ] � (Z)Ljava/lang/StringBuilder;	 � � � � � org/openide/util/Mutex EVENT Lorg/openide/util/Mutex; � 2org/openide/text/CloneableEditorSupport$Listener$1
 � �  � E(Lorg/openide/text/CloneableEditorSupport$Listener;Ljava/util/Date;)V
 � � � � postReadRequest (Ljava/lang/Runnable;)V � : reload task posted � +org/openide/cookies/EditorCookie$Observable
  � � . getOldValue
  � � � firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V � $DataEditorSupport.read-only.changing
  � � � getDoc #()Ljavax/swing/text/StyledDocument; � editable � � � � � javax/swing/text/Document putProperty '(Ljava/lang/Object;Ljava/lang/Object;)V
  � �  updateTitles � !java/beans/PropertyChangeListener � "javax/swing/event/DocumentListener � !java/beans/VetoableChangeListener ,(Lorg/openide/text/CloneableEditorSupport;)V Code LineNumberTable LocalVariableTable this 2Lorg/openide/text/CloneableEditorSupport$Listener; MethodParameters insertUpdate $(Ljavax/swing/event/DocumentEvent;)V evt !Ljavax/swing/event/DocumentEvent; removeUpdate changedUpdate vetoableChange #(Ljava/beans/PropertyChangeEvent;)V alreadyModified  Ljava/beans/PropertyChangeEvent; StackMapTable � java/lang/Throwable 
Exceptions propertyChange Ljava/util/Date; reload d Ljavax/swing/text/Document; o Ljava/lang/Object; ev 
SourceFile CloneableEditorSupport.java InnerClasses Listener Env �  org/openide/cookies/EditorCookie 
Observable 0    � � �               �  �   8     
*+� *� �    �   
   � 	� �       
 � �   �      � �  �   J     *� � W*� �    �      � � � �        � �      � �  �    �    � �  �   J     *� � W*� �    �      � � � �        � �      � �  �    �    � �  �   5      �    �      � �        � �      � �  �    �    � �  �  4     k+� � � a� %+� +� /� F*� � 0YN�*� � 4=-ç 
:-��*� � � � 7Y9+� ;�*� � � � *� � 
*� � >�  # - 0   0 4 0    �   2   � � � #� +� 7� A� L� Y� \� c� j� �   *  +  �   7 " �     k � �     k � �  �   ? � 0       ��      H �       �  �     7 �    �    � �  �  r    uA+� � � *� +� +� C� E� IXO+� � � �+� +� CM� Q� UY� W*� � X� [_� [,� ad� [,� 
,� E�  f� h� k� n� Q� UY� Wt� [� CY*� � v� z� ad� [*� � v� h� k� n*� � v f�� -,� %,� E*� � v�� ,� E }a*� � v�� � >� Q� UY� W� [� �� k� n� 1� �� �Y*,� �� �� Q� UY� W*� � X� [�� [� k� n+� � � *� +� �+� +� ��+� � � )+� +M,� %� *� � �N-�� %� � *� � ��    �   ^   � � � *� 2� k� �� �� �� �� ���%�1�8�?�B�N	 S	Z	b	m	t	 �   >  2 � P �  � K �  b  � � S ! � �   u � �    u � �  �   C 
� @    C  o U�     C  o U� q@� K� * �  �    �    �    � �   "    �  M  �	 �       � � �	