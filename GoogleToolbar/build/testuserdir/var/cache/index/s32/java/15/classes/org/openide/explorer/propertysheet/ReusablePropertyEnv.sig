����   4 h
      .org/openide/explorer/propertysheet/PropertyEnv <init> ()V	  	 
   6org/openide/explorer/propertysheet/ReusablePropertyEnv NODE Ljava/lang/Object;  8org/openide/explorer/propertysheet/ReusablePropertyModel
     ;(Lorg/openide/explorer/propertysheet/ReusablePropertyEnv;)V	     mdl :Lorg/openide/explorer/propertysheet/ReusablePropertyModel;
     clear  java/lang/NullPointerException
  	     DEBUG Z
  ! "  checkThread
  $ % & getNode ()Ljava/lang/Object; ( ,org/openide/explorer/propertysheet/ProxyNode
 ' * + , getOriginalNodes ()[Lorg/openide/nodes/Node; . [Ljava/lang/Object; 0 java/lang/Object
  2 3 4 getProperty #()Lorg/openide/nodes/Node$Property;
 6 7 8 9 : org/openide/nodes/Node$Property canWrite ()Z
  < = > setEditable (Z)V	  @ A  STATE_NEEDS_VALIDATION
  C D E setState (Ljava/lang/Object;)V Code LineNumberTable LocalVariableTable this 8Lorg/openide/explorer/propertysheet/ReusablePropertyEnv; getReusablePropertyModel <()Lorg/openide/explorer/propertysheet/ReusablePropertyModel; StackMapTable setReusablePropertyModel =(Lorg/openide/explorer/propertysheet/ReusablePropertyModel;)V MethodParameters getBeans ()[Ljava/lang/Object; getFeatureDescriptor  ()Ljava/beans/FeatureDescriptor; addVetoableChangeListener &(Ljava/beans/VetoableChangeListener;)V l #Ljava/beans/VetoableChangeListener; addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V #Ljava/beans/PropertyChangeListener; removeVetoableChangeListener removePropertyChangeListener 
isEditable result reset setNode 
SourceFile ReusablePropertyEnv.java InnerClasses f org/openide/nodes/Node Property 0                     F   L     *� *� *� Y*� � �    G       0  , 	 1  2 H        I J    K L  F   /     *� �    G       5 H        I J        F   S     *� *� � 
*� � �    G       9  ;  <  > H        I J   M       N O  F   [     +� � Y� �*+� �    G       A  B  D  E H        I J         M     P        Q R  F   �     <� � �  *� #� '� *� #� '� )�*� #� -� *� #� -�� /Y*� #S�    G       J  K 	 N  O  P ( Q 0 S H       < I J   M    	  S T  F   2     *� � 1�    G       X H        I J    U V  F   5      �    G       \ H        I J      W X  P    W    Y Z  F   5      �    G       _ H        I J      W [  P    W    \ V  F   5      �    G       b H        I J      W X  P    W    ] Z  F   5      �    G       e H        I J      W [  P    W    ^ :  F   s     *� � 1� *� � 1� 5<� <�    G       j 
 k  m  p H        _      I J     _   M    �   `   F   ?     *� ;*� ?� B�    G       t  u  v H        I J    % &  F   /     *� �    G       y H        I J    a E  F   >     *+� �    G   
    }  ~ H        I J         P        b    c d   
  6 e g	