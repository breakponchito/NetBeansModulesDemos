����   4 Q
      &org/openide/text/DataEditorSupport$Env <init> #(Lorg/openide/loaders/DataObject;)V	  	 
   )org/openide/loaders/DefaultES$Environment entry +Lorg/openide/loaders/MultiDataObject$Entry;
      )org/openide/loaders/MultiDataObject$Entry getFile &()Lorg/openide/filesystems/FileObject;
     takeLock $()Lorg/openide/filesystems/FileLock;
     getDataObject "()Lorg/openide/loaders/DataObject;  %org/openide/loaders/DefaultDataObject  org/openide/loaders/DefaultES
    ! " 	getCookie 3(Ljava/lang/Class;Z)Lorg/openide/nodes/Node$Cookie;
 $ % & ! ' org/openide/loaders/DataObject 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;
  ) * + findCloneableOpenSupport ,()Lorg/openide/windows/CloneableOpenSupport; serialVersionUID J ConstantValueK�b����� N(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/MultiDataObject$Entry;)V Code LineNumberTable LocalVariableTable this +Lorg/openide/loaders/DefaultES$Environment; obj  Lorg/openide/loaders/DataObject; MethodParameters 
Exceptions < java/io/IOException ret Lorg/openide/loaders/DefaultES; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile DefaultES.java InnerClasses F "org/openide/text/DataEditorSupport Env Environment J #org/openide/loaders/MultiDataObject Entry M org/openide/nodes/Node$Cookie O org/openide/nodes/Node Cookie         , -  .    /         1  2   Q     *+� *,� �    3       �  � 
 � 4         5 6      7 8        9   	 7          2   2     *� � �    3       � 4        5 6       2   2     *� � �    3       � 4        5 6   :     ;  * +  2   �     1*� L+� � +� � � M� *� � #� M*� (W,�    3       �  �  �  � * � / � 4   *    = >    1 5 6    , 7 8  *  = >  ?    �  $�   @     A    B    C D   "   E G	   H 
  I K L N P	