����   4 X  #org/openide/loaders/OpenSupport$Env
      )org/openide/loaders/MultiDataObject$Entry getDataObject '()Lorg/openide/loaders/MultiDataObject;
  
   <init> #(Lorg/openide/loaders/DataObject;)V
      org/openide/loaders/OpenSupport S(Lorg/openide/loaders/MultiDataObject$Entry;Lorg/openide/loaders/OpenSupport$Env;)V
      (org/openide/windows/CloneableOpenSupport 1(Lorg/openide/windows/CloneableOpenSupport$Env;)V	     entry +Lorg/openide/loaders/MultiDataObject$Entry;  CTL_ObjectOpen
     ! " org/openide/loaders/DataObject getName ()Ljava/lang/String;
  $ % & getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 ( ) * + " "org/openide/filesystems/FileObject toString
 - . / 0 1 org/openide/util/NbBundle 
getMessage [(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;	  3 4 5 
allEditors /Lorg/openide/windows/CloneableTopComponent$Ref; .(Lorg/openide/loaders/MultiDataObject$Entry;)V Code LineNumberTable LocalVariableTable this !Lorg/openide/loaders/OpenSupport; MethodParameters env %Lorg/openide/loaders/OpenSupport$Env; messageOpening obj  Lorg/openide/loaders/DataObject; messageOpened 1()Lorg/openide/windows/CloneableTopComponent$Ref; 
SourceFile OpenSupport.java InnerClasses Env I #org/openide/loaders/MultiDataObject Entry L ,org/openide/windows/CloneableOpenSupport$Env N -org/openide/windows/CloneableTopComponent$Ref P )org/openide/windows/CloneableTopComponent Ref S (org/openide/loaders/OpenSupport$Listener Listener V 6org/openide/loaders/OpenSupport$FileSystemNameListener FileSystemNameListener!              6  7   I     *+� Y+� � 	� �    8   
    ?  @ 9        : ;         <           7   Q     *,� *+� �    8       I  J 
 K 9         : ;            = >  <   	    =    ? "  7   _     *� � L+� +� #� '� ,�    8       R  T  U  V  T 9        : ;     @ A   B "  7   ,     �    8       _ 9        : ;    4 C  7   /     *� 2�    8       f 9        : ;    D    E F   2    G 	  H J K  G	 M O Q 	 R  T  U  W 