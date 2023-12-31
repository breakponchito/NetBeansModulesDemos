����   4D
      java/lang/Object <init> ()V
  	 
    org/openide/filesystems/NbfsUtil encodeFsPart 8(Lorg/openide/filesystems/FileObject;)Ljava/lang/String;  1org/openide/filesystems/FileStateInvalidException  invalid
     encodeFoPart  nbhost
     combine 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;  "org/openide/filesystems/NbfsUtil$1
     (Ljava/lang/String;)V
   ! " # $ java/security/AccessController doPrivileged =(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object; & java/net/URL ( 'java/security/PrivilegedActionException * java/lang/IllegalStateException
 ' , - . toString ()Ljava/lang/String;
 ) 
 1 2 3 4 5 $org/openide/filesystems/ExternalUtil annotate A(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable; 7 java/lang/StringBuffer
 6 
 6 : ; < append (C)Ljava/lang/StringBuffer;
 6 > ; ? ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
 6 ,
 % B C . getFile E /
 G H I J K java/lang/String indexOf (Ljava/lang/String;I)I M  
 G O P Q 	substring (II)Ljava/lang/String;
 G S P T (I)Ljava/lang/String;
 % V W . getProtocol Y org/openide/filesystems/FileURL [ nbfs
 G ] ^ _ equals (Ljava/lang/Object;)Z
  a b c isOldEncoding (Ljava/net/URL;)Z
  e f g 	oldDecode 4(Ljava/net/URL;)Lorg/openide/filesystems/FileObject;
  i j k split #(Ljava/net/URL;)[Ljava/lang/String;
  m n o decodeFsPart &(Ljava/lang/String;)Ljava/lang/String;
  q r o decodeFoPart t SystemFileSystem
 v w x y z "org/openide/filesystems/Repository 
getDefault &()Lorg/openide/filesystems/Repository;
 v | } ~ getDefaultFileSystem &()Lorg/openide/filesystems/FileSystem;
 v � � � findFileSystem 8(Ljava/lang/String;)Lorg/openide/filesystems/FileSystem;
 � � � � � "org/openide/filesystems/FileSystem findResource 8(Ljava/lang/String;)Lorg/openide/filesystems/FileObject;
 � � � � ~ "org/openide/filesystems/FileObject getFileSystem	  � � � $assertionsDisabled Z � java/lang/AssertionError � java/lang/StringBuilder
 �  � File object 
 � � ; � -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � ; � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � " returns null from getFileSystem()
 � ,
 � �  � (Ljava/lang/Object;)V
 � � � � 	isDefault ()Z
 � � � . getSystemName
 G � � � isEmpty � %s.%h
  � � � getClass ()Ljava/lang/Class;
 � � � � . java/lang/Class getName
 G � � � format 9(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
  � � o encoder
 � � � . getPath
 � � � � isFolder
 � � � � isRoot � java/net/URI
 � �  � 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
 � , � java/net/URISyntaxException � ???
  � � o decoder
 G � � � endsWith (Ljava/lang/String;)Z
 G � � � length ()I
 � 
 � � � UTF-8
 � � � �  java/net/URLEncoder encode � $java/io/UnsupportedEncodingException
 � � � �  java/net/URLDecoder decode
 % � � . getHost
 G � � � 
startsWith
 G � J � (I)I
  � � o oldDecodeFSName
 G � � � charAt (I)C
 �  � desiredAssertionStatus 	SEPARATOR C ConstantValue   / SYSTEM_FILE_SYSTEM_NAME Ljava/lang/String; Code LineNumberTable LocalVariableTable this "Lorg/openide/filesystems/NbfsUtil; getURL 4(Lorg/openide/filesystems/FileObject;)Ljava/net/URL; fsPart x 3Lorg/openide/filesystems/FileStateInvalidException; ise !Ljava/lang/IllegalStateException; pae )Ljava/security/PrivilegedActionException; fo $Lorg/openide/filesystems/FileObject; foPart host file StackMapTable MethodParameters sb Ljava/lang/StringBuffer; url Ljava/net/URL; idx I getFileObject urlParts [Ljava/lang/String; fsName foName fsys $Lorg/openide/filesystems/FileSystem;% fs n 
Exceptions Ljava/net/URISyntaxException; path 
encodedStr e &Ljava/io/UnsupportedEncodingException; elem u resourceName first fileSystemName ch name i len <clinit> 
SourceFile NbfsUtil.java #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value deprecation InnerClasses 0                s � �           /     *� �   	       $
             '     F*� L� ML*� MN+,� :� Y� � � %�:� )Y� +� /:� 0W�        * + ' 	   2    2  5  3 	 4  6  8  9  @ + H - J ; K C L
   \ 	    	   ;   -     F    :   5   2   +    % H �  G�   � G G G G  '     
      h     � 6Y� 8M,/� 9*� =W,+� =W,� @�   	       Q  R  S  U
                    	   
 j k    �     6*� AL+D� F=LN+:� +� NN+`� R:� GY-SYS�   	   "    Y  Z  [  \  ^  _  ` ( c
   4    6     1   )!"   &   #     � (  % G G G        # g    �     X*� UZ� \� �*� `� *� d�*� hL+2� lM+2� pN,s� \� � u� {� 
� u,� :� � 	-� ��   	   & 	   m  n  q  r  u  w & x - z H |
   4    X     9$%  & 2&  - +'  H ()     � $* G GF �� 
 �E �      
      �     d*� �L� �� '+� #� �Y� �Y� ��� �*� ��� �� �� ��+� �� s� +� �M,� �� �� Y+� �� �SY+S� �M,� ��   	       �  � / � @ � G � _ �
        d    _+)  @ $,     � / �C G�  G-           
      �     M*� �L*� ę � �Y� �+� �D� �� �L*� ǚ � �Y� �D� �+� �� �L� �Y+� ̶ ϰMҰ  ; H I � 	   "    �  �  �   � ' � ; � I � J �
      J .    M    H/     �   GM �      
 n o    /     *� ԰   	       �
       0     0   
 r o    �     ,*� L�*D� י **� �d� NK� �Y*� ߶ �LҰ   ' ( � 	       �  �  �  �  � ( � ) �
     ) .    ,0      K �   0   
 � o    a     *� �L� �Y+� ��      � 	       �  �  �
      	12    3      G �   3   
 � o    a     *� �L� �Y+� ��      � 	       �  �  �
      	12    3      G �   3   
 b c    _     *� �L+� 
+� ۚ � �   	   
    �  �
                 �  G@      
 f g    �     K*� AL+D� � 	+� RL+/� �=� �+� N� �N+� RL� u-� :� � 	+� ��   	   * 
   �  �  �  �  �   � " � , � 2 � ; �
   4    K4     F5   06"  , 7  ; ()     �  G� � ! G �E �   4   
 � o   L     �� 6Y� 8L=*� �>� {*�� �6Q� `� [*�� ��    F   B   E      (   2   <+/� 9W� 2+:� 9W� (+\� 9W� +#� 9W� +Q� 9W� 
+� 9W���+� @�   	   R    �  � 
 �  �  �  � * � P � W � Z � a � d � k � n � u � x �  � �  � �
   4   k8    �9    �  
 �:"   �;"     	�  6� @					�    9   <     4      � �� � � ��   	       #    @ =   >?    @ A[ sBC   
        