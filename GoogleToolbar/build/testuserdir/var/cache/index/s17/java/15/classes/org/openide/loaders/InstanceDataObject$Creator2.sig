����   4 T	      /org/openide/loaders/InstanceDataObject$Creator2 newFile (Lorg/openide/loaders/InstanceDataObject;
  	 
   java/lang/Object <init> ()V	     df  Lorg/openide/loaders/DataFolder;	     filename Ljava/lang/String;	     obj Ljava/lang/Object;	     me 1Lorg/openide/loaders/InstanceDataObject$Creator2;
     ! " !org/openide/filesystems/FileEvent 	firedFrom 4(Lorg/openide/filesystems/FileSystem$AtomicAction;)Z
 $ % & ' ( &org/openide/loaders/InstanceDataObject 
access$500 �(Lorg/openide/loaders/DataFolder;Ljava/lang/String;Ljava/lang/Object;Lorg/openide/modules/ModuleInfo;)Lorg/openide/loaders/InstanceDataObject;
  * + , getClass ()Ljava/lang/Class;
  . / 0 equals (Ljava/lang/Object;)Z
  2 3 4 hashCode ()I
  6  7 G(Lorg/openide/loaders/DataFolder;Ljava/lang/String;Ljava/lang/Object;)V 9 /org/openide/filesystems/FileSystem$AtomicAction Code LineNumberTable LocalVariableTable this MethodParameters isFiredFromMe &(Lorg/openide/filesystems/FileEvent;)Z fe #Lorg/openide/filesystems/FileEvent; run 
Exceptions F java/io/IOException #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
access$400 [(Lorg/openide/loaders/InstanceDataObject$Creator2;)Lorg/openide/loaders/InstanceDataObject; x0 <clinit> 
SourceFile InstanceDataObject.java InnerClasses Creator2 R "org/openide/filesystems/FileSystem AtomicAction      8                              7  :   l     *� *+� *,� *-� �    ;      � � 	� � � <   *     =                      >              ? @  :   2     *� � �    ;      � <        A B   >    A    C   :   C     **� *� *� � #� �    ;   
   � � <        =    D     E G     H    / 0  :   @     *� )+� )� -�    ;      � <        =          >       G     H    3 4  :   2     *� )� 1�    ;      � <        =    G     H   I J  :   /     *� �    ;      � <        K     L   :   &      � Y� 5� �    ;      �  M    N O      $ P 
 8 Q S	