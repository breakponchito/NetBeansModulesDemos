����   4C
      java/lang/Object <init> ()V  .org/openide/filesystems/JarArchiveRootProvider 
 jar
      java/net/URL getProtocol ()Ljava/lang/String;
      java/lang/String equals (Ljava/lang/Object;)Z
      !org/openide/filesystems/URLMapper findFileObject 4(Ljava/net/URL;)Lorg/openide/filesystems/FileObject;
     ! " "org/openide/filesystems/FileObject 	isVirtual ()Z	  $ % & LOG Ljava/util/logging/Logger;	 ( ) * + , java/util/logging/Level FINEST Ljava/util/logging/Level;
 . / 0 1 2 java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z 4 isArchiveFile_FILE_RESOLVED
 . 6 7 8 log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
  : ; < isArchiveFile ((Lorg/openide/filesystems/FileObject;Z)Z
  > ?  getPath
  A ; B (Ljava/lang/String;)Z
  D E " isValid
  >
  H I " isFolder	  K L M archiveFileCache Ljava/util/Map; O P Q R S java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; U java/lang/Boolean
  W X Y getInputStream ()Ljava/io/InputStream;
 [ \ ] ^ _ java/io/InputStream read ([BII)I	  a b c ZIP_HEADER_1 [B
 e f g  h java/util/Arrays ([B[B)Z	  j k c ZIP_HEADER_2
 T m n o valueOf (Z)Ljava/lang/Boolean;
 [ q r  close t java/io/IOException	 ( v w , FINE
 . y 7 z C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V O | } ~ put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 T � � " booleanValue � !/
  � � � indexOf (Ljava/lang/String;)I
  � � � 	substring (II)Ljava/lang/String; � file:// � 	file:////
  � � � replaceFirst 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  �  � (Ljava/lang/String;)V � java/net/MalformedURLException	 ( � � , WARNING � $Invalid URL ({0}): {1}, jarPath: {2}
 � � �  
getMessage
  � �  toExternalForm
 . � 7 � A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
  � � � getFileSystem &()Lorg/openide/filesystems/FileSystem; � %org/openide/filesystems/JarFileSystem
 � � � � 
getJarFile ()Ljava/io/File;
 � � � � �  org/openide/filesystems/FileUtil toFileObject 4(Ljava/io/File;)Lorg/openide/filesystems/FileObject; � 1org/openide/filesystems/FileStateInvalidException
 � � � � � org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V � java/lang/StringBuilder
 �  � jar:
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 � � �  toString � java/lang/AssertionError
 � �  � (Ljava/lang/Object;)V
  � � � lastIndexOf (I)I	  � � � KNOWN_ZIP_EXTENSIONS Ljava/util/Set;
  � � � (I)Ljava/lang/String; � � � �  java/util/Set contains
 � � � �  java/lang/Class getName
 . � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; � java/util/WeakHashMap
 � 
 � � � � � java/util/Collections synchronizedMap  (Ljava/util/Map;)Ljava/util/Map; � java/util/HashSet � war � zip � ear � sar  rar
 e asList %([Ljava/lang/Object;)Ljava/util/List;
 �  (Ljava/util/Collection;)V	 /org/openide/filesystems/spi/ArchiveRootProvider PROTOCOL Ljava/lang/String; ConstantValue 	Signature HLjava/util/Map<Lorg/openide/filesystems/FileObject;Ljava/lang/Boolean;>; #Ljava/util/Set<Ljava/lang/String;>; Code LineNumberTable LocalVariableTable this 0Lorg/openide/filesystems/JarArchiveRootProvider; (Ljava/net/URL;Z)Z url Ljava/net/URL; strict Z fo $Lorg/openide/filesystems/FileObject; StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; buffer len I in Ljava/io/InputStream; ioe Ljava/io/IOException; b Ljava/lang/Boolean; c+ java/lang/Throwable isArchiveArtifact (Ljava/net/URL;)Z getArchiveFile (Ljava/net/URL;)Ljava/net/URL; mue  Ljava/net/MalformedURLException; jarPath path index protocol J(Lorg/openide/filesystems/FileObject;)Lorg/openide/filesystems/FileObject; jarFile Ljava/io/File; fs $Lorg/openide/filesystems/FileSystem; e 3Lorg/openide/filesystems/FileStateInvalidException; getArchiveRoot dot slash <clinit> 
SourceFile JarArchiveRootProvider.java 0     
     	 
 b c   
 k c    % &    L M      � �     	        /     *� �          )           ;    �     E	+� � � �+� N-� )-� � "� #� '� -� � #� '3-� 5*-� 9�+� =� @�      "    7  9  ;  <  = * > 6 @ = B   *    E     E    E   2    
 � '    	            ; <   �  	   �+� C� +� F� @�+� � +� F� @�+� G� �� J+� N � TN-� �+� V:�:� Z6� %� `� d� � i� d� � � lN� � � 6� p�� p� :� p�� :� #� u� x-� +� F� @� lN� J+-� { W-� �  > � �   � � �   8 � � s � � � s    n    H  I  M  N  Q % R ' V 4 W 8 Z > ] C ^ N ` T b v h � k � h � k � l � k � l � p � m � o � q � r � t � v   R  C F  c  N ;!"  > ]#$  � %&    �     �    �  4 �'(    5 � B    T [)  @@� 	G*� 	B s
   	           ,-    >     
	+� � �          |       
     
             ./   N     ~+� M	,� � q+� =N-�� �6� _:-� �:�� �� �� �� ��� �:� Y� ��:� #� ��� Y� �SY+� �SYS� ��  # V W �    B    �  �  �  �  �   � # � , � B � M � W � Y � i � p � y � | �   H  Y #01  # Y2   i3   a4"    ~     ~   y5      � M        I �� $            .6    �     #+� �M,� �� ,� �� �N-� ��� M,� ��      �    "    �  �  �  �  �  �  � ! �   4   78   9:   ;<    #     #     B �            =/    �     *� Y� �Y� �¶ �+� ��� Ķ ˷ ��M� �Y,� п       �        �   � ! �      ! 	;1    *     *     ` �           
 ; B    �     2*.� �<*/� �=�  `� � �*`� ۹ � � � �          �  �  �        23    +>"   $?"    	 � 0@   3  @     �      z�YPTYKTYTYT� `�YPTYKTYTYT� i� � � #� �Y� � � J� �Y� Y	SY�SY�SY�SY�SY�S��� ױ          ,  . 1 / < 1 I 3 A   B