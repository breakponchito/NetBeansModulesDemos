����   4 W	      >org/openide/loaders/InstanceDataObject$UnrecognizedSettingNode this$0 (Lorg/openide/loaders/InstanceDataObject;	  	 
   org/openide/nodes/Children LEAF Lorg/openide/nodes/Children;
      org/openide/nodes/AbstractNode <init> (Lorg/openide/nodes/Children;)V  &org/openide/loaders/InstanceDataObject  LBL_BrokenSettings
      org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
      setName (Ljava/lang/String;)V " &org/openide/loaders/instanceBroken.gif
  $ %   setIconBaseWithExtension
  ' ( ) getPrimaryFile &()Lorg/openide/filesystems/FileObject;
 + , - . / "org/openide/filesystems/FileObject toString ()Ljava/lang/String;
  1 2   setShortDescription
  4 5 6 delete ()V 8 %org/openide/util/actions/SystemAction :  org/openide/actions/DeleteAction
 7 < = > get :(Ljava/lang/Class;)Lorg/openide/util/actions/SystemAction; +(Lorg/openide/loaders/InstanceDataObject;)V Code LineNumberTable LocalVariableTable this @Lorg/openide/loaders/InstanceDataObject$UnrecognizedSettingNode; MethodParameters 
canDestroy ()Z #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; canCut canCopy 	canRename destroy 
Exceptions P java/io/IOException createActions *()[Lorg/openide/util/actions/SystemAction; 
SourceFile InstanceDataObject.java InnerClasses UnrecognizedSettingNode 0             ?  @   g     )*+� *� � *� � *!� #*+� &� *� 0�    A           ( B       ) C D   E      F G  @   ,     �    A       B        C D   H     I    J G  @   ,     �    A        B        C D   H     I    K G  @   ,     �    A      $ B        C D   H     I    L G  @   ,     �    A      ( B        C D   H     I    M 6  @   6     *� � 3�    A   
   , - B        C D   N     O H     I    Q R  @   7     � 7Y9� ;S�    A      0 B        C D   H     I    S    T U   
    V 