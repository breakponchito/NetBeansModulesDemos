����   4 S	      2org/openide/filesystems/JarFileSystem$Cache$Folder this$0 -Lorg/openide/filesystems/JarFileSystem$Cache;
  	 
   java/lang/Object <init> ()V	      +org/openide/filesystems/JarFileSystem$Cache EMPTY [I	     indices	     idx I  java/lang/String	     names [B
 ! " # $ % java/lang/System 	arraycopy *(Ljava/lang/Object;ILjava/lang/Object;II)V	 ' ( ) * + !java/nio/charset/StandardCharsets UTF_8 Ljava/nio/charset/Charset;
  -  . ([BLjava/nio/charset/Charset;)V
  0 1 2 getBytes (Ljava/nio/charset/Charset;)[B
  4 5 6 access$1200 2(Lorg/openide/filesystems/JarFileSystem$Cache;[B)I 0(Lorg/openide/filesystems/JarFileSystem$Cache;)V Code LineNumberTable LocalVariableTable this 4Lorg/openide/filesystems/JarFileSystem$Cache$Folder; MethodParameters getNames ()[Ljava/lang/String; name i ret [Ljava/lang/String; StackMapTable C addChild (Ljava/lang/String;)V newInd Ljava/lang/String; bytes trunc 
SourceFile JarFileSystem.java InnerClasses P %org/openide/filesystems/JarFileSystem Cache Folder                         7  8   P     *+� *� **� � � *� �    9      + 	( ) , :        ; <   =      > ?  8   �     K*� l� L=+�� :*� h`.�N*� � *� h.--��  +� Y-� &� ,S����+�    9      / 
1 2 3 54 C1 I7 :   *   $ @    = A     K ; <   
 A B C  D    �  E� <   F G  8   �     `*� `*� �� "*� �h`�
M*� ,*� �  *,� +� &� /M*� *Y� Z`� *� ,� 3O*� *Y� Z`� ,�O�    9   "   < = > (? -B 5C MD _E :   *    H     ` ; <     ` @ I  5 + J   D    - =    @     K   8   t     '*� �*� � *� �
L*� +*� �  *+� �    9      H I J !K &M :       H     ' ; <   D    &  L    M N      O Q 
   R 