����   4�	      org/openide/awt/ContextAction NONE Ljava/lang/ref/Reference;
  	 
   java/lang/Object <init> ()V  java/lang/NullPointerException  Has to provide a key!
     (Ljava/lang/String;)V	     type Ljava/lang/Class;	     
selectMode "Lorg/openide/awt/ContextSelection;	     	performer )Lorg/openide/awt/ContextAction$Performer;
 ! " # $ % org/openide/awt/ContextManager findManager <(Lorg/openide/util/Lookup;Z)Lorg/openide/awt/ContextManager;	  ' ( ) global  Lorg/openide/awt/ContextManager;	  + , - enableMonitor /Lorg/openide/awt/ContextAction$StatefulMonitor;	  / 0 1 LOG Ljava/util/logging/Logger;	 3 4 5 6 7 java/util/logging/Level FINE Ljava/util/logging/Level; 9 Setting enable monitor {0}: {1}
 ; < = > ? java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V A java/lang/StringBuilder
 @ 	
  D E F toString ()Ljava/lang/String;
 @ H I J append -(Ljava/lang/String;)Ljava/lang/StringBuilder; L [type=
 @ N I O -(Ljava/lang/Object;)Ljava/lang/StringBuilder; Q , performer= S ]
 @ D
 ! V W X actionPerformed {(Ljava/awt/event/ActionEvent;Lorg/openide/awt/ContextAction$Performer;Ljava/lang/Class;Lorg/openide/awt/ContextSelection;)V	  Z [ \ $assertionsDisabled Z
 ^ _ ` a b java/awt/EventQueue isDispatchThread ()Z d java/lang/AssertionError
 c 	
  g h b fetchEnabledValue
 ! j k l 	isEnabled _(Ljava/lang/Class;Lorg/openide/awt/ContextSelection;Lorg/openide/awt/ContextAction$Performer;)Z	  n o \ previousEnabled   q r s apply @(Lorg/openide/awt/ContextAction;)Ljava/util/function/BiFunction;
 ! u v w 
runEnabled U(Ljava/lang/Class;Lorg/openide/awt/ContextSelection;Ljava/util/function/BiFunction;)Z	 y z { | } org/openide/util/Mutex EVENT Lorg/openide/util/Mutex;
 y  � � 
readAccess (Ljava/lang/Runnable;)V
  � �  updateStateProperties	  � � � support "Ljava/beans/PropertyChangeSupport; �  java/beans/PropertyChangeSupport
 � �  � (Ljava/lang/Object;)V
 � � � � addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
  � �  startListeners
 � � � � removePropertyChangeListener
 � � � � hasListeners (Ljava/lang/String;)Z
  � �  stopListeners
 � � � 'org/openide/awt/ContextAction$Performer
 ! � � � registerListener 3(Ljava/lang/Class;Lorg/openide/awt/ContextAction;)V � � � � � -org/openide/awt/ContextAction$StatefulMonitor addChangeListener %(Ljavax/swing/event/ChangeListener;)V
 ! � � � unregisterListener
 � � � � � � removeChangeListener � enabler
 � � � � � java/lang/String equals (Ljava/lang/Object;)Z
  � �  updateState � javax/swing/Action � ActionCommandKey	 � � � � delegate Ljava/util/Map; � � � � � java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; � key
 � � �  clear � �
  � �  
clearState
  � � b isListening
  � k b
  � � � updateEnabledState (Z)V
 � � � � firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V � enabled
 � � � � � java/lang/Boolean valueOf (Z)Ljava/lang/Boolean;
  � � � ;(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
 ! � � b 	isSurvive � � � � createContextMonitor J(Lorg/openide/util/Lookup;)Lorg/openide/awt/ContextAction$StatefulMonitor;
  �  � �(Lorg/openide/awt/ContextAction$Performer;Lorg/openide/awt/ContextSelection;Lorg/openide/util/Lookup;Ljava/lang/Class;ZLorg/openide/awt/ContextAction$StatefulMonitor;)V
 � � � � � java/util/Objects hash ([Ljava/lang/Object;)I
  �
 � �   org/openide/awt/ContextSelection
 � �
 � � '(Ljava/lang/Object;Ljava/lang/Object;)Z  � p(Lorg/openide/awt/ContextAction;Lorg/openide/util/Lookup$Provider;Ljava/util/List;)Ljava/util/function/Supplier; �	
 getType ()Ljava/lang/Class;
 � � F(Lorg/openide/util/Lookup$Provider;Ljava/util/List;)Ljava/lang/Object;
 java/util/Collections singletonList $(Ljava/lang/Object;)Ljava/util/List;  � 3(Ljavax/swing/Action;)Ljava/util/function/Supplier; � � 0(Ljava/util/List;Ljava/util/function/Supplier;)Z  r ](Lorg/openide/awt/ContextAction;Ljava/util/function/Supplier;)Ljava/util/function/BiFunction;
 � ! 
access$100 p(Lorg/openide/awt/ContextAction$Performer;Lorg/openide/util/Lookup$Provider;Ljava/util/List;Z)Ljava/lang/Object;
#$%& b java/lang/Class desiredAssertionStatus
#() F getName
 ;+,- 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;/ java/lang/ref/WeakReference
. �2 #org/openide/util/ContextAwareAction4  javax/swing/event/ChangeListener6 java/lang/Runnable 	Signature Ljava/lang/Class<TT;>; /Lorg/openide/awt/ContextAction$Performer<-TT;>; -Ljava/lang/ref/Reference<Ljava/lang/Object;>; Code LineNumberTable LocalVariableTable this Lorg/openide/awt/ContextAction; actionContext Lorg/openide/util/Lookup; surviveFocusChange LocalVariableTypeTable $Lorg/openide/awt/ContextAction<TT;>; StackMapTableG org/openide/util/Lookup MethodParameters �(Lorg/openide/awt/ContextAction$Performer<-TT;>;Lorg/openide/awt/ContextSelection;Lorg/openide/util/Lookup;Ljava/lang/Class<TT;>;ZLorg/openide/awt/ContextAction$StatefulMonitor;)V #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; (Ljava/awt/event/ActionEvent;)V e Ljava/awt/event/ActionEvent; r stateChanged "(Ljavax/swing/event/ChangeEvent;)V Ljavax/swing/event/ChangeEvent; run listener #Ljava/beans/PropertyChangeListener; first putValue '(Ljava/lang/String;Ljava/lang/Object;)V Ljava/lang/String; o Ljava/lang/Object; getValue &(Ljava/lang/String;)Ljava/lang/Object; 
setEnabled b prev now 
wasEnabledd java/lang/Throwable s property old Ljava/lang/Boolean; current createContextAwareInstance /(Lorg/openide/util/Lookup;)Ljavax/swing/Action; hashCode ()I c obj lambda$fetchEnabledValue$3 G(Ljava/util/List;Lorg/openide/util/Lookup$Provider;)Ljava/lang/Boolean; dele Ljavax/swing/Action; all Ljava/util/List; 
everything "Lorg/openide/util/Lookup$Provider; af Ljava/util/function/Supplier; 3Ljava/util/function/Supplier<Ljavax/swing/Action;>;| java/util/function/Supplier lambda$fetchEnabledValue$2 d(Ljava/util/function/Supplier;Ljava/util/List;Lorg/openide/util/Lookup$Provider;)Ljava/lang/Boolean; all2 everything2 lambda$fetchEnabledValue$1 ((Ljavax/swing/Action;)Ljava/lang/Object; lambda$fetchEnabledValue$0 H(Lorg/openide/util/Lookup$Provider;Ljava/util/List;)Ljavax/swing/Action; 
access$000 ()Ljava/lang/ref/Reference; <clinit> �<T:Ljava/lang/Object;>Ljava/lang/Object;Ljavax/swing/Action;Lorg/openide/util/ContextAwareAction;Ljavax/swing/event/ChangeListener;Ljava/lang/Runnable; 
SourceFile ContextAction.java BootstrapMethods�
����� "java/lang/invoke/LambdaMetafactory metafactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;� 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;�
 �pqq� ()Ljava/lang/Object;�
 ���� ()Ljavax/swing/Action;�
 ����
 �}~ InnerClasses 	Performer StatefulMonitor�  org/openide/util/Lookup$Provider Provider� %java/lang/invoke/MethodHandles$Lookup� java/lang/invoke/MethodHandles Lookup      �135 
  0 1      7   8         7   9  ( )    � �    o \    , -      7   : [ \      � ;  '     P*� +� � Y� �*� *,� *+� *-�  � &*� *� � .� 28� Y*SYS� :�   <   .    R  S  T  V  W  X " Y , Z 2 [ 7 \ O _=   H    P>?     P      P      P@A    P      PB \    P , - C        P>D     P 9    P 8 E    �    � �F# �  <H         @     B   ,  7   I  E F ;   k     /� @Y� B*� C� GK� G*� � MP� G*� � MR� G� T�   <       d=       />?  C       />D  J    K    WL ;   _     *� &+*� *� *� � U�   <   
    j  k=       >?     MN C       >D  H   M   k b ;   �     >� Y� � ]� � cY� e�*� *� *� f<� *� &*� *� *� � i<*� m�   <       n  p  q # s 7 u < v=        O \    >>?   7 O \ C       >>D  E    �   h b ;   R     *� &*� *� *� p  � t�   <       z=       >?  C       >D   PQ ;   R     � x*� ~�   <   
    �  �=       >?     MR C       >D  H   M  J    K   S  ;   E     *� ��   <   
    �  �=       >?  C       >D  J    K   ! � � ;   �     (=*� �� *� �Y*� �� �=*� �+� �� *� ��   <   "    �  � 	 �  �  �  � # � ' �=        (>?     (TU   &V \ C       (>D  E    � H   T  J    K   ! � � ;   �     %*� �� *� �+� �*� �� �� *� �*� ��   <       �  �  �  �  � $ �=       %>?     %TU C       %>D  E    $H   T  J    K    �  ;   �     **� � �*� &*� *� �*� *� *� fW*� **� � �   <       �  �  �  �  � ) �=       *>?  C       *>D  E    )  �  ;   z     %*� &*� *� �*� � �*� *� *� **� � �   <       �  �  �  � $ �=       %>?  C       %>D  E    $ WX ;   Q      �   <       �=        >?      �Y    Z[ C       >D  H   	 �  Z   \] ;   �     Z�+� �� � Y� � ]� � cY� e�*� �� 7�+� �� .*� � ��� � M,� *� � �̹ � M,� ,� C��   <   * 
   � 	 �  � $ � - � < � @ � O � S � X �=      < Z[    Z>?     Z �Y C       Z>D  E    � * � H    �   ^ � ;   G      �   <       �=       >?     _ \ C       >D  H   _     �  ;   i     *� � �*� *� *� *� � �   <       �  �  �  �=       >?  C       >D  E       �  ;   f     *� �*� ՚ �*� ��   <       �  �  �  �  �=       >?  C       >D  E       �  ;   �     *� m<*� �=� *� ڱ   <       �  � 
 �  �  �=        >?    ` \  
 a \ C       >D  E    �   b b ;   A     *� m�   <       �=       >?  C       >D    � b ;   �     *YL�*� �� � +ìM+�,�            <       �  �  �=       >?  C       >D  E    �  @Bc  � � ;  
     +*Y:�*� �:� ñç :��+,-� ޱ                 <            " *=   >   e �    +>?     +fY    +gh    +ih  " 	e � C       +>D  E   ; �  � �    � � �   c�    � � � �  H   f  g  i    � � ;   �     *� m*�� � � �� � �   <      
  =       >?      � \ C       >D  E   % �      ��       �H    �   jk ;   � 	    1� Y*� *� +*� *� &� �*� *� � *� *+� � � ��   <        0=       1>?     1@A C       1>D  E   E � #  F      � �F#� 	  F      � �F# �H   @   lm ;   `     $� Y*� SY*� SY*� SY*� *S� ��   <      =       $>?  C       $>D  J    K    � � ;   �     S+*� �+� � F+� M*� ,� � �� 1*� ,� � �� #*� ,� �� *� *,� *�� � ��   <   * 
      ! # )$ 7% E& P# Q(=       >n?    S>?     So[ C       S>D  E    � G @�  H   o  J    K  pq ;       |*,+�  N*� *� �� **� ,+�� �:*� *��  � � �*� *� *� � "*� &*� *� *� *-�  � t� �*� *+-� � �   <       { 	 |  ~ % � > � N � m �=   4  % rs    |>?     |tu    |vw  	 sxy C       |>D   	 sxz E   	 � >{.}~ ;   i     *� *,+� � �   <       �=   *    >?     xy    u    �w C       >D  
�� ;   ,     *�   <       �=       rs  �� ;   ^     *� +,�� ��   <       {=        >?     vw    tu C       >D  �� ;         � �   <       1 �  ;   R      '�"� � � Y�'�*� .�.Y�0� �   <       1  4 +E    @ 7   ��   ��   * � ���� ���� ���� ����   "  � �  � ��F�	��� 