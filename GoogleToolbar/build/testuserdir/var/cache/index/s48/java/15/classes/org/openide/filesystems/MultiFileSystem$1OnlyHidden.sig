����   4 G  'org/openide/filesystems/MultiFileSystem
      java/lang/Object <init> ()V
 
     "org/openide/filesystems/FileObject getPath ()Ljava/lang/String;  _hidden
      java/lang/String endsWith (Ljava/lang/String;)Z
     length ()I
     	substring (II)Ljava/lang/String;
   ! " # $ 3org/openide/filesystems/MultiFileSystem$1OnlyHidden process N(Lorg/openide/filesystems/FileObject;Ljava/util/Collection;)Ljava/lang/String; & 'org/openide/util/Enumerations$Processor Code LineNumberTable LocalVariableTable this 5Lorg/openide/filesystems/MultiFileSystem$1OnlyHidden; obj $Lorg/openide/filesystems/FileObject; ignore Ljava/util/Collection; sf Ljava/lang/String; LocalVariableTypeTable <Ljava/util/Collection<Lorg/openide/filesystems/FileObject;>; StackMapTable MethodParameters 	Signature t(Lorg/openide/filesystems/FileObject;Ljava/util/Collection<Lorg/openide/filesystems/FileObject;>;)Ljava/lang/String; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object; sLjava/lang/Object;Lorg/openide/util/Enumerations$Processor<Lorg/openide/filesystems/FileObject;Ljava/lang/String;>; 
SourceFile MultiFileSystem.java EnclosingMethod @ A hiddenFiles >(Lorg/openide/filesystems/FileObject;Z)Ljava/util/Enumeration; InnerClasses 
OnlyHidden E org/openide/util/Enumerations 	Processor       %         '   /     *� �    (      b )        * +    # $  '   �      +� 	N-� � --� � d� ��    (      d f g i )   *      * +       , -      . /    0 1  2         . 3  4    �   5   	 ,   .   6    7 8     9  A # :  '   4     
*+� 
,� �    (      b )       
 * +   5   	 ,  .  8     9    6    ; <    = >     ? B         C   % D F	