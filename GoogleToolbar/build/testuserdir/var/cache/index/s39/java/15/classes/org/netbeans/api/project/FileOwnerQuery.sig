����   4	      'org/netbeans/api/project/FileOwnerQuery changeId J	   	 
 cache Ljava/util/List;
      java/lang/Object <init> ()V  java/lang/NullPointerException  2Passed null to FileOwnerQuery.getOwner(FileObject)
     (Ljava/lang/String;)V
       org/openide/filesystems/FileUtil getArchiveFile J(Lorg/openide/filesystems/FileObject;)Lorg/openide/filesystems/FileObject;
     ! getInstances ()Ljava/util/List; # $ % & ' java/util/List iterator ()Ljava/util/Iterator; ) * + , - java/util/Iterator hasNext ()Z ) / 0 1 next ()Ljava/lang/Object; 3 5org/netbeans/spi/project/FileOwnerQueryImplementation 2 5 6 7 getOwner H(Lorg/openide/filesystems/FileObject;)Lorg/netbeans/api/project/Project;	  9 : ; LOG Ljava/util/logging/Logger;	 = > ? @ A java/util/logging/Level FINE Ljava/util/logging/Level;
 C D E F G java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z I "getOwner({0}) -> {1} @{2} from {3} K L M N O  org/netbeans/api/project/Project hashCode ()I
 Q R S T U java/lang/Integer valueOf (I)Ljava/lang/Integer;
 C W X Y log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V	  [ \ ] UNOWNED "Lorg/netbeans/api/project/Project; _ getOwner({0}) -> nil
 C a X b @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
 d e f g h java/net/URI toURL ()Ljava/net/URL;
  j k l isArchiveArtifact (Ljava/net/URL;)Z
  n  o (Ljava/net/URL;)Ljava/net/URL;
 q r s t u java/net/URL toURI ()Ljava/net/URI; w java/net/MalformedURLException y java/net/URISyntaxException	 = { | A INFO
 C ~ X  C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 d � � - 
isAbsolute
 d � � - isOpaque � "java/lang/IllegalArgumentException � java/lang/StringBuilder
 �  � 	Bad URI: 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 � � � � toString ()Ljava/lang/String;
 �  2 � 6 � 2(Ljava/net/URI;)Lorg/netbeans/api/project/Project; � getOwner({0}) -> {1} from {2}
 � � � �  Borg/netbeans/modules/projectapi/SimpleFileOwnerQueryImplementation reset �  markExternalOwner({0}, {1}, {2})
 � � � � markExternalOwnerTransient I(Lorg/openide/filesystems/FileObject;Lorg/netbeans/api/project/Project;)V � No such algorithm: 
 � � � � (I)Ljava/lang/StringBuilder;
 � � � � 3(Ljava/net/URI;Lorg/netbeans/api/project/Project;)V � java/util/ArrayList	  � � � implementations  Lorg/openide/util/Lookup$Result;
 � � � � � org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection;
 � �  � (Ljava/util/Collection;)V
 � � � � � java/lang/Class getName
 C � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;
 � � � � � org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;
 � � � � lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result; � )org/netbeans/api/project/FileOwnerQuery$1
 � 
 � � � � addLookupListener $(Lorg/openide/util/LookupListener;)V � )org/netbeans/api/project/FileOwnerQuery$2
 �  	Signature YLorg/openide/util/Lookup$Result<Lorg/netbeans/spi/project/FileOwnerQueryImplementation;>; ILjava/util/List<Lorg/netbeans/spi/project/FileOwnerQueryImplementation;>; EXTERNAL_ALGORITHM_TRANSIENT I ConstantValue     Code LineNumberTable LocalVariableTable this )Lorg/netbeans/api/project/FileOwnerQuery; p q 7Lorg/netbeans/spi/project/FileOwnerQueryImplementation; file $Lorg/openide/filesystems/FileObject; archiveRoot StackMapTable � "org/openide/filesystems/FileObject MethodParameters url Ljava/net/URL; e Ljava/lang/Exception; uri Ljava/net/URI; � java/lang/Exception markExternalOwner J(Lorg/openide/filesystems/FileObject;Lorg/netbeans/api/project/Project;I)V root owner 	algorithm 
Exceptions 4(Ljava/net/URI;Lorg/netbeans/api/project/Project;I)V res 	currentId LocalVariableTypeTable java/lang/Throwable K()Ljava/util/List<Lorg/netbeans/spi/project/FileOwnerQueryImplementation;>; 
access$002 "(Ljava/util/List;)Ljava/util/List; x0 
access$108 ()J <clinit> 
SourceFile FileOwnerQuery.java InnerClasses Result !       : ;    � �  �    � 
 	 
  �    � 
      \ ]    � �  �    � 
     �   /     *� �    �       K �        � �   	 6 7  �  =     �*� � Y� �*� L+� +K� � " M,� ( � b,� . � 2N-*� 4 :� G� 8� <� B� ,� 8� <H� Y*SYSY� J � PSY-S� V� Z� � ����� 8� <^*� `�    �   :    S  T  V  W  X  Z 5 [ > \ C ] O ^ x ` � b � c � d �   *  > I � ]  5 R � �    � � �    � � �  �   # � 
 ��  )� U 2 KA K�  �  �    �   	 6 �  �  �     �*� cL+� i� +� mL+� +� pK� L� 8� z+� }*� �� 
*� �� � �Y� �Y� ��� �*� �� �� ��� � " L+� ( � P+� . � 2M,*� � N-� 7� 8� <� B� � 8� <�� Y*SY-SY,S� V-� Z� � -����� 8� <^*� `�      v     x  �   N    o  p  q  r  s  x  v  w ) y 7 z R | n } v ~ z  � � � � � � � � � � �   4    � �    � �  v 8 � ]  n @ � �    � � �   �   $ B ��  )� E 2 K
@ K�  �  �    �    �   �           � ��    �   
    �  � 	 � �  �   �     `� 8� <� B� !� 8� <�� Y*SY+SY� PS� V�             *+� �� � �Y� �Y� ��� �� �� �� ���    �       �  � * � < � A � D � _ � �        ` � �     ` � ]    ` � �  �    *      � �    �   �   �   	 �  �   �     `� 8� <� B� !� 8� <�� Y*SY+SY� PS� V�             *+� �� � �Y� �Y� ��� �� �� �� ���    �       �  � * � < � A � D � _ � �        ` � �     ` � ]    ` � �  �    *      � �    �   �   �   
   !  �  =     VYN² K� @-ç 
:-��*� *�� �Y� �� �� �KYN�� �� 
*� � � � � K*-ð:-��            2 N O   O S O    �   :     		 
    - 2 : A G K O �   *  	 	 
        = 
    =       	 	 �    = �   �   ) �       �   #  � ! 	C �   	  �   0     *Y� �    �       3 �       
 
    �   "      
� \
a� �    �       3    �   R      .� �� ų 8� �2� ϳ �� �� �Y� ն ֻ �Y� ܳ Z�    �       7  :  ; # �         � �	 �       �      