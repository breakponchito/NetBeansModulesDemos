����   4 L
      &org/openide/text/DataEditorSupport$Env <init> #(Lorg/openide/loaders/DataObject;)V
  	 
   ?org/openide/loaders/XMLDataObject$XMLEditorSupport$XMLEditorEnv getDataObject "()Lorg/openide/loaders/DataObject;
      org/openide/loaders/DataObject getPrimaryFile &()Lorg/openide/filesystems/FileObject;  !org/openide/loaders/XMLDataObject
     getPrimaryEntry -()Lorg/openide/loaders/MultiDataObject$Entry;
      )org/openide/loaders/MultiDataObject$Entry takeLock $()Lorg/openide/filesystems/FileLock;    org/openide/cookies/EditorCookie
  " # $ 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie; & (org/openide/windows/CloneableOpenSupport serialVersionUID J ConstantValue[��[Q&p Code LineNumberTable LocalVariableTable this ALorg/openide/loaders/XMLDataObject$XMLEditorSupport$XMLEditorEnv; obj  Lorg/openide/loaders/DataObject; MethodParameters getFile 
Exceptions 7 java/io/IOException findCloneableOpenSupport ,()Lorg/openide/windows/CloneableOpenSupport; 
SourceFile XMLDataObject.java InnerClasses > "org/openide/text/DataEditorSupport Env A 2org/openide/loaders/XMLDataObject$XMLEditorSupport XMLEditorSupport XMLEditorEnv E #org/openide/loaders/MultiDataObject Entry H org/openide/nodes/Node$Cookie J org/openide/nodes/Node Cookie         ' (  )    *      ,   >     *+� �    -   
   � � .        / 0      1 2  3    1    4   ,   2     *� � �    -      � .        / 0       ,   8     *� � � � �    -      � .        / 0   5     6  8 9  ,   7     *� � !� %�    -      � .        / 0    :    ; <   *   = ?	 @  B 
  @ C 
  D F G I K	