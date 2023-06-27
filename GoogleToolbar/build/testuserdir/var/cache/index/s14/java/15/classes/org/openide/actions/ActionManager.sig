����   4 W
      java/lang/Object <init> ()V	  	 
   !org/openide/actions/ActionManager supp "Ljava/beans/PropertyChangeSupport;
      org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;
     lookup %(Ljava/lang/Class;)Ljava/lang/Object;  )org/openide/actions/ActionManager$Trivial
     ((Lorg/openide/actions/ActionManager$1;)V      ! javax/swing/Action actionPerformed (Ljava/awt/event/ActionEvent;)V #  java/beans/PropertyChangeSupport
 " %  & (Ljava/lang/Object;)V
 " ( ) * addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
 " , - * removePropertyChangeListener
 " / 0 1 firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V PROP_CONTEXT_ACTIONS Ljava/lang/String; ConstantValue 6 contextActions Code LineNumberTable LocalVariableTable this #Lorg/openide/actions/ActionManager; %()Lorg/openide/actions/ActionManager; am StackMapTable getContextActions *()[Lorg/openide/util/actions/SystemAction; invokeAction 3(Ljavax/swing/Action;Ljava/awt/event/ActionEvent;)V a Ljavax/swing/Action; e Ljava/awt/event/ActionEvent; MethodParameters 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; listener #Ljava/beans/PropertyChangeListener; name o Ljava/lang/Object; n 
SourceFile ActionManager.java InnerClasses Trivial V #org/openide/actions/ActionManager$1!       2 3  4    5           7   8     
*� *� �    8   
    $  + 9       
 : ;   	  <  7   _     � � � K*� � Y� K*�    8       3  5  6  9 9       = ;   >    �   ? @    A B  7   J     +,�  �    8   
    K  L 9         : ;      C D     E F  G   	 C   E   H     I     J    ) *  7   e     *� � *� "Y*� $� *� +� '�    8       R  S  V  W 9        : ;      K L  >     G    K    - *  7   U     *� � *� +� +�    8       ]  ^  ` 9        : ;      K L  >     G    K    0 1  7   k     *� � *� +,-� .�    8       h  i  k 9   *     : ;      M 3     N O     P O  >     G    M   N   P    Q    R S       T  U    