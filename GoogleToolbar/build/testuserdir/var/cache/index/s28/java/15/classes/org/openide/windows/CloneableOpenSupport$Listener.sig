����   4 }
      -org/openide/windows/CloneableTopComponent$Ref <init> ()V	  	 
   1org/openide/windows/CloneableOpenSupport$Listener env .Lorg/openide/windows/CloneableOpenSupport$Env;	     refCOS *Lorg/openide/windows/CloneableOpenSupport;      ,org/openide/windows/CloneableOpenSupport$Env findCloneableOpenSupport ,()Lorg/openide/windows/CloneableOpenSupport;  valid
      java/beans/PropertyChangeEvent getPropertyName ()Ljava/lang/String;
   ! " # $ java/lang/String equals (Ljava/lang/Object;)Z	 & ' ( ) * java/lang/Boolean FALSE Ljava/lang/Boolean;
  , - . getOldValue ()Ljava/lang/Object;
 & !	 1 2 3 4 5 org/openide/util/Mutex EVENT Lorg/openide/util/Mutex;
 1 7 8 9 
readAccess (Ljava/lang/Runnable;)V
  ; <  support  > ?  unmarkModified
 A B C D E (org/openide/windows/CloneableOpenSupport close (Z)Z  G H I 
isModified ()Z
 A K L I canClose N  java/beans/PropertyVetoException P  
 M R  S 5(Ljava/lang/String;Ljava/beans/PropertyChangeEvent;)V	 A U V W 
allEditors /Lorg/openide/windows/CloneableTopComponent$Ref; Y !java/beans/PropertyChangeListener [ !java/beans/VetoableChangeListener ] java/lang/Runnable serialVersionUID J ConstantValue�%�h- [(Lorg/openide/windows/CloneableOpenSupport$Env;Lorg/openide/windows/CloneableOpenSupport;)V Code LineNumberTable LocalVariableTable this 3Lorg/openide/windows/CloneableOpenSupport$Listener; cos MethodParameters propertyChange #(Ljava/beans/PropertyChangeEvent;)V ev  Ljava/beans/PropertyChangeEvent; StackMapTable run os vetoableChange 
Exceptions readResolve 
SourceFile CloneableOpenSupport.java InnerClasses y )org/openide/windows/CloneableTopComponent Ref Listener Env 0    X Z \   ^ _  `    a      �        c  d   Y     *� *+� *,� �    e      E F 	G H f         g h            i   j   	    i    <   d   4     
*� �  �    e      N f       
 g h    k l  d   p     "+� � � � %+� +� /� �� 0*� 6�    e      R T U X !Z f       " g h     " m n  o     j    m    p   d   k     *� :L+� *� � = +� @W�    e      ` b 	e g i f        g h     q   o    �  A  r l  d   �     B+� � � 8� %+� +� /� �*� � F � *� :M,� ,� J� � MYO+� Q��    e   "   r t u x &z +| 6~ A� f      +  q     B g h     B m n  o    & s     M j    m    t .  d   ^     *� :L+� *�+� T�    e      � � 	� � f        g h     q   o    �  A  u    v w      x z 	  A {   A |	