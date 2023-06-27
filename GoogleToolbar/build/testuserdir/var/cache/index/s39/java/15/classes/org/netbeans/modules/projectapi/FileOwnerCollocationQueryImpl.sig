����   4 \
      java/lang/Object <init> ()V
  	 
   'org/netbeans/api/project/FileOwnerQuery getOwner 2(Ljava/net/URI;)Lorg/netbeans/api/project/Project;
      java/net/URI toString ()Ljava/lang/String;  /
      java/lang/String endsWith (Ljava/lang/String;)Z  ..  .
    ! " resolve "(Ljava/lang/String;)Ljava/net/URI;
  $ %  getPath
  ' ( ) equals (Ljava/lang/Object;)Z
 + , - . / =org/netbeans/modules/projectapi/FileOwnerCollocationQueryImpl findRoot (Ljava/net/URI;)Ljava/net/URI; 1 java/lang/StringBuilder
 0 
 0 4 5 6 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 0 8 5 9 (C)Ljava/lang/StringBuilder;
 0 
  < =  
startsWith ? 8org/netbeans/spi/queries/CollocationQueryImplementation2 Code LineNumberTable LocalVariableTable this ?Lorg/netbeans/modules/projectapi/FileOwnerCollocationQueryImpl; uri Ljava/net/URI; parent StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; areCollocated (Ljava/net/URI;Ljava/net/URI;)Z check Ljava/lang/String; file1 file2 root first Z 
SourceFile "FileOwnerCollocationQueryImpl.java )Lorg/openide/util/lookup/ServiceProvider; service :Lorg/netbeans/spi/queries/CollocationQueryImplementation2; position  � ! +   >        @   /     *� �    A       ! B        C D    . /  @   �     @+� � �+M,L,,� � � � � M,� � � ,� #� &��ӧ +�    A   * 
   $  % 	 '  )  * % + , , / . ; / > 2 B        @ C D     @ E F   5 G F  H   % 	�  S �   +      I    E   J     K    L M  @   �     J*+� *N6-� *,� *N6-� 1� 0Y� 2� 
,� � +� � 3/� 7� ::-� � ;��    A   & 	   7  8 	 9  :  ;  =  > > ? H A B   >  > 
 N O    J C D     J P F    J Q F   D R F  	 A S T  H   ( �  V 0�   +     0  I   	 P   Q   J     K    U    V J     W  Xc Y ZI [