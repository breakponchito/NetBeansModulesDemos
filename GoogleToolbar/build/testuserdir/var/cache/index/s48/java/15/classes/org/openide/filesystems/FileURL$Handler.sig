����   4 &
      java/net/URLStreamHandler <init> ()V  org/openide/filesystems/FileURL
  
   (Ljava/net/URL;)V  'org/openide/filesystems/FileURL$Handler Code LineNumberTable LocalVariableTable this )Lorg/openide/filesystems/FileURL$Handler; openConnection ((Ljava/net/URL;)Ljava/net/URLConnection; u Ljava/net/URL; 
Exceptions  java/io/IOException MethodParameters getHostAddress &(Ljava/net/URL;)Ljava/net/InetAddress; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile FileURL.java /Lorg/openide/util/URLStreamHandlerRegistration; protocol nbfs InnerClasses Handler !               /     *� �           0                    =     	� Y+� 	�           2        	       	                 $       6     �           5                                              !  "[ s # $   
    % 	