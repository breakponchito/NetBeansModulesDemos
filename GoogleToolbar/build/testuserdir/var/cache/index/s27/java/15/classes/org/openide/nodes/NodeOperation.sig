����   4 W
      java/lang/Object <init> ()V
  	 
   org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;  org/openide/nodes/NodeOperation
     lookup %(Ljava/lang/Class;)Ljava/lang/Object;  java/lang/IllegalStateException  iTo use NodeOperation you should have its implementation around. For example one from openide-explorer.jar
     (Ljava/lang/String;)V  'java/lang/UnsupportedOperationException
  
      select �(Ljava/lang/String;Ljava/lang/String;Lorg/openide/nodes/Node;Lorg/openide/nodes/NodeAcceptor;Ljava/awt/Component;)[Lorg/openide/nodes/Node; " !org/openide/nodes/NodeOperation$1
 ! $  % $(Lorg/openide/nodes/NodeOperation;)V
  '  ( w(Ljava/lang/String;Ljava/lang/String;Lorg/openide/nodes/Node;Lorg/openide/nodes/NodeAcceptor;)[Lorg/openide/nodes/Node; Code LineNumberTable LocalVariableTable this !Lorg/openide/nodes/NodeOperation; #()Lorg/openide/nodes/NodeOperation; no StackMapTable 	customize (Lorg/openide/nodes/Node;)Z MethodParameters n explore (Lorg/openide/nodes/Node;)V showProperties ([Lorg/openide/nodes/Node;)V showCustomEditorDialog 7(Lorg/openide/nodes/Node$Property;[Ljava/lang/Object;)V property !Lorg/openide/nodes/Node$Property; beans [Ljava/lang/Object; LocalVariableTypeTable $Lorg/openide/nodes/Node$Property<*>; 	Signature :(Lorg/openide/nodes/Node$Property<*>;[Ljava/lang/Object;)V 
Exceptions E $org/openide/util/UserCancelException title 	rootTitle root acceptor top Ljava/lang/String; Lorg/openide/nodes/Node;  Lorg/openide/nodes/NodeAcceptor; V(Ljava/lang/String;Ljava/lang/String;Lorg/openide/nodes/Node;)Lorg/openide/nodes/Node; 
SourceFile NodeOperation.java InnerClasses S org/openide/nodes/Node$Property U org/openide/nodes/Node Property!       
     )   3     *� �    *   
    $  % +        , -   	  .  )   `     � � � K*� � Y� �*�    *       +  -  .  3 +       / -   0    �   1 2  3    4   5 6  3    4   7 6  3    4   7 8  3    4   � 9 :  )   X     � Y� �    *       ` +         , -      ; <     = >  ?        ; @  3   	 ;   =   A    B     C     D 3    F   G   H   I   J     (  )   ]     *+,-� �    *       � +   4     , -      F K     G K     H L     I M  C     D 3    F   G   H   I     N  )   Z     *+,-� !Y*� #� &2�    *       � +   *     , -      F K     G K     H L  C     D 3    F   G   H    O    P Q     !       R T V	