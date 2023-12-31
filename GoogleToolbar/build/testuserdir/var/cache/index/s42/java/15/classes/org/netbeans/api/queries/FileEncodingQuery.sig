����   4 �	      *org/netbeans/api/queries/FileEncodingQuery LOG Ljava/util/logging/Logger;
  	 
   java/lang/Object <init> ()V  "java/lang/IllegalArgumentException
  	  java/util/ArrayList
  	
      org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;  8org/netbeans/spi/queries/FileEncodingQueryImplementation
     	lookupAll )(Ljava/lang/Class;)Ljava/util/Collection;   ! " # $ java/util/Collection iterator ()Ljava/util/Iterator; & ' ( ) * java/util/Iterator hasNext ()Z & , - . next ()Ljava/lang/Object;
  0 1 2 getEncoding @(Lorg/openide/filesystems/FileObject;)Ljava/nio/charset/Charset;	 4 5 6 7 8 java/util/logging/Level FINE Ljava/util/logging/Level;
 : ; < = > java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z @ #{0}: received encoding {1} from {2}
 : B C D log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V F G H I J java/util/List add (Ljava/lang/Object;)Z	 4 L M 8 FINER O "{0}: received no encoding from {1}
 Q R S T U "org/openide/filesystems/FileObject getFileSystem &()Lorg/openide/filesystems/FileSystem;
 W X Y Z * "org/openide/filesystems/FileSystem 	isDefault \ UTF-8
 ^ _ ` a b java/nio/charset/Charset forName .(Ljava/lang/String;)Ljava/nio/charset/Charset;
 ^ d e f defaultCharset ()Ljava/nio/charset/Charset; h 1org/openide/filesystems/FileStateInvalidException j {0}: using encodings {1} l 7org/netbeans/api/queries/FileEncodingQuery$ProxyCharset
 k n  o A(Ljava/util/List;Lorg/netbeans/api/queries/FileEncodingQuery$1;)V
 q r s t u org/openide/util/NbPreferences 	forModule 0(Ljava/lang/Class;)Ljava/util/prefs/Preferences; w default-encoding
 y z { | } java/util/prefs/Preferences get 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
 ^  � � name ()Ljava/lang/String;
 y � � � put '(Ljava/lang/String;Ljava/lang/String;)V
 � � � � � java/lang/Class getName
 : � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; BUFSIZ I ConstantValue    DEFAULT_ENCODING Ljava/lang/String; UTF_8 ENCODER_SELECTED � encoder-selected DECODER_SELECTED � decoder-selected Code LineNumberTable LocalVariableTable this ,Lorg/netbeans/api/queries/FileEncodingQuery; encoding Ljava/nio/charset/Charset; impl :Lorg/netbeans/spi/queries/FileEncodingQueryImplementation; ex 3Lorg/openide/filesystems/FileStateInvalidException; file $Lorg/openide/filesystems/FileObject; 	delegates Ljava/util/List; LocalVariableTypeTable ,Ljava/util/List<Ljava/nio/charset/Charset;>; StackMapTable MethodParameters getDefaultEncoding prefs Ljava/util/prefs/Preferences; defaultEncoding setDefaultEncoding (Ljava/nio/charset/Charset;)V 
access$400 ()Ljava/util/logging/Logger; <clinit> 
SourceFile FileEncodingQuery.java InnerClasses ProxyCharset � ,org/netbeans/api/queries/FileEncodingQuery$1 !       � �  �    �  � �  �    v  � �  �    [       � �  �    �  � �  �    �      �   /     *� �    �       7 �        � �   	 1 2  �  �     �*� � Y� �� Y� L� � �  M,� % � s,� + � N-*� /:� 7� � 3� 9� � � 3?� Y*SYSY-S� A+� E W� &� � K� 9� � � KN� Y*SY-S� A���*� P� V� +[� ]� E W� +� c� E W� M+� c� E W� � 3� 9� � � 3i� Y*SY+S� A� kY+� m�  � � � g  �   V    B  C  E  F 5 G < H A I M J i L u N � O � R � T � U � W � [ � Y � Z � \ � ] � _ �   4  < \ � �  5 c � �  � 
 � �    � � �    � � �  �      � � �  �   $ �  F &� F  ^� "� 	B g
" �    �   	 � f  �   P     � pK*v[� xL+� ]�    �       j  k  l �       � �     � �  	 � �  �   j     *� � Y� �� pL+v*� ~� ��    �       y  z  |  }  ~ �        � �     � �  �     �    �  � �  �         � �    �       0  �   �   $      � �� �� �    �       5  �    � �     k  � 
 �    