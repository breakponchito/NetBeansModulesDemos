ΚώΊΎ   4 ¦
      java/lang/Object <init> ()V
  	 
   org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;  9org/openide/util/NetworkSettings$ProxyCredentialsProvider
     lookup %(Ljava/lang/Class;)Ljava/lang/Object;	       org/openide/util/NetworkSettings LOGGER Ljava/util/logging/Logger;  java/lang/StringBuilder
    ,No ProxyCredentialsProvider found in lookup 
     ! append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  #   $ -(Ljava/lang/Object;)Ljava/lang/StringBuilder; & ( thus no proxy information will provide!
  ( ) * toString ()Ljava/lang/String;
 , - . / 0 java/util/logging/Logger warning (Ljava/lang/String;)V
  2 3 4 getProxyHost "(Ljava/net/URI;)Ljava/lang/String;
  6 7 4 getProxyPort
  9 : ; isProxyAuthentication (Ljava/net/URI;)Z
  = > 4 getProxyUserName	 @ A B C D java/util/logging/Level WARNING Ljava/util/logging/Level; F WNo ProxyCredentialsProvider found in lookup {0} thus no proxy information will provide!
 , H I J log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
  L M N getProxyPassword (Ljava/net/URI;)[C P proxyAuthenticationPassword	  R S T authenticationDialogSuppressed Ljava/lang/ThreadLocal;	 V W X Y Z java/lang/Boolean TRUE Ljava/lang/Boolean;
 \ ] ^ _ ` java/lang/ThreadLocal set (Ljava/lang/Object;)V b c d e f java/util/concurrent/Callable call ()Ljava/lang/Object;
 \ h i  remove
 \ k l f get
 V n o p equals (Ljava/lang/Object;)Z
 r s t u * java/lang/Class getName
 , w x y 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;
 \  PROXY_AUTHENTICATION_PASSWORD Ljava/lang/String; ConstantValue 	Signature ,Ljava/lang/ThreadLocal<Ljava/lang/Boolean;>; Code LineNumberTable LocalVariableTable this "Lorg/openide/util/NetworkSettings; u Ljava/net/URI; provider ;Lorg/openide/util/NetworkSettings$ProxyCredentialsProvider; StackMapTable  java/lang/String MethodParameters getAuthenticationUsername getAuthenticationPassword getKeyForAuthenticationPassword 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; suppressAuthenticationDialog 3(Ljava/util/concurrent/Callable;)Ljava/lang/Object; blockOfCode Ljava/util/concurrent/Callable; LocalVariableTypeTable $Ljava/util/concurrent/Callable<TR;>;  java/lang/Throwable 
Exceptions  java/lang/Exception ?<R:Ljava/lang/Object;>(Ljava/util/concurrent/Callable<TR;>;)TR;  isAuthenticationDialogSuppressed ()Z <clinit> 
SourceFile NetworkSettings.java InnerClasses ProxyCredentialsProvider 1       { |  }    O      
 S T  ~     	        /     *· ±           !             	 3 4          >Έ Ά ΐ L+Η #² » Y· Ά Έ Ά "%Ά Ά 'Ά ++Η § +*Ά 1°           /  0  1 0 3        >      2        ό 0 D         	 7 4          >Έ Ά ΐ L+Η #² » Y· Ά Έ Ά "%Ά Ά 'Ά ++Η § +*Ά 5°           >  ?  @ 0 B        >      2        ό 0 D         	  4          DΈ Ά ΐ L+Η #² » Y· Ά Έ Ά "%Ά Ά 'Ά ++Ζ +*Ά 8 	+*Ά <°°           L  M  N 0 P < Q B S        D      8       	 ό 0         	  N          2Έ Ά ΐ L+Η ² ² ?EΈ Ά G+Ζ +*Ά 8 	+*Ά K°°           ^  _  `  b * c 0 e        2      &       	 ό          	  4          AΈ Ά ΐ L+Η #² » Y· Ά Έ Ά "%Ά Ά 'Ά ++Ζ +*Ά 8 O°°           r  s  t 0 v < w ? y        A      5       	 ό 0                      	            !² Q² UΆ [*Ή a L² QΆ g+°M² QΆ g,Ώ                 	                 !            !         X               ~     	        %      ² U² QΆ jΆ m¬             ‘      2      Ά qΈ v³ » \Y· z³ Q±       
    $  %  ’    £ €   
    ₯	