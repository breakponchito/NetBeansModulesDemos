����   4 5	      org/openide/nodes/BeanNode$1 this$0 Lorg/openide/nodes/BeanNode;
  	 
   java/lang/Object <init> ()V
      java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String;
     getOldValue ()Ljava/lang/Object;
     getNewValue
      org/openide/nodes/BeanNode firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V ! !java/beans/PropertyChangeListener (Lorg/openide/nodes/BeanNode;)V Code LineNumberTable LocalVariableTable this Lorg/openide/nodes/BeanNode$1; LocalVariableTypeTable MethodParameters propertyChange #(Ljava/beans/PropertyChangeEvent;)V e  Ljava/beans/PropertyChangeEvent; 
SourceFile BeanNode.java EnclosingMethod 2 3 getCustomizer ()Ljava/awt/Component; InnerClasses                 "  #   P     
*+� *� �    $      � %       
 & '     
    (       
 & '   )    �  * +  #   ^     *� +� +� +� � �    $   
   � � %        & '      , -  (        & '   )    ,    .    / 0     1 4   
        