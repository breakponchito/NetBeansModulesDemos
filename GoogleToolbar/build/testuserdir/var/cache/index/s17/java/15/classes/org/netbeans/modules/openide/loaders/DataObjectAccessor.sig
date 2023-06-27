����   4 G
      java/lang/Object <init> ()V  7org/netbeans/modules/openide/loaders/DataObjectAccessor
 
     java/lang/Class desiredAssertionStatus ()Z	     $assertionsDisabled Z  org/openide/loaders/DataObject
 
    getName ()Ljava/lang/String;
 
    getClassLoader ()Ljava/lang/ClassLoader;
 
     forName =(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class; "  java/lang/ClassNotFoundException $ java/lang/AssertionError
 # &  ' (Ljava/lang/Object;)V DEFAULT 9Lorg/netbeans/modules/openide/loaders/DataObjectAccessor; Code LineNumberTable LocalVariableTable this 
copyRename �(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/DataFolder;Ljava/lang/String;Ljava/lang/String;)Lorg/openide/loaders/DataObject; 
Exceptions 2 java/io/IOException MethodParameters dob f name ext getCookieSet D(Lorg/openide/loaders/MultiDataObject;)Lorg/openide/nodes/CookieSet; isInstancesThread precreateInstances '(Lorg/openide/loaders/FolderInstance;)V fi getOrigName <clinit> ex "Ljava/lang/ClassNotFoundException; c Ljava/lang/Class; StackMapTable 
SourceFile DataObjectAccessor.java!      	 ( )            *   /     *� �    +       " ,        - )   . /  0     1 3    4   5   6   7   8 9  3    4   :    ; <  3    =   >     ?   *   �     4� 	� � � K*� *� � W� L� � � #Y+� %��     # !  +       "  )  +   . # , $ - 3 0 ,     $  @ A     B C   D    @�   
  !�   E    F