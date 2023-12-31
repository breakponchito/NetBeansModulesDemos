����   4 �
      !org/openide/filesystems/URLMapper <init> ()V
  	 
   "org/openide/filesystems/FileObject getFileSystem &()Lorg/openide/filesystems/FileSystem;  (org/openide/filesystems/MemoryFileSystem
     getPath ()Ljava/lang/String;
     isFolder ()Z
     isRoot  java/lang/StringBuilder
  
      append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  "  # (C)Ljava/lang/StringBuilder;
  % &  toString
 ( ) * + , /org/openide/filesystems/MemoryFileSystem$Mapper url L(Lorg/openide/filesystems/MemoryFileSystem;Ljava/lang/String;)Ljava/net/URL; . 1org/openide/filesystems/FileStateInvalidException	 ( 0 1 2 filesystems Ljava/util/Map;
  4 5 6 
access$200 -(Lorg/openide/filesystems/MemoryFileSystem;)J
 8 9 : ; < java/lang/Long valueOf (J)Ljava/lang/Long; > ? @ A B java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; D java/lang/ref/Reference
 C F A G ()Ljava/lang/Object; I java/lang/ref/WeakReference
 H K  L (Ljava/lang/Object;)V > N O P put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; R java/net/URL T 0org/openide/filesystems/MemoryFileSystem$Handler V memory://fs
  X  Y (J)Ljava/lang/StringBuilder; [ /
 S 
 Q ^  _ >(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V a java/net/MalformedURLException c java/lang/AssertionError
 b K f memory
 Q h i  getProtocol
 k l m n o java/lang/String equals (Ljava/lang/Object;)Z	 ( q r s HOST Ljava/util/regex/Pattern;
 Q u v  getHost
 x y z { | java/util/regex/Pattern matcher 3(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
 ~  � �  java/util/regex/Matcher matches
 ~ � � � group (I)Ljava/lang/String;
 8 � � � 	parseLong (Ljava/lang/String;)J � "org/openide/filesystems/FileSystem
 Q 
 k � � � 	substring
 � � � � findResource 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 ( � � � find 4(Ljava/net/URL;)Lorg/openide/filesystems/FileObject; � java/util/HashMap
 �  � fs(\d+)
 x � � � compile -(Ljava/lang/String;)Ljava/util/regex/Pattern; 	Signature `Ljava/util/Map<Ljava/lang/Long;Ljava/lang/ref/Reference<Lorg/openide/filesystems/FileSystem;>;>; Code LineNumberTable LocalVariableTable this 1Lorg/openide/filesystems/MemoryFileSystem$Mapper; getURL 5(Lorg/openide/filesystems/FileObject;I)Ljava/net/URL; path Ljava/lang/String; fs $Lorg/openide/filesystems/FileSystem; fo $Lorg/openide/filesystems/FileObject; type I StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; r Ljava/lang/ref/Reference; x  Ljava/net/MalformedURLException; *Lorg/openide/filesystems/MemoryFileSystem; LocalVariableTypeTable ?Ljava/lang/ref/Reference<Lorg/openide/filesystems/FileSystem;>; � java/lang/Object � java/lang/Throwable Ljava/net/URL; m Ljava/util/regex/Matcher; getFileObjects 5(Ljava/net/URL;)[Lorg/openide/filesystems/FileObject; f � %[Lorg/openide/filesystems/FileObject; <clinit> 
SourceFile MemoryFileSystem.java )Lorg/openide/util/lookup/ServiceProvider; service #Lorg/openide/filesystems/URLMapper; InnerClasses Mapper Handler 1 (      1 2  �    �  r s        �   /     *� �    �      � �        � �    � �  �   �     L� �+� N-� � 7+� :+� �  +� � � Y� � /� !� $:-� � '�� N�   E I -  �   .   � � � � � � &� <� F� I� J� �   4   . � �   ; � �    L � �     L � �    L � �  �    � 5 � k� 	B -  �   	 �   �   �     �   * + ,  �  4     �� /YM² /*� 3� 7� = � CN-� 
-� E� � HY*� JN� /*� 3� 7-� M W,ç 
:,��� QY� Y� U� *� 3� WZ� +� � $� SY� \� ]�M� bY,� d�   @ C   C G C   J x y `  �   & 	  � � � $� -� >� J� y� z� �   *   % � �  z 	 � �    � � �     � � �  �      % � �  �    � $ � C� D �� n ` �   	 �   �    � �  �  X     le*� g� j� �� p*� t� wL+� }� �� /YN² /+� �� �� 7� = � CM-ç 
:-��,� �,� E� �N-� �-*� �� �� ��  ( A D   D H D    �   :   � � � �  � "� (� ?� K� O� Q� Y� ]� _� �   4  ?  � �    l + �    S � �  K ! � �  Y  � �  �     ?  � �  K ! � �  �   4 �  ~� !  Q ~  �  ��   Q ~ C  �  � �    +    � �  �   j     +� �M,� � Y,S� �    �   
   � � �         � �      + �    � �  �    �  @ � �    +   �     �    �   �   /      � �Y� �� /�� �� p�    �   
   � 
�  �    � �     �  �c � �     (  �  S  � 