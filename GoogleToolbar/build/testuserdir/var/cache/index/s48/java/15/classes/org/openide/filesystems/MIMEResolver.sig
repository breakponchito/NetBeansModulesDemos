����   4 P
      java/lang/Object <init> ()V	  	 
   $org/openide/filesystems/MIMEResolver resolvableMIMETypes [Ljava/lang/String;  	mimeTypes
      org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V  "java/lang/IllegalArgumentException  .The mimeTypes parameter cannot be empty array.
     (Ljava/lang/String;)V
      ! java/lang/String length ()I # @The item in mimeTypes parameter cannot be null nor empty String.
 % & ' ( ) Borg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl create L(Lorg/openide/filesystems/FileObject;)Lorg/openide/filesystems/MIMEResolver; ([Ljava/lang/String;)V Code LineNumberTable LocalVariableTable mimeType Ljava/lang/String; this &Lorg/openide/filesystems/MIMEResolver; StackMapTable  MethodParameters 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; findMIMEType 8(Lorg/openide/filesystems/FileObject;)Ljava/lang/String; fo getMIMETypes ()[Ljava/lang/String; $Lorg/openide/filesystems/FileObject; 
Exceptions @ java/io/IOException 
SourceFile MIMEResolver.java InnerClasses E 1org/openide/filesystems/MIMEResolver$Registration Registration H :org/openide/filesystems/MIMEResolver$NamespaceRegistration NamespaceRegistration K :org/openide/filesystems/MIMEResolver$ExtensionRegistration ExtensionRegistration N .org/openide/filesystems/MIMEResolver$UIHelpers 	UIHelpers!            �  *  +   �     U*� *� +� +�� � Y� �+M,�>6� &,2:� � � � Y"� �����*+� �    ,   .    =  4 	 >  ?  @  B 2 C ? D I B O G T H -      2  . /    U 0 1     U    2   # �    3  �  3�  � 	�  4           +   <     
*� *� �    ,       O  4 	 P -       
 0 1   5     6     7   8 9  4    :     ; <  +   /     *� �    ,       ^ -        0 1    ( )  +   /     *� $�    ,       c -        : =   >     ? 4    :    A    B C   "  D  F&	 G  I&	 J  L&	 M  O