����   4 �
      !org/openide/actions/ToolsAction$G isPopupEnabled (Ljavax/swing/Action;)Z
   	 
 getTimestamp ()I
      java/lang/Object <init> ()V	     	timestamp I	     actions [Ljavax/swing/Action;   java/beans/PropertyChangeSupport
     (Ljava/lang/Object;)V	     ! supp "Ljava/beans/PropertyChangeSupport;
 # $ % & ' !org/openide/actions/ActionManager 
getDefault %()Lorg/openide/actions/ActionManager;
 # ) * + addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V - UI/ToolActions
 / 0 1 2 3 org/openide/util/lookup/Lookups forPath -(Ljava/lang/String;)Lorg/openide/util/Lookup; 5 javax/swing/Action
 7 8 9 : ; org/openide/util/Lookup lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;	  = > ? result  Lorg/openide/util/Lookup$Result;
 A B C D E org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V
  G H  actionsListChanged
  )
  K L + removePropertyChangeListener
  N O P firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V 4 K S java/util/ArrayList
 R 
 # V W X getContextActions *()[Lorg/openide/util/actions/SystemAction;
 Z [ \ ] ^ java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List; ` a b c d java/util/List addAll (Ljava/util/Collection;)Z
 A f g h allInstances ()Ljava/util/Collection; ` j k l toArray (([Ljava/lang/Object;)[Ljava/lang/Object;  4 ) p actionsState
  N
 s t u v w java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String; y contextActions
 { | } ~  java/lang/String equals (Ljava/lang/Object;)Z � enabled
  � �  actionStateChanged �  org/openide/util/Lookup$Provider � � � � 	getLookup ()Lorg/openide/util/Lookup; � #org/openide/util/ContextAwareAction � � � � createContextAwareInstance /(Lorg/openide/util/Lookup;)Ljavax/swing/Action; � java/lang/IllegalStateException � java/lang/StringBuilder
 �  � createContextAwareInstance for 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; �  returned null!
 � � � w toString
 � �  � (Ljava/lang/String;)V 4 � � � 	isEnabled ()Z
  � � � call %()Lorg/openide/actions/ToolsAction$G; � !java/beans/PropertyChangeListener � org/openide/util/LookupListener � java/util/concurrent/Callable 
PROP_STATE Ljava/lang/String; ConstantValue 	Signature 6Lorg/openide/util/Lookup$Result<Ljavax/swing/Action;>; Code LineNumberTable LocalVariableTable this #Lorg/openide/actions/ToolsAction$G; am #Lorg/openide/actions/ActionManager; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; listener #Ljava/beans/PropertyChangeListener; MethodParameters name o Ljava/lang/Object; n act Ljavax/swing/Action; i copy all Ljava/util/List; LocalVariableTypeTable &Ljava/util/List<Ljavax/swing/Action;>; StackMapTable propertyChange #(Ljava/beans/PropertyChangeEvent;)V ev  Ljava/beans/PropertyChangeEvent; prop lookup Lorg/openide/util/Lookup; toolsAction en Z resultChanged !(Lorg/openide/util/LookupEvent;)V Lorg/openide/util/LookupEvent; ()Ljava/lang/Object; 
Exceptions � java/lang/Exception 
access$000 &(Lorg/openide/actions/ToolsAction$G;)I x0 
access$200 :(Lorg/openide/actions/ToolsAction$G;Ljavax/swing/Action;)Z x1 �Ljava/lang/Object;Ljava/beans/PropertyChangeListener;Lorg/openide/util/LookupListener;Ljava/util/concurrent/Callable<Lorg/openide/actions/ToolsAction$G;>; 
SourceFile ToolsAction.java InnerClasses � org/openide/actions/ToolsAction G Result Provider      � � �   � �  �    o              !     > ?  �    �      �   U     *� *� *� *� Y*� � �    �      � � 	� � � �        � �    � �  �   m     %� "L+*� (*,� .4� 6� <*� <*� @*� F*�    �      � � 	� � � #� �       % � �    ! � �  �     �    * +  �   A     	*� +� I�    �   
   � � �       	 � �     	 � �  �    �    L +  �   A     	*� +� J�    �   
   � � �       	 � �     	 � �  �    �    O P  �   W     *� +,-� M�    �   
   � 
� �   *     � �      � �     � �     � �  �    �   �   �    H   �  �     �*Y� `� *� L+�  =+�� +2N-� 
-*� Q ���� "M� RY� TN-,� U� Y� _ W-*� <� e� _ W-� 4� i � mL6+�� +2:� *� n ����*+� *o� q�    �   V   � 
� � � � � #� *� 0� 4� <� J� X� f� p� v� {� �� �� �� �� �   R    � �    �   v  � �  i   �     � � �    � �   4 c � �  < [ � �  �     < [ � �  �    �  m� � 8 # `�   �   �   E     *Y� `� *o� q�    �      � 
� � �        � �    � �  �   �     '+� rM,� ,x� z� 
*� F� ,�� z� *� ��    �      � � � � "� &� �        ' � �     ' � �   " � �  �   
 �  { �    �   �     �       �  ~     �=*� N+� �� +� �� � :� :6-�� o-2� � _� E-2� �� ;-2� �� � :� ,� �Y� �Y� ��� �-2� ��� �� �� ��-2:� � � =� 	�����    �   J   � � � � � � )� 0� 3 B R W z	 � � � �� � �   \ 	   � �  R ( � �  �  � �  " s �     � � �     � � �   � � �   � �    x � �  �   # �  m�  7� � F�  4� �  �    �    	 
  �   /     *� �    �       �        � �    � �  �   =     *� F�    �   
     �        � �      � �  �    �   �     �  A � �  �   /     *� ��    �      � �        � �   �     � �     �   � �  �   /     *� �    �      � �        � �   � �  �   :     *+� �    �      � �        � �      � �   �    � �    � �      � � 
 A 7 �	 � 7 �	