����   4 Q
       org/openide/text/CloneableEditor <init> ()V  org/openide/text/EditorSupport
 
     org/openide/loaders/DataObject 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;
      %org/openide/text/EditorSupport$Editor C(Lorg/openide/loaders/DataObject;Lorg/openide/text/EditorSupport;)V
     
access$000 F(Lorg/openide/text/EditorSupport;)Lorg/openide/text/EditorSupport$Del;
     ,(Lorg/openide/text/CloneableEditorSupport;)V	     obj  Lorg/openide/loaders/DataObject;
    ! " readExternal (Ljava/io/ObjectInput;)V
  $ % & cloneableEditorSupport +()Lorg/openide/text/CloneableEditorSupport; ( "org/openide/text/EditorSupport$Del
 ' * + , getDataObjectHack2 "()Lorg/openide/loaders/DataObject; serialVersionUID J ConstantValue�l��j�5 Code LineNumberTable LocalVariableTable this 'Lorg/openide/text/EditorSupport$Editor; #(Lorg/openide/loaders/DataObject;)V MethodParameters support  Lorg/openide/text/EditorSupport; in Ljava/io/ObjectInput; ces Ljava/lang/Object; StackMapTable A java/lang/Object 
Exceptions D java/io/IOException F  java/lang/ClassNotFoundException 
SourceFile EditorSupport.java InnerClasses K org/openide/nodes/Node$Cookie M org/openide/nodes/Node Cookie Editor Del !            - .  /    0      2   3     *� �    3   
   � � 4        5 6     7  2   G     *++� 	� � �    3   
   � � 4        5 6         8           2   T     *,� � *+� �    3      � � � 4         5 6            9 :  8   	    9    ! "  2   y     *+� *� #M,� '� *,� '� )� �    3      � � 
� � � 4         5 6      ; <  
  = >  ?    �  @ B     C E 8    ;    G    H I     J L N	   O 	 '  P 