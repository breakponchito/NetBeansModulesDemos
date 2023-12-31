����   4 |
      8org/netbeans/spi/queries/FileEncodingQueryImplementation <init> ()V
  	 
   Forg/netbeans/modules/projectapi/ProjectFileEncodingQueryImplementation 
isSystemFS '(Lorg/openide/filesystems/FileObject;)Z	     LOG Ljava/util/logging/Logger;	      java/util/logging/Level FINER Ljava/util/logging/Level;  {0}: on system filesystem
      java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
   ! " # $ 'org/netbeans/api/project/FileOwnerQuery getOwner H(Lorg/openide/filesystems/FileObject;)Lorg/netbeans/api/project/Project; & {0}: no owner ( ) * + ,  org/netbeans/api/project/Project 	getLookup ()Lorg/openide/util/Lookup;
 . / 0 1 2 org/openide/util/Lookup lookup %(Ljava/lang/Class;)Ljava/lang/Object;	  4 5  FINE
  7 8 9 
isLoggable (Ljava/util/logging/Level;)Z ; {0}: no FEQI in {1} = java/lang/Object
  ?  @ A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
  B C D getEncoding @(Lorg/openide/filesystems/FileObject;)Ljava/nio/charset/Charset; F {0}: got {1} from {2}
 H I J K L "org/openide/filesystems/FileObject getFileSystem &()Lorg/openide/filesystems/FileSystem;
 N O P Q R "org/openide/filesystems/FileSystem 	isDefault ()Z T java/io/IOException
 V W X Y Z java/lang/Class getName ()Ljava/lang/String;
  \ ] ^ 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; Code LineNumberTable LocalVariableTable this HLorg/netbeans/modules/projectapi/ProjectFileEncodingQueryImplementation; file $Lorg/openide/filesystems/FileObject; p "Lorg/netbeans/api/project/Project; delegate :Lorg/netbeans/spi/queries/FileEncodingQueryImplementation; encoding Ljava/nio/charset/Charset; StackMapTable n java/nio/charset/Charset MethodParameters ioe Ljava/io/IOException; $RuntimeInvisibleParameterAnnotations -Lorg/netbeans/api/annotations/common/NonNull; <clinit> 
SourceFile +ProjectFileEncodingQueryImplementation.java #org.netbeans.SourceLevelAnnotations )Lorg/openide/util/lookup/ServiceProvider; service position   � !                _   /     *� �    `       ( a        b c    C D  _  @     �+� � � � +� �+� M,� � � %+� �,� ' � -� N-� (� � 3� 6� � � 3:� <Y+SY,S� >�-+� A:� � 3� 6� � � 3E� <Y+SYSY-S� >�    `   B    +  ,  -  /  0  1 * 2 , 4 ; 5 ? 6 K 7 b 9 d ; k < w = � ? a   4    � b c     � d e   | f g  ; [ h i  k + j k  l    �  (� 5 � . m o    d   
    _   [     *� G� M�L�      S  `       D  E 	 F a     	  p q     d e   l    H S o    d  r     s    t   _   $      � U� [� �    `       &  u    v w     x  yc i zI {