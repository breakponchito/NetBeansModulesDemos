����   4 H	      /org/openide/windows/CloneableTopComponent$Ref$1 this$0 /Lorg/openide/windows/CloneableTopComponent$Ref;
  	 
   java/lang/Object <init> ()V
      java/beans/PropertyChangeEvent getNewValue ()Ljava/lang/Object;
     getOldValue
      -org/openide/windows/CloneableTopComponent$Ref 
access$400
     
access$500 @(Lorg/openide/windows/CloneableTopComponent$Ref;)Ljava/util/Set;   ! " # $ java/util/Set contains (Ljava/lang/Object;)Z & )org/openide/windows/CloneableTopComponent
 % ( ) * 
access$600 .(Lorg/openide/windows/CloneableTopComponent;)V
 % , - * 
access$700 / !java/beans/PropertyChangeListener 2(Lorg/openide/windows/CloneableTopComponent$Ref;)V Code LineNumberTable LocalVariableTable this 1Lorg/openide/windows/CloneableTopComponent$Ref$1; MethodParameters propertyChange #(Ljava/beans/PropertyChangeEvent;)V evt  Ljava/beans/PropertyChangeEvent; 	activated Ljava/lang/Object; deactivated activatedInSet Z StackMapTable B java/lang/Throwable 
SourceFile CloneableTopComponent.java EnclosingMethod InnerClasses Ref      .          0  1   >     
*+� *� �    2       3       
 4 5     
    6    �  7 8  1       ]+� M+� N6� Y:�*� � ,�  � *� � -�  � � 6ç :��� ,� %� '-� %� +�   > A   A F A    2   .     
   ( ; I  N! U" \% 3   4    ] 4 5     ] 9 :   X ; <  
 S = <   P > ?  @   # � 8        @G A�  6    9    C    D E     	 F      % G 	       