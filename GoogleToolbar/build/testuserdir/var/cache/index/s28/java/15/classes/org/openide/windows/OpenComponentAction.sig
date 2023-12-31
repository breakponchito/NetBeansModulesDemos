����   4 w
      java/lang/Object <init> ()V	  	 
   'org/openide/windows/OpenComponentAction $assertionsDisabled Z  java/lang/AssertionError
  	     	component "Lorg/openide/windows/TopComponent;	     map Ljava/util/Map;
      java/awt/EventQueue isDispatchThread ()Z  preferredID ! " # $ % java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; ' java/lang/String
 ) * + , - !org/openide/windows/WindowManager 
getDefault %()Lorg/openide/windows/WindowManager;
 ) / 0 1 findTopComponent 6(Ljava/lang/String;)Lorg/openide/windows/TopComponent;  4  org/openide/windows/TopComponent
  6 7 8 getTopComponent $()Lorg/openide/windows/TopComponent; : java/lang/IllegalStateException < java/lang/StringBuilder
 ;  ? *Cannot find TopComponent with preferredID 
 ; A B C append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 ; E B F -(Ljava/lang/Object;)Ljava/lang/StringBuilder; H , see IDE log for more details.
 ; J K L toString ()Ljava/lang/String;
 9 N  O (Ljava/lang/String;)V
 3 Q R  open
 3 T U  requestActive
 W X Y Z  java/lang/Class desiredAssertionStatus \ java/awt/event/ActionListener 	Signature Ljava/util/Map<**>; %(Lorg/openide/windows/TopComponent;)V Code LineNumberTable LocalVariableTable this )Lorg/openide/windows/OpenComponentAction; StackMapTable MethodParameters (Ljava/util/Map;)V LocalVariableTypeTable (Ljava/util/Map<**>;)V c id Ljava/lang/Object; actionPerformed (Ljava/awt/event/ActionEvent;)V e Ljava/awt/event/ActionEvent; win #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> 
SourceFile OpenComponentAction.java 0    [           ]    ^         _  `   z     !*� � � +� � Y� �*+� *� �    a       #  $  %  &   ' b       ! c d     !    e    �    3   f          g  `   X     
*� *+� �    a       )  * 	 + b       
 c d     
    h       
  ^  f       ]    i  7 8  `   �     ^� � � � � Y� �*� � *� �L*� �   M,� &� � (,� &� .L+� *� 2�   � 3L,� *+� +�    a   2    .  /  0   2 " 3 . 4 5 5 @ 7 D 8 S : W ; \ = b        ^ c d   " < j   . 0 k l  e    �  3   m n  `   �     =*� 5M,� -� 9Y� ;Y� =>� @*� �   � DG� @� I� M�,� P,� S�    a       B  C 
 D   E 4 G 8 H < I b        = c d     = o p   8 q   e    � 4 3 f    o   r     s    t   `   4      � V� � � �    a        e    @  u    v