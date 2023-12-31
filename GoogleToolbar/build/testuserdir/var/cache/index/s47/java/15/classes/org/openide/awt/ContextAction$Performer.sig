����   4  javax/swing/Action
      'org/openide/awt/ContextAction$Performer 	delegate0 G(Lorg/openide/util/Lookup$Provider;Ljava/util/List;Z)Ljava/lang/Object;
 
     java/lang/Object <init> ()V	     instDelegate Ljava/lang/ref/Reference;	     enabler /Lorg/openide/awt/ContextAction$StatefulMonitor;	     delegate Ljava/util/Map;  java/util/HashMap
      ! " # $ java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 
  ' (  stopListeners
 * + , - . java/lang/ref/Reference get ()Ljava/lang/Object;
  0 1  clear 3 java/lang/ref/WeakReference
 2 5  6 (Ljava/lang/Object;)V	  8 9  owner
  ; < = createDelegate F(Lorg/openide/util/Lookup$Provider;Ljava/util/List;)Ljava/lang/Object; ? )org/openide/awt/ContextAction$Performer$1
 > A  B P(Lorg/openide/awt/ContextAction$Performer;Ljava/lang/Object;Ljava/lang/Object;)V D #org/openide/util/ContextAwareAction F G H I J  org/openide/util/Lookup$Provider 	getLookup ()Lorg/openide/util/Lookup; C L M N createContextAwareInstance /(Lorg/openide/util/Lookup;)Ljavax/swing/Action;
 P Q R S T org/openide/awt/ContextAction 
access$000 ()Ljava/lang/ref/Reference;	  V W X weakEnableListener "Ljavax/swing/event/ChangeListener; Z [ \ ] ^ -org/openide/awt/ContextAction$StatefulMonitor removeChangeListener %(Ljavax/swing/event/ChangeListener;)V
 ` a b c d org/openide/util/WeakListeners change X(Ljavax/swing/event/ChangeListener;Ljava/lang/Object;)Ljavax/swing/event/ChangeListener; Z f g ^ addChangeListener	  i j k weakActionListener #Ljava/beans/PropertyChangeListener;  m n o removePropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V   q - r &(Ljava/lang/Object;)Ljava/lang/Object; t $org/openide/awt/ContextActionEnabler s v w x enabled (Ljava/util/List;)Z	 z { | } ~ org/openide/awt/GeneralAction LOG Ljava/util/logging/Logger; � java/lang/StringBuilder
   � Wrong enabler for 
  � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � :
  � � � toString ()Ljava/lang/String;
 � � � � � java/util/logging/Logger warning (Ljava/lang/String;)V � &org/openide/awt/ContextActionPerformer � java/awt/event/ActionListener � Wrong delegate for  � � � � actionPerformed /(Ljava/awt/event/ActionEvent;Ljava/util/List;)V
  � � � Q(Ljava/awt/event/ActionEvent;Ljava/util/List;Lorg/openide/util/Lookup$Provider;)V � � � � (Ljava/awt/event/ActionEvent;)V   � � � hashCode ()I   � � � equals (Ljava/lang/Object;)Z
 P � �  updateState � ActionCommandKey � key � Performer{id = 
 � � � � � java/util/Objects &(Ljava/lang/Object;)Ljava/lang/String; � , del =  � } �  javax/swing/event/ChangeListener 	Signature :Ljava/lang/ref/Reference<Lorg/openide/awt/ContextAction;>; -Ljava/lang/ref/Reference<Ljava/lang/Object;>; (Ljava/util/Map;)V Code LineNumberTable LocalVariableTable this )Lorg/openide/awt/ContextAction$Performer; LocalVariableTypeTable 1Lorg/openide/awt/ContextAction$Performer<TData;>; MethodParameters Q(Lorg/openide/awt/ContextActionPerformer;Lorg/openide/awt/ContextActionEnabler;)V p (Lorg/openide/awt/ContextActionPerformer; e &Lorg/openide/awt/ContextActionEnabler; map 0Lorg/openide/awt/ContextActionPerformer<TData;>; .Lorg/openide/awt/ContextActionEnabler<TData;>; 5Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>; a(Lorg/openide/awt/ContextActionPerformer<TData;>;Lorg/openide/awt/ContextActionEnabler<TData;>;)V o Ljava/lang/Object; r StackMapTable attach "(Lorg/openide/awt/ContextAction;)V a Lorg/openide/awt/ContextAction; 
everything "Lorg/openide/util/Lookup$Provider; data Ljava/util/List; Ljava/util/List<*>; I(Lorg/openide/util/Lookup$Provider;Ljava/util/List<*>;)Ljava/lang/Object; fd 	getAction Z d J(Lorg/openide/util/Lookup$Provider;Ljava/util/List<*>;Z)Ljava/lang/Object; startListeners detach inst 5(Ljava/util/List;Lorg/openide/util/Lookup$Provider;)Z en :Lorg/openide/awt/ContextActionEnabler<Ljava/lang/Object;>; %Ljava/util/List<+Ljava/lang/Object;>; J(Ljava/util/List<+Ljava/lang/Object;>;Lorg/openide/util/Lookup$Provider;)Z #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value 	unchecked obj perf ev Ljava/awt/event/ActionEvent; Ljava/util/List<+TData;>; Z(Ljava/awt/event/ActionEvent;Ljava/util/List<+TData;>;Lorg/openide/util/Lookup$Provider;)V Ljava/lang/Override; l ,Lorg/openide/awt/ContextAction$Performer<*>; stateChanged "(Ljavax/swing/event/ChangeEvent;)V Ljavax/swing/event/ChangeEvent; sb Ljava/lang/StringBuilder; 
access$100 p(Lorg/openide/awt/ContextAction$Performer;Lorg/openide/util/Lookup$Provider;Ljava/util/List;Z)Ljava/lang/Object; x0 x1 x2 x3 M<Data:Ljava/lang/Object;>Ljava/lang/Object;Ljavax/swing/event/ChangeListener; 
SourceFile ContextAction.java InnerClasses 	Performer org/openide/util/Lookup Provider StatefulMonitor    
  �         9   �    �      �    �         W X     j k      �  �   j     *� 	*� *� *+� �    �      5 0 	1 6 7 �        � �         �        � �   �         �  �   �     0*� 	*� *� � Y� N-+�  W-%,�  W*-� �    �   "   < 0 	1 = >  ? *@ /A �   *    0 � �     0 � �    0 � �    �   �   *    0 � �     0 � �    0 � �    � �  �   	 �   �   �    �   1   �   �     &*� &*� L*� +� +� )M,� � 
,� � /�    �   "   D E 	F G H I J %M �        � �    & � �   	  �   �       & � �   	  � �  �    � % *   � �  �   W     *� 2Y+� 4� 7�    �   
   P Q �        � �      � �  �        � �   �    �      =  �   b     *+,� �    �      Z �         � �      � �     � �  �        � �      � �  �   	 �   �   �    �     �  m     �*� � *� � )� :� � � � � +,� ��*+,� ::� Y� +� � #:*� >Y*� @� � +,� �� C� � C+� E � K :*� 2Y� 4� � 
*� O� �    �   B   ^ _ ` %a 1c 4e <f Ag Mh Qi aj ml um �o �q �s �   >  Q  � �    � � �     � � �    � � �    � � �   � � �  �       � � �     � � �  �    @ 
�  
8 �    �   �   �   �    �   (   �   k     *� � *� *� U� Y *� U�    �      w x y { �        � �   �        � �   �       �   �   r     !*� � ***� � _� U*� *� U� e �    �      ~  �  � �       ! � �   �       ! � �   �        �   �   �     ,*� &*� � *� � )� L+� � +� *� h� l �    �      � � � � +� �       , � �     � �  �       , � �   �    @ 
�  
  w �  �   �     O*� %� p N-� �-� s� -� s:+� u �� y� Y� ��� �*� � ��� �-� �� �� ��    �   "   � � � � � � (� M� �   4   	 � �    O � �     O � �    O � �   C � �  �       	 � �    O � �     O � �  �   	 �  
 �   	 �   �   �    � �     �  �[ s �  < =  �   �     L*� � p N-� �� -�-� � -�-� �� (� y� Y� ��� �*� � ��� �-� �� �� �-�    �   "   � � � � � � %� J� �   *    L � �     L � �    L � �   @ � �  �       L � �     L � �  �   
 �  
+ �   	 �   �   �    �  � �  �        N*-,� :� �� � �:+,� � �� � � :+,-� ��� �� � �+� � �    �   2   � 	� � � !� "� *� 1� 9� :� B� M� �   H   
 � �  1 	 � �    N � �     N � �    N � �    N � �  	 E � �  �   *   
 � �  1 	 � �    N � �     N � �  �   
 � " 
 �    �   �   �   �    � �     �  �[ s �  � �  �   I     *� � � u`�    �      � �        � �   �        � �   �     �    � �  �   �     #*+� �+� � +� M*� ,� � � ��    �      � � � � � !� �        � �    # � �     # � �  �       �     # � �   �     �    �   �     �     �   ~     *� 7� )� PM,� ,� ��    �      � � � � �         � �      �   	 � �  �        � �   �    �  P �    �   �     �    � �  �   �     [� Y� �L*� �� p M,� *� �� p M*� � � 
*� � )N+�� �,� �� ��� �-� �� ��� �W+� ��    �   & 	  � � � � $� 7� F� R� V� �   *    [ � �    S   G � �  7 $ � �  �       [ � �   �    � $  

F 
 �     �    �   P     *+,� �    �      - �   *     �     	 �    
 �     �   �         "   P  F	 Z P >      