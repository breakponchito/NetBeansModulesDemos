����   4
       org/openide/windows/TopComponent getRegistry -()Lorg/openide/windows/TopComponent$Registry;
  	 
   <org/netbeans/modules/openide/windows/GlobalActionContextImpl <init> .(Lorg/openide/windows/TopComponent$Registry;)V
      java/lang/Object ()V	     registry +Lorg/openide/windows/TopComponent$Registry;
      java/awt/EventQueue isDispatchThread ()Z
     run
    ! " invokeLater (Ljava/lang/Runnable;)V
 $ % & ' ( java/awt/KeyboardFocusManager getCurrentKeyboardFocusManager !()Ljava/awt/KeyboardFocusManager; * permanentFocusOwner
 $ , - . removePropertyChangeListener 8(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
 $ 0 1 . addPropertyChangeListener
 $ 3 4 5 getPermanentFocusOwner ()Ljava/awt/Component;
  7 8 9 setFocusOwner (Ljava/awt/Component;)V
  ; < = blickActionMap /(Ljavax/swing/ActionMap;[Ljava/awt/Component;)V
  ? @ = blickActionMapImpl B >org/netbeans/modules/openide/windows/GlobalActionContextImpl$1
 A D  =	  F G H $assertionsDisabled Z J java/lang/AssertionError
 I 
 M N O P Q org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; S &org/openide/util/ContextGlobalProvider
 M U V W lookup %(Ljava/lang/Class;)Ljava/lang/Object;	 M Y Z [ EMPTY Lorg/openide/util/Lookup;
 ] ^ _ ` a org/openide/util/lookup/Lookups 	singleton -(Ljava/lang/Object;)Lorg/openide/util/Lookup;
  c d Q 	getLookup f java/lang/Class h javax/swing/ActionMap
 ] j k l exclude F(Lorg/openide/util/Lookup;[Ljava/lang/Class;)Lorg/openide/util/Lookup;	  n o [ 	temporary q #org/openide/util/lookup/ProxyLookup
 p s  t ([Lorg/openide/util/Lookup;)V
 v w x y Q org/openide/util/Utilities actionsGlobalContext
  { | } dumpActionMapInfo �(Ljavax/swing/ActionMap;Ljava/lang/Object;Lorg/openide/util/Lookup;Lorg/openide/util/Lookup;Lorg/openide/util/Lookup;Lorg/openide/util/Lookup;)Ljava/lang/String;
 I   � (Ljava/lang/Object;)V � java/lang/StringBuilder
 �  � (We really get map from the lookup. Map: 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; �  returned:  � 
prev:  � 	null prev
 M � � � 	lookupAll )(Ljava/lang/Class;)Ljava/util/Collection; � 
now :  � null now � 
global ctx :  � null � 
original lkp : 
 � � � � toString ()Ljava/lang/String; � java/lang/ref/WeakReference
 � 	  � � � 
focusOwner Ljava/lang/ref/Reference;
 � � � � � java/lang/ref/Reference get ()Ljava/lang/Object; � java/awt/Component � � � 1 � )org/openide/windows/TopComponent$Registry &(Ljava/beans/PropertyChangeListener;)V
 ] � � � proxy =(Lorg/openide/util/Lookup$Provider;)Lorg/openide/util/Lookup; � � � � getActivated $()Lorg/openide/windows/TopComponent;
  c � 	activated
 � � � � � java/beans/PropertyChangeEvent getPropertyName
 � � � � � java/lang/String equals (Ljava/lang/Object;)Z
 � � � � getNewValue � javax/swing/AbstractButton
 � � � � 	getAction ()Ljavax/swing/Action; � #org/openide/util/ContextAwareAction
 e � �  desiredAssertionStatus �  org/openide/util/Lookup$Provider � !java/beans/PropertyChangeListener � java/lang/Runnable 	Signature /Ljava/lang/ref/Reference<Ljava/awt/Component;>; Code LineNumberTable LocalVariableTable this >Lorg/netbeans/modules/openide/windows/GlobalActionContextImpl; r StackMapTable MethodParameters m Ljava/awt/KeyboardFocusManager; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; (Ljavax/swing/ActionMap;)V map Ljavax/swing/ActionMap; focus [Ljava/awt/Component; q Ljava/lang/Object; g arr [Lorg/openide/util/Lookup; originalLkp prev obj � � java/lang/Throwable now globalContext sb Ljava/lang/StringBuilder; Ljava/awt/Component; findFocusOwner createGlobalContext l tc "Lorg/openide/windows/TopComponent; propertyChange #(Ljava/beans/PropertyChangeEvent;)V a Ljavax/swing/Action; evt  Ljava/beans/PropertyChangeEvent; <clinit> 
SourceFile GlobalActionContextImpl.java )Lorg/openide/util/lookup/ServiceProvider; service (Lorg/openide/util/ContextGlobalProvider; InnerClasses Registry Provider 1    R � � �       
 � �  �    � J o [   G H        �   6     *� � �    �   
    2  3 �        � �       �   y     *� *+� � � 
*� � *� �    �       5  6 	 7  8  :  < �        � �      �   �    �    �   �    �       �   ^     � #L+)*� ++)*� /+� 2� 6�    �       @  A  B  C  D �        � �     � �  �     �   	 < �  �   4     *� :�    �   
    M  N �        � �   �    �   
 < =  �   e     � � *+� >� � AY*+� C� �    �       P  Q  S  Y �        � �      � �  �     �   	 �  �   @ =  �  !  
   ʲ E� � � � IY� K�� LR� TM,� � �,� N� MY*� 	� X� *� \SY-� b� eYgS� iS:-� b:� m:� pY� r� m� u:g� T:� E�  *� � IY*� m� z� ~�+� 	+2� 6� m� ug� TW� :	� m� ug� TW	��  ^ � �   � � �    �   Z    \  ]  ^ $ _ ) a / b A c S f Y g ^ i j j o k x l � m � n � q � s � t � q � s � t � v �   \ 	 o 6 y [  x - � �  ) � � �  S v � �  Y p � [  ^ k � [    � � �     � � �   � � �  �   s � $  g �    � ��   g �    � � M� ] 	 g �   � M M M   � 	P �   g �    �   	 �   �   
 | }  �  �     �� �Y� �:�� �*� ��� �+� �W�� �,� �� 	,� �� �W�� �-� �� 	-� �� �W�� �� �� 
� �� �W�� �� �� 
� �� �W� ��    �   "    z 	 {  |  } 8 ~ R  n � � � �   H    � � �     � � �    � � [    � [    � [    � � [  	 �  �   � � .  g  M M M M �  ��   g  M M M M �  � S ��   g  M M M M �  � T ��   g  M M M M �  � T ��   g  M M M M �  �  �    �   �   �       �   
 8 9  �   :     � �Y*� �� ��    �   
    �  � �        �   �    �   	 5  �   O      � �� � uW� �� � 6� �� �� ��    �       �  � 
 �  �  � �      Q  �   =     *� *� � *� ��    �   
    � 
 � �        � �    d Q  �   �     #� mL+� +�*� � � M,� 	� X� ,� ��    �       �  �  � 
 �  � �        # � �    	 [   
  �    � 
 M�  C M   �   �     Q�+� Ķ ə � ug� TW)+� Ķ ə 2� �Y+� �� �SM,2� ҙ ,2� Ҷ �N-� ؙ �,� :�    �   * 
   �  �  � ! � 0 � 9 � C � J � K � P � �   *  C   0   � �    Q � �     Q  �    � 5 ��  �         �   4      � ښ � � E�    �       + �    @     �     c     � 	 A       � M	