����   4 �
      java/lang/Object <init> ()V
  	 
    org/openide/filesystems/FileUtil normalizeFile (Ljava/io/File;)Ljava/io/File;
      java/io/File equals (Ljava/lang/Object;)Z  "java/lang/IllegalArgumentException  java/lang/StringBuilder
    (Parameter file1 was not normalized. Was 
     append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
      -(Ljava/lang/Object;)Ljava/lang/StringBuilder; "  instead of 
  $ % & toString ()Ljava/lang/String;
  (  ) (Ljava/lang/String;)V + (Parameter file2 was not normalized. Was 
 - . / 0 1 org/openide/util/BaseUtilities toURI (Ljava/io/File;)Ljava/net/URI;	 3 4 5 6 7 )org/netbeans/api/queries/CollocationQuery implementations2  Lorg/openide/util/Lookup$Result;
 9 : ; < = org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection; ? @ A B C java/util/Collection iterator ()Ljava/util/Iterator; E F G H I java/util/Iterator hasNext ()Z E K L M next ()Ljava/lang/Object; O 8org/netbeans/spi/queries/CollocationQueryImplementation2 N Q R S areCollocated (Ljava/net/URI;Ljava/net/URI;)Z	 3 U V 7 implementations X 7org/netbeans/spi/queries/CollocationQueryImplementation W Z R [ (Ljava/io/File;Ljava/io/File;)Z
 - ] ^ _ normalizeURI (Ljava/net/URI;)Ljava/net/URI;
 a  b java/net/URI d file
 a f g & 	getScheme
 i  j java/lang/String
 - l m n toFile (Ljava/net/URI;)Ljava/io/File; p 'Parameter file was not normalized. Was  N r s _ findRoot W u s 
 w x y z { org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;
 w } ~  lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result; 	Signature [Lorg/openide/util/Lookup$Result<Lorg/netbeans/spi/queries/CollocationQueryImplementation;>; \Lorg/openide/util/Lookup$Result<Lorg/netbeans/spi/queries/CollocationQueryImplementation2;>; Code LineNumberTable LocalVariableTable this +Lorg/netbeans/api/queries/CollocationQuery; cqi :Lorg/netbeans/spi/queries/CollocationQueryImplementation2; 9Lorg/netbeans/spi/queries/CollocationQueryImplementation; file1 Ljava/io/File; file2 uri1 Ljava/net/URI; uri2 StackMapTable MethodParameters 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; f1 f2 root uri f <clinit> 
SourceFile CollocationQuery.java #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value deprecation InnerClasses Result 1 3      V 7  �    �  6 7  �    �      �   /     *� �    �       + �        � �   	 R [  �  �     �**� � � *� Y� Y� � *� !� *� � � #� '�++� � � *� Y� Y� *� +� !� +� � � #� '�*� ,M+� ,N� 2� 8� > :� D �  � J � N:,-� P � ���ܲ T� 8� > :� D �  � J � W:*+� Y � �����    �   F    8  9 % : 2 < = = W > d @ i A n B � C � D � F � G � H � I � K � L �   >  �  � �  �  � �    � � �     � � �  i o � �  n j � �  �    21�  a a E#� �  E#�  �   	 �   �   �     �     �   	 R S  �  �     �**� \� `� *� Y� Y� � *� !� *� \� � #� '�++� \� `� *� Y� Y� *� +� !� +� \� � #� '�� 2� 8� > M,� D � ,� J � NN-*+� P � ����c*� e� h� Sc+� e� h� G*� k� M+� k� N� T� 8� > :� D �  � J � W:,-� Y � �����    �   J    Z  [ % \ 2 ^ = _ W ` d b � c � d � f � g � h � i � j � k � l � n � p �   >  �  � �  �  � �  � < � �  � 4 � �    � � �     � � �  �    21�  E� � 4   E#�  �   	 �   �   	 s   �  V     �**� � � *� Y� Y� o� *� !� *� � � #� '�*� ,L� 2� 8� > M,� D � $,� J � NN-+� q :� 	� k���ٲ T� 8� > M,� D � !,� J � WN-*� t :� �����    �   >    {  | % } 2  7 � V � _ � d � j � m � � � � � � � � � � � �   >  _  � �  V  � �  �  � �  �  � �    � d �   7 k � �  �    2�  a E&� �  E#�  �    d   �     �     �   	 s _  �  f     �**� \� `� *� Y� Y� o� *� !� *� \� � #� '�� 2� 8� > L+� D � +� J � NM,*� q N-� -����c*� e� h� A*� k� L� T� 8� > M,� D � $,� J � WN-+� t :� 	� ,�����    �   B    �  � % � 2 � Q � Y � ] � _ � b � n � v � � � � � � � � � � � �   >  Y  � �  Q  � �  �  � �  �  � �  v 6 � �    � d �   �    2�  E � �   E&�  �    d    �   �   7      � vW� |� T� vN� |� 2�    �       '  )  (  �    � �     �  �[ s � �   
  9 w �	