����   4 8	      "org/openide/filesystems/NbfsUtil$1 val$file Ljava/lang/String;
  	 
   java/lang/Object <init> ()V  java/net/URL  org/openide/filesystems/FileURL  nbfs  nbhost  'org/openide/filesystems/FileURL$Handler
  	
     U(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
     run ()Ljava/net/URL;   'java/security/PrivilegedExceptionAction (Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this $Lorg/openide/filesystems/NbfsUtil$1; MethodParameters 	Signature 
Exceptions + java/lang/Exception ()Ljava/lang/Object; KLjava/lang/Object;Ljava/security/PrivilegedExceptionAction<Ljava/net/URL;>; 
SourceFile NbfsUtil.java EnclosingMethod 2  org/openide/filesystems/NbfsUtil 4 5 getURL 4(Lorg/openide/filesystems/FileObject;)Ljava/net/URL; InnerClasses Handler                !  "   4     
*+� *� �    #       A $       
 % &   '     (         "   B     � Y*� � Y� � �    #       D $        % &   )     *A  ,  "   /     *� �    #       A $        % &   )     *  (    - .    / 0    1 3 6              7 	