����   4	      2org/openide/util/actions/NodeAction$DelegateAction support "Ljava/beans/PropertyChangeSupport;	   	 
 enabled Z	     delegate %Lorg/openide/util/actions/NodeAction;
      java/lang/Object <init> ()V   java/beans/PropertyChangeSupport
     (Ljava/lang/Object;)V  org/openide/nodes/Node
      ! org/openide/util/Lookup lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;	  # $ % result  Lorg/openide/util/Lookup$Result; ' org/openide/util/LookupListener
 ) * + , - org/openide/util/WeakListeners create W(Ljava/lang/Class;Ljava/util/EventListener;Ljava/lang/Object;)Ljava/util/EventListener;
 / 0 1 2 3 org/openide/util/Lookup$Result addLookupListener $(Lorg/openide/util/LookupListener;)V
  5 6 7 resultChanged !(Lorg/openide/util/LookupEvent;)V 9 java/lang/StringBuilder
 8 
  < = > toString ()Ljava/lang/String;
 8 @ A B append -(Ljava/lang/String;)Ljava/lang/StringBuilder; D 
[delegate=
 8 F A G -(Ljava/lang/Object;)Ljava/lang/StringBuilder; I ]
 8 <
 / L M N allInstances ()Ljava/util/Collection;	  P Q R EMPTY_NODE_ARRAY [Lorg/openide/nodes/Node; T U V W X java/util/Collection toArray (([Ljava/lang/Object;)[Ljava/lang/Object; R
 [ \ ] ^ _ #org/openide/util/actions/NodeAction amIasynchronous ()Z a 4org/openide/util/actions/NodeAction$DelegateAction$1
 ` c  d 7(Lorg/openide/util/actions/NodeAction$DelegateAction;)V
 f g h i j &org/openide/util/actions/ActionInvoker invokeAction H(Ljavax/swing/Action;Ljava/awt/event/ActionEvent;ZLjava/lang/Runnable;)V
  l m n addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
  p q n removePropertyChangeListener
 [ s t u getValue &(Ljava/lang/String;)Ljava/lang/Object;
  w x y nodes ()[Lorg/openide/nodes/Node;
 [ { | } enable ([Lorg/openide/nodes/Node;)Z	  � � � � org/openide/util/Mutex EVENT Lorg/openide/util/Mutex; � 4org/openide/util/actions/NodeAction$DelegateAction$2
 � �  � 8(Lorg/openide/util/actions/NodeAction$DelegateAction;Z)V
  � � � 
readAccess (Ljava/lang/Runnable;)V � getMenuPresenter
  � � � isMethodOverridden :(Lorg/openide/util/actions/NodeAction;Ljava/lang/String;)Z
 [ � � � ()Ljavax/swing/JMenuItem; �  org/openide/awt/Actions$MenuItem
 � �  � (Ljavax/swing/Action;Z)V � getPopupPresenter
 [ � � � � getToolbarPresenter
 [ � � � ()Ljava/awt/Component; � %org/openide/awt/Actions$ToolbarButton
 � �  � (Ljavax/swing/Action;)V
  � � � getClass ()Ljava/lang/Class; � java/lang/Class
 � � � � 	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
 � � � � � java/lang/reflect/Method getDeclaringClass � -org/openide/util/actions/CallableSystemAction � java/lang/NoSuchMethodException
 � � �  printStackTrace � java/lang/IllegalStateException � Error searching for method  �  in 
 � �  � (Ljava/lang/String;)V � javax/swing/Action � 'org/openide/util/actions/Presenter$Menu � (org/openide/util/actions/Presenter$Popup � *org/openide/util/actions/Presenter$Toolbar 	Signature :Lorg/openide/util/Lookup$Result<Lorg/openide/nodes/Node;>; A(Lorg/openide/util/actions/NodeAction;Lorg/openide/util/Lookup;)V Code LineNumberTable LocalVariableTable this 4Lorg/openide/util/actions/NodeAction$DelegateAction; a actionContext Lorg/openide/util/Lookup; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; StackMapTable actionPerformed (Ljava/awt/event/ActionEvent;)V e Ljava/awt/event/ActionEvent; listener #Ljava/beans/PropertyChangeListener; putValue '(Ljava/lang/String;Ljava/lang/Object;)V key Ljava/lang/String; o Ljava/lang/Object; 	isEnabled 
setEnabled (Z)V b ev Lorg/openide/util/LookupEvent; old m Ljava/lang/reflect/Method; ex !Ljava/lang/NoSuchMethodException; d name � java/lang/String 
access$100 [(Lorg/openide/util/actions/NodeAction$DelegateAction;)Lorg/openide/util/actions/NodeAction; x0 
access$200 7(Lorg/openide/util/actions/NodeAction$DelegateAction;)Z 
access$300 X(Lorg/openide/util/actions/NodeAction$DelegateAction;)Ljava/beans/PropertyChangeSupport; <clinit> 
SourceFile NodeAction.java InnerClasses DelegateAction Result org/openide/awt/Actions MenuItem ToolbarButton "org/openide/util/actions/Presenter Menu Popup Toolbar      � & � � �   Q R         $ %  �    �  	 
           �  �   �     >*� *� *� Y*� � *+� *,� � "*� "&**� "� (� &� .*� 4�    �   "     	   $ 8 = �        > � �     > �     > � �  �   	 �   �    = >  �   M     #� 8Y� :*� ;� ?C� ?*� � EH� ?� J�    �       �       # � �   �     �   1 x y  �   Y     *� "� *� "� K� O� S � Y�� O�    �      # $ & �        � �   �      � �  �   P     *� +*� � Z� `Y*� b� e�    �   
   . 4 �        � �      � �  �    �   �     �    m n  �   A     	*� +� k�    �   
   7 8 �       	 � �     	 � �  �    �    q n  �   A     	*� +� o�    �   
   ; < �       	 � �     	 � �  �    �    � �  �   ?      �    �      ? �         � �      � �     � �  �   	 �   �    t u  �   =     	*� +� r�    �      B �       	 � �     	 � �  �    �    � _  �   /     *� �    �      F �        � �    � �  �   5      �    �      J �        � �      � 
  �    �    6 7  �   n     $*� =**� *� v� z� � ~� �Y*� �� ��    �      M N O #V �        $ � �     $ � �    � 
  �    �    � �  �   Z     **� �� �� *� � ��� �Y*� ��    �      Y [ ] �        � �   �      � �  �   Z     **� �� �� *� � ��� �Y*� ��    �      b d f �        � �   �      � �  �   Y     **� �� �� *� � ��� �Y*� ��    �      k m o �        � �   �      � �  �   �     E+� �,� �� �N-� ��� � �N-� �� �Y� 8Y� :�� ?,� ?ö ?+� E� J� ſ      �  �      u w x y !z �   4    � �   ( � �    E � �     E �     E � �  �    �  �@�     [ �  � �   	 �   �   � �  �   /     *� �    �       �        � �   � �  �   /     *� �    �       �        � �   �   �   /     *� �    �       �        � �      �          � � O�    �             J 	  [  / 	 `       �       �	 	 �
 	 �	 �	 �	