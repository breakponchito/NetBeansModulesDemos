����   4 8	      +org/openide/windows/TopComponent$NodeName$1 this$0 +Lorg/openide/windows/TopComponent$NodeName;	   	 
 val$n Lorg/openide/nodes/Node;
      java/lang/Object <init> ()V
      )org/openide/windows/TopComponent$NodeName 
access$300 O(Lorg/openide/windows/TopComponent$NodeName;)Lorg/openide/windows/TopComponent;
      org/openide/nodes/Node getDisplayName ()Ljava/lang/String;
     ! "  org/openide/windows/TopComponent setName (Ljava/lang/String;)V $ java/lang/Runnable F(Lorg/openide/windows/TopComponent$NodeName;Lorg/openide/nodes/Node;)V Code LineNumberTable LocalVariableTable this -Lorg/openide/windows/TopComponent$NodeName$1; MethodParameters 	Signature run #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile TopComponent.java EnclosingMethod 4 5 propertyChange #(Ljava/beans/PropertyChangeEvent;)V InnerClasses NodeName      #  	 
           %  &   C     *+� *,� *� �    '      � (        ) *         +   	 � 	 ,      -   &   @     *� � *� � � �    '   
   � � (        ) *   .     /    0    1 2     3 6       7 	       