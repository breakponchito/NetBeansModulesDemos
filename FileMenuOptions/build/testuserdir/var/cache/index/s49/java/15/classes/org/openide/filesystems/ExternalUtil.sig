����   4 ~
      java/lang/Object <init> ()V	  	 
   $org/openide/filesystems/ExternalUtil LOG Ljava/util/logging/Logger;	      java/util/logging/Level INFO Ljava/util/logging/Level;
      java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
      java/lang/Throwable 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;
   ! " # $ org/openide/util/Exceptions attachLocalizedMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
  & ' ( getCause ()Ljava/lang/Throwable; * java/lang/IllegalStateException , java/lang/Exception
  . / 0 
getMessage ()Ljava/lang/String;
 + 2  3 *(Ljava/lang/String;Ljava/lang/Throwable;)V
  5 6 7 getStackTrace  ()[Ljava/lang/StackTraceElement;
 + 9 : ; setStackTrace !([Ljava/lang/StackTraceElement;)V
  = > ? fine (Ljava/lang/String;)V
 A B C D E org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; G java/lang/ClassLoader
 A I J K lookup %(Ljava/lang/Class;)Ljava/lang/Object;
 M N O P Q java/lang/Class forName %(Ljava/lang/String;)Ljava/lang/Class;
 M S P T =(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class; V org.openide.filesystems
  X Y Z 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; Code LineNumberTable LocalVariableTable this &Lorg/openide/filesystems/ExternalUtil; 	exception (Ljava/lang/Exception;)V ex Ljava/lang/Exception; MethodParameters copyAnnotation A(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable; newEx Ljava/lang/Throwable; oldEx annotate *(Ljava/lang/Throwable;Ljava/lang/String;)V msg Ljava/lang/String; e ise !Ljava/lang/IllegalStateException; stack orig StackMapTable 	findClass name c Ljava/lang/ClassLoader; 
Exceptions z  java/lang/ClassNotFoundException <clinit> 
SourceFile ExternalUtil.java 0                 [   /     *� �    \        ]        ^ _   	 ` a  [   :     � � *� �    \   
    #  $ ]        b c   d    b   	 e f  [   :     *+� �    \       , ]        g h      i h  d   	 g   i   	 j k  [   ?     *+� W�    \   
    2  3 ]        b h      l m  d   	 b   l   	 j f  [   �     7*M*� %� *� %K���*+� W� N� +Y*� -+� 1:*� 4� 8�,�     )  \   * 
   8  9 	 :  =  C  >  @ ) A 2 B 5 D ]   4  )  n c    o p    7 b h     7 q h   5 r h  s    �  H ) d   	 b   q   	  ?  [   6     � *� <�    \   
    K  L ]        l m   d    l   	 t Q  [   j     � @F� H� FL+� *� L�*+� R�    \       T  V  W  Y ]        u m     v w  s    �  F x     y d    u    {   [   !      	U� W� �    \       G  |    }