����   4 <	      #org/openide/awt/Actions$Bridge$VisL this$0  Lorg/openide/awt/Actions$Bridge;
  	 
   java/lang/Object <init> ()V  ancestor
      java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String;
      java/lang/String equals (Ljava/lang/Object;)Z
     getNewValue ()Ljava/lang/Object;
   ! " #  org/openide/awt/Actions$Bridge 	addNotify
   % &  removeNotify ( !java/beans/PropertyChangeListener #(Lorg/openide/awt/Actions$Bridge;)V Code LineNumberTable LocalVariableTable this %Lorg/openide/awt/Actions$Bridge$VisL; MethodParameters propertyChange #(Ljava/beans/PropertyChangeEvent;)V ev  Ljava/beans/PropertyChangeEvent; StackMapTable 
SourceFile Actions.java InnerClasses 9 org/openide/awt/Actions Bridge VisL      '          )  *   8     
*+� *� �    +   
   + 	, ,       
 - .   /      0 1  *   s     %+� � � +� � *� � � 
*� � $�    +      / 1 2 4 $7 ,       % - .     % 2 3  4     /    2   5    6 7       8 :
    ; 