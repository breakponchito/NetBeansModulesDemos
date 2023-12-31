����   4 N	      .org/openide/filesystems/MIMEResolver$UIHelpers this$0 &Lorg/openide/filesystems/MIMEResolver;
  	 
   java/lang/Object <init> ()V
     getClass ()Ljava/lang/Class;
      java/lang/Class getName ()Ljava/lang/String;  <org.netbeans.core.ui.options.filetypes.FileAssociationsModel
      java/lang/String equals (Ljava/lang/Object;)Z   java/lang/IllegalStateException
  	
 # $ % & ' Borg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl storeUserDefinedResolver (Ljava/util/Map;)Z
 # ) * + getOrderedResolvers ()Ljava/util/Collection;
 # - . / isUserDefined '(Lorg/openide/filesystems/FileObject;)Z
 # 1 2 3 getMIMEToExtensions 5(Lorg/openide/filesystems/FileObject;)Ljava/util/Map; )(Lorg/openide/filesystems/MIMEResolver;)V Code LineNumberTable LocalVariableTable this 0Lorg/openide/filesystems/MIMEResolver$UIHelpers; StackMapTable < $org/openide/filesystems/MIMEResolver MethodParameters (Ljava/util/Map;)V mimeToExtensions Ljava/util/Map; LocalVariableTypeTable FLjava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>; 	Signature I(Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;)V ?()Ljava/util/Collection<+Lorg/openide/filesystems/FileObject;>; mimeResolverFO $Lorg/openide/filesystems/FileObject; fo l(Lorg/openide/filesystems/FileObject;)Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>; 
SourceFile MIMEResolver.java InnerClasses 	UIHelpers!             4  5   v     !*+� *� *� � � � �� Y� !�    6       o 	 p  r  t 7       ! 8 9     !    :    �    ;   =    �  & >  5   P     +� "W�    6   
    �  � 7        8 9      ? @  A        ? B  =    ?  C    D  * +  5   .     � (�    6       � 7        8 9   C    E  . /  5   9     +� ,�    6       � 7        8 9      F G  =    F    2 3  5   9     +� 0�    6       � 7        8 9      H G  =    H   C    I  J    K L   
   ; M