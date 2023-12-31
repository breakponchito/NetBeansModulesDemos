����   4 ~	      #org/openide/filesystems/MIMESupport EMPTY Ljava/lang/ref/Reference;	   	  lastCfo	     lock Ljava/lang/Object;	     ERR Ljava/util/logging/Logger;
      java/lang/Object <init> ()V
      java/lang/ref/Reference get ()Ljava/lang/Object;  4org/openide/filesystems/MIMESupport$CachedFileObject	  ! "  CLEARED
  $ %  clear
  ' (  
resetCache
 * + , - . "org/openide/filesystems/FileObject isValid ()Z
 * 0 1 . isFolder	  3 4 5 fileObj $Lorg/openide/filesystems/FileObject;
  7  8 '(Lorg/openide/filesystems/FileObject;)V
  : ; < getMIMEType '([Ljava/lang/String;)Ljava/lang/String; > java/lang/ref/SoftReference
 = @  A (Ljava/lang/Object;)V
  C D E 
access$000 )()[Lorg/openide/filesystems/MIMEResolver; G java/lang/ref/WeakReference
 F @
 J K L M N java/lang/Class getName ()Ljava/lang/String;
 P Q R S T java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; 	Signature QLjava/lang/ref/Reference<Lorg/openide/filesystems/MIMESupport$CachedFileObject;>; Code LineNumberTable LocalVariableTable this %Lorg/openide/filesystems/MIMESupport; 
freeCaches cfo 6Lorg/openide/filesystems/MIMESupport$CachedFileObject; StackMapTable a java/lang/Throwable findMIMEType K(Lorg/openide/filesystems/FileObject;[Ljava/lang/String;)Ljava/lang/String; fo withinMIMETypes [Ljava/lang/String; lcfo i java/lang/String f MethodParameters getResolvers 
access$100 ()Ljava/util/logging/Logger; 
access$200 
access$300 ()Ljava/lang/ref/Reference; 
access$302 4(Ljava/lang/ref/Reference;)Ljava/lang/ref/Reference; x0 
access$400 <clinit> 
SourceFile MIMESupport.java InnerClasses CachedFileObject | 5org/openide/filesystems/MIMESupport$CachedInputStream CachedInputStream 0          U    V  "   U    V 
 	   U    V                W   3     *� �    X   
    F  G Y        Z [    \   W   �     )� 
YL² � � K�  � +ç M+�,�*� *� #�             X       K  L  M  N   O $ P ( R Y       ] ^     	 ] ^   _    �      `�       (   W           � &�    X   
    U  V � b c  W  X  
   �*� )� 
*� /� �MN� 
Y:² � � N-� *-� 2� � Y*� 6M� -M� � ç :��,+� 9:� 
Y:² �  � � =Y,� ?� � ,� � � ,� #,-� -� -� #ç :���:� 
Y:² �  � � =Y,� ?� � ,� � � ,� #,-� -� -� #ç :	�	��   H K   K P K   a � �   � � �    Z �   � � �   � � �   � � �    X   z    ]  ^  a  b  e  f % g 1 h = j ? l E m S o Z q a r j s x t � u � w � x � z � o � q � r � s � t � u � w � x � z � { Y   *    � d 5     � e f   � ] ^   � g ^  _   f �     K `� � $ h E `� �   * j    `�  	 * j      `   E `�  k   	 d   e    l E  W         � B�    X       � m n  W         � �    X       9 o   W         � 
�    X       9 p q  W         � �    X       9 r s  W   0     *Y� �    X       9 Y        t    u q  W         � �    X       9  v   W   Z      2� FY� H� � FY� H�  � � � Y� � 
� I� O� �    X       >  ?  @  A & D  w    x y       z 
 {  } 
