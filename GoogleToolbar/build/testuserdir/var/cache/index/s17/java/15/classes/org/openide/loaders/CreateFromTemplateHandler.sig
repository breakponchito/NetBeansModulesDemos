����   4 H
      4org/netbeans/api/templates/CreateFromTemplateHandler <init> ()V
  	 
   +org/netbeans/api/templates/CreateDescriptor getTemplate &()Lorg/openide/filesystems/FileObject;
      -org/openide/loaders/CreateFromTemplateHandler accept '(Lorg/openide/filesystems/FileObject;)Z
     	getTarget
     getName ()Ljava/lang/String;
     getParameters ()Ljava/util/Map;
     ! createFromTemplate �(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/util/Map;)Lorg/openide/filesystems/FileObject;
 # $ % & ' java/util/Collections singletonList $(Ljava/lang/Object;)Ljava/util/List; FREE_FILE_EXTENSION Ljava/lang/String; ConstantValue , freeFileExtension Code LineNumberTable LocalVariableTable this /Lorg/openide/loaders/CreateFromTemplateHandler; 0(Lorg/netbeans/api/templates/CreateDescriptor;)Z desc -Lorg/netbeans/api/templates/CreateDescriptor; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; ?(Lorg/netbeans/api/templates/CreateDescriptor;)Ljava/util/List; 
Exceptions ; java/io/IOException 	Signature e(Lorg/netbeans/api/templates/CreateDescriptor;)Ljava/util/List<Lorg/openide/filesystems/FileObject;>; orig f name 
parameters �(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)Lorg/openide/filesystems/FileObject; 
SourceFile CreateFromTemplateHandler.java 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated;!       ( )  *    +      -   /     *� �    .       , /        0 1     2  -   =     	*+� � �    .       0 /       	 0 1     	 3 4  5    3   6     7      8  -   d     *+� +� +� +� � � "�    .       5  7  8 
 9  :  6  5 /        0 1      3 4  9     : 5    3   <    = 6     7      5    >     !  9     : 5    >   ?   @   A   <    B  C    D E     F     G  