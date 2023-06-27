����   4 �  Borg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl	      Dorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$1 val$mimeToExtensions Ljava/util/Map;
 
     java/lang/Object <init> ()V  MIME-resolver  &-//NetBeans//DTD MIME Resolver 1.1//EN  2http://www.netbeans.org/dtds/mime-resolver-1_1.dtd
      org/openide/xml/XMLUtil createDocument `(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;       java/util/Map entrySet ()Ljava/util/Set; " # $ % & java/util/Set iterator ()Ljava/util/Iterator; ( ) * + , java/util/Iterator hasNext ()Z ( . / 0 next ()Ljava/lang/Object; 2 java/util/Map$Entry 1 4 5 0 getKey 7 java/lang/String 1 9 : 0 getValue " < = , isEmpty ? file A B C D E org/w3c/dom/Document createElement )(Ljava/lang/String;)Lorg/w3c/dom/Element;  G H I get &(Ljava/lang/Object;)Ljava/lang/Object; K ext M name O P Q R S org/w3c/dom/Element setAttribute '(Ljava/lang/String;Ljava/lang/String;)V O U V W appendChild &(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node; Y resolver [ mime A ] ^ _ getDocumentElement ()Lorg/w3c/dom/Element; O a b , hasChildNodes d Services/MIMEResolver
 f g h i j  org/openide/filesystems/FileUtil getConfigFile 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 f l m n getConfigRoot &()Lorg/openide/filesystems/FileObject;
 f p q r createFolder \(Lorg/openide/filesystems/FileObject;Ljava/lang/String;)Lorg/openide/filesystems/FileObject; t user-defined-mime-resolver v xml
 x y z { | "org/openide/filesystems/FileObject 
createData J(Ljava/lang/String;Ljava/lang/String;)Lorg/openide/filesystems/FileObject;	 ~  � � � java/lang/Boolean TRUE Ljava/lang/Boolean;
 x � R � '(Ljava/lang/String;Ljava/lang/Object;)V � position
 � � � � � java/lang/Integer valueOf (I)Ljava/lang/Integer;
 x � � � getOutputStream ()Ljava/io/OutputStream; � UTF-8
  � � � write A(Lorg/w3c/dom/Document;Ljava/io/OutputStream;Ljava/lang/String;)V
 � � � �  java/io/OutputStream close � java/io/IOException
  � � � 
access$500 ()Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level SEVERE Ljava/util/logging/Level; � java/lang/StringBuilder
 �  � "Cannot close OutputStream of file 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder; �  
 f � � � toFile 4(Lorg/openide/filesystems/FileObject;)Ljava/io/File;
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 � � � � toString ()Ljava/lang/String;
 � � � � � java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V � Cannot write resolver  � java/lang/Runnable (Ljava/util/Map;)V Code LineNumberTable LocalVariableTable this FLorg/netbeans/modules/openide/filesystems/declmime/MIMEResolverImpl$1; MethodParameters 	Signature run 
extElement Lorg/w3c/dom/Element; 	extension Ljava/lang/String; fileElement resolverElement mimeType 
extensions Ljava/util/Set; entry Ljava/util/Map$Entry; resolversFolder $Lorg/openide/filesystems/FileObject; e Ljava/io/IOException; document Lorg/w3c/dom/Document; os Ljava/io/OutputStream; newUserDefinedFO LocalVariableTypeTable #Ljava/util/Set<Ljava/lang/String;>; LLjava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>; StackMapTable � java/io/Serializable � java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile MIMEResolverImpl.java EnclosingMethod � � storeUserDefinedResolver (Ljava/util/Map;)Z InnerClasses Entry    
  �          �  �   4     
*+� *� 	�    �       � �       
 � �   �     �      �   �  �    � L*� �  � ! M,� ' � �,� - � 1N-� 3 � 6:-� 8 � ":� ; � �+>� @ :*� � F � "� ! :� ' � 1� - � 6:+J� @ :		L� N 	� T W���+X� @ :Z� N � T W+� \ � T W��I+� \ � ` � �MNc� e:� � kc� o:su� wN-s� }� �-�
� �� �-� �M+,�� �,� �,� �� �:� �� �� �Y� ��� �-� �� -� �� �� �� �� �:� �� �� �Y� �Ŷ �-� �� -� �� �� �� �,� u,� �� n:� �� �� �Y� ��� �-� �� -� �� �� �� �� ?:
,� 6,� �� /:� �� �� �Y� ��� �-� �� -� �� �� �� �
�� +/2 � �'a ���� � �'�  a��  ��� ����    �   � 1   �  � - � 8 � C � M � W � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �'+/24^a �c ������������ 	 �   �  �  � � 	 �  � �  W z � �  � # � �  8 � � �  C � � �  - � � �  � 9 � � 4 * � � c * � � � * � � � * � �    � �   � � �  � � �  � � �  �     C � � �  - � � �  �  � �  A (� Q   A ( 1 6 " O (  � 7� ,   A (  � �  � x x� 4   A � x  ��    A � x �  � � ��    A � x �  � � � ��    A � x  ��    A � x �  � � ��    A � x �  � � � ��    A � x  ��    A � x �  � � ��    A � x �  � � � ��    A � x  ��    A � x       �  ��    A � x       � �  � � ��    A � x       � �  � � � �� 
�    A � x   �     �    �    � �     � �            1  �	