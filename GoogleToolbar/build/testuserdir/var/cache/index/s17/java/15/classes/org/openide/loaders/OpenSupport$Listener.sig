����   4 K
      -org/openide/windows/CloneableTopComponent$Ref <init> ()V	  	 
   (org/openide/loaders/OpenSupport$Listener entry +Lorg/openide/loaders/MultiDataObject$Entry;
      )org/openide/loaders/MultiDataObject$Entry getDataObject '()Lorg/openide/loaders/MultiDataObject;  org/openide/cookies/OpenCookie
      org/openide/loaders/DataObject 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;  org/openide/loaders/OpenSupport  org/openide/cookies/EditCookie    org/openide/cookies/EditorCookie
  " # $ 
allEditors 1()Lorg/openide/windows/CloneableTopComponent$Ref; serialVersionUID J ConstantValue�%�h- Code LineNumberTable LocalVariableTable this *Lorg/openide/loaders/OpenSupport$Listener; readResolve ()Ljava/lang/Object; ec "Lorg/openide/cookies/EditorCookie; edc  Lorg/openide/cookies/EditCookie; obj  Lorg/openide/loaders/DataObject; os !Lorg/openide/loaders/OpenSupport; oc  Lorg/openide/cookies/OpenCookie; StackMapTable 
SourceFile OpenSupport.java InnerClasses @ )org/openide/windows/CloneableTopComponent Ref Listener D #org/openide/loaders/MultiDataObject Entry G org/openide/nodes/Node$Cookie I org/openide/nodes/Node Cookie 0       % &  '    (            *   /     *� �    +      � ,        - .    / 0  *       c*� � LM+� � N-� � -� M� 8+� � :� � � M� +� � :� � 	� M,� *�,� !�    +   :   � � 
� � � #� .� 6� ?� J� R� X� \� ^� ,   >  J  1 2  . * 3 4    c - .    [ 5 6  
 Y 7 8   O 9 :  ;    � #   �  �   <    = >   "   ? A 	   B   C E F H J	