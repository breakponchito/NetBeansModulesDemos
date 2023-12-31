����   4s
      "org/openide/filesystems/StreamPool closeInputStream @(Lorg/openide/filesystems/AbstractFolder;Ljava/io/InputStream;)V
   	 
 closeOutputStream B(Lorg/openide/filesystems/AbstractFolder;Ljava/io/OutputStream;Z)V
     annotateUnclosedStreams ()Z
     get J(Lorg/openide/filesystems/FileObject;)Lorg/openide/filesystems/StreamPool;
      java/lang/Object <init> ()V
     waitForOutputStreamsClosed ((Lorg/openide/filesystems/FileObject;I)Z  4org/openide/filesystems/StreamPool$NotifyInputStream
     ! +(Lorg/openide/filesystems/AbstractFolder;)V
  # $ % iStream ()Ljava/util/Set; ' ( ) * + java/util/Set add (Ljava/lang/Object;)Z
 - . / 0 1 &org/openide/filesystems/AbstractFolder getFileSystem &()Lorg/openide/filesystems/FileSystem;
  3  4 J(Lorg/openide/filesystems/FileSystem;)Lorg/openide/filesystems/StreamPool; 6 *org/openide/filesystems/AbstractFileSystem	 5 8 9 : info 1Lorg/openide/filesystems/AbstractFileSystem$Info;
 - < = > getPath ()Ljava/lang/String; @ A B C D /org/openide/filesystems/AbstractFileSystem$Info inputStream )(Ljava/lang/String;)Ljava/io/InputStream;
  F G H 
access$000 N(Lorg/openide/filesystems/StreamPool$NotifyInputStream;Ljava/io/InputStream;)V J $org/openide/filesystems/StreamPool$1
 I  
  M N  waitForInputStreamsClosed P 5org/openide/filesystems/StreamPool$NotifyOutputStream
 O R  S ,(Lorg/openide/filesystems/AbstractFolder;Z)V
  U V % oStream @ X Y Z outputStream *(Ljava/lang/String;)Ljava/io/OutputStream;
 O \ ] ^ 
access$200 P(Lorg/openide/filesystems/StreamPool$NotifyOutputStream;Ljava/io/OutputStream;)V ` $org/openide/filesystems/StreamPool$2
 _  	  c d e fo2StreamPool Ljava/util/Map; g h i  j java/util/Map &(Ljava/lang/Object;)Ljava/lang/Object;	  l m e fs2StreamPool	  o p q iStreams Ljava/util/Set; ' s t u iterator ()Ljava/util/Iterator; w x y z  java/util/Iterator hasNext w | } ~ next ()Ljava/lang/Object;
  � � � getException ()Ljava/lang/Exception;
 � � � � � $org/openide/filesystems/ExternalUtil annotate A(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;	  � � q oStreams
 O �
  � � � isStreamOpen (Ljava/util/Set;)Z
  � � � waitForStreams 7(Lorg/openide/filesystems/FileObject;ILjava/util/Set;)Z
 � � � � � java/lang/System currentTimeMillis ()J
  � � � wait (J)V � java/lang/InterruptedException
 � � � � � java/lang/Thread currentThread ()Ljava/lang/Thread;
 � � �  	interrupt	  � � � LOG Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level FINE Ljava/util/logging/Level; � Open streams {0} for {1}
 � � � � � java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V ' � �  isEmpty
   g � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � org/openide/util/WeakSet
 � 
  � �  find
  � � 4
  � � � removeStreams 3(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)V
  � � � removeStreamPools s(Lorg/openide/filesystems/StreamPool;Lorg/openide/filesystems/StreamPool;Lorg/openide/filesystems/AbstractFolder;)V
 - � � � outputStreamClosed (Z)V ' � � + remove g � � j	  �  � Ljava/lang/Boolean;
 � � � �  java/lang/Boolean booleanValue � /org.openide.filesystems.annotateUnclosedStreams
 � � � � getProperty &(Ljava/lang/String;)Ljava/lang/String;
 � � � � parseBoolean (Ljava/lang/String;)Z
 � � � � valueOf (Z)Ljava/lang/Boolean;	  � � � $assertionsDisabled Z � java/lang/AssertionError
 � 	 � � � � FALSE
 � � � > toString
 + java/lang/String equals
	  java/lang/Class desiredAssertionStatus
 > getName
 � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; java/util/WeakHashMap
  	Signature YLjava/util/Map<Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/StreamPool;>; YLjava/util/Map<Lorg/openide/filesystems/FileSystem;Lorg/openide/filesystems/StreamPool;>; &Ljava/util/Set<Ljava/io/InputStream;>; 'Ljava/util/Set<Ljava/io/OutputStream;>; Code LineNumberTable LocalVariableTable this $Lorg/openide/filesystems/StreamPool; createInputStream ?(Lorg/openide/filesystems/AbstractFolder;)Ljava/io/InputStream; abstractFileSystem ,Lorg/openide/filesystems/AbstractFileSystem; fo (Lorg/openide/filesystems/AbstractFolder; retVal Ljava/io/InputStream; StackMapTable( java/io/InputStream* java/lang/Throwable 
Exceptions- java/io/FileNotFoundException MethodParameters createOutputStream A(Lorg/openide/filesystems/AbstractFolder;Z)Ljava/io/OutputStream; fireFileChanged Ljava/io/OutputStream;4 java/io/OutputStream6 java/io/IOException $Lorg/openide/filesystems/FileObject; fs $Lorg/openide/filesystems/FileSystem; (Ljava/lang/Exception;)V 
annotation Ljava/lang/Exception; itIs Ljava/util/Iterator; nis 6Lorg/openide/filesystems/StreamPool$NotifyInputStream; itOs nos 7Lorg/openide/filesystems/StreamPool$NotifyOutputStream; ex LocalVariableTypeTable +Ljava/util/Iterator<Ljava/io/InputStream;>; ,Ljava/util/Iterator<Ljava/io/OutputStream;>; isInputStreamOpen isOutputStreamOpen timeInMs I  Ljava/lang/InterruptedException; J till interrupted streams Ljava/util/Set<*>; :(Lorg/openide/filesystems/FileObject;ILjava/util/Set<*>;)Z set (Ljava/util/Set<*>;)Z strPool (()Ljava/util/Set<Ljava/io/InputStream;>; )()Ljava/util/Set<Ljava/io/OutputStream;>; os foPool fsPool foSet fsSet is stream Ljava/lang/Object; isIStreamEmpty isOStreamEmpty annotateProp Ljava/lang/String; 	assertsOn 
access$100 x0 
access$300 
access$400 x1 x2 
access$500 <clinit> 
SourceFile StreamPool.java InnerClasses NotifyInputStream Info NotifyOutputStream 0       � �   
 d e     
 m e     
  �    p q      � q     � �          3     *� �      
    .  /          	        xLYM�*� *з � +� Y*� L*� � "+� & W*� ,� 2� "+� & W,ç N,�-�+� � "*� ,� 5M+� ,� 7*� ;� ? � E� � IY*� KL+�   ? B   B E B      6    >  @  A  B  C , D = F G H N I V J j K m L v V      V  !    x"#    v$% &    � =' D)� %+    ,.   "  	/0   /     �MYN�*� *з L� :*� *з � ,� OY*� QM*� � T,� & W*� ,� 2� T,� & W-ç 
:-��,� O� "*� ,� 5N,� O-� 7*� ;� W � [� � _Y*� aM,�   N Q   Q U Q      :    g  i  j  k # m - n ; o L q X s _ t g u { v ~ w � �   *  g  !    �"#     �1 �   �$2 &    � L3 D)� %+    5.   	" 1   ) �     7     � b*� f � �          �       "7  .   "   ) � 4    7     � k*� f � �          �       89  .   8    �:   �     �� � �YM�*� n� 7*� n� r N-� v � $-� { � :� :� 
+� �W���*� �� 7*� �� r N-� v � $-� { � O:� �:� 
+� �W���,ç 
:,���   � �   � � �      V    �  �  �  �  �  � & � 1 � 8 � = � D � G � N � X � a � l � s � x �  � � � � �   R  8 ;<   *=>  1 ?@  s ;<  X *A>  l BC    �     �D< E      *=F  X *AG &   + 	�   w� & � �  w� & O� D)� .   D   H     2     *� n� ��          �          I     2     *� �� ��          �           N     H     
+*� n� ��          �        
     
"7    
JK .   	"  J         H     
+*� �� ��          �        
     
"7    
JK .   	"  J   
 � �   v     sYN�,� �� _� ��a76� �e7	�� � � �� :	6���� 	� �� �,� �� � �� ��� Y,SY*S� �-ì-ì:
-�
�  ) 0 3 �  g l   h k l   l p l      N    �  �  �  �  �  � & � ) � 0 � 3 � 5 � 8 � ; � @ � F � M � d � h � l �   H  5 DL 	   �M   TNM   QO �    s"7     sJK    sP q E       sPQ &    �  � I �� 
� !C).   "  J  P     R 
 � �    Z     *� *� � � � �          �       S q  E       SQ  &    @.   S     T 
      t     &� b*� f � L+� � b*� Y� �YL� � W+�          �  �  � $ �       &"7    U &    � $ .   "   
  4    t     &� k*� f � L+� � k*� Y� �YL� � W+�             $       &89    U &    � $ .   8    $ %    R     *� n� *� �Y� Ƶ n*� n�         
           &       V  V %    R     *� �� *� �Y� Ƶ �*� ��                    &       W 
 	 
    �     A*� �N*� ,� �:-� 
-� �� :� � �� :+� �-*� �*� Ա      "       ,  4! ;" @#   H    A"#     AX2    A1 �   <Y   3Z   %[ q  , \ q &    �   @ '�  '@ '.   "  X  1   
      �     8*� �M*� ,� �N,� 
,� n� :-� 
-� n� :+� �-,*� б         & ' ( ) )+ 1, 7-   >    8"#     8]%   3Y   +Z   [ q  ) \ q &    �   @ '�  '@ '.   	"  ]   * � �    q     +� +,� � W*� *,� � W�         0 1 4 5 7        \ q     [ q    ^_ &    .   \  [  ^   * � �   2     �+� +� n� +� n� � � � >+� +� �� +� �� � � � 6� � � b,� � W*� *� n� *� n� � � � >*� *� �� *� �� � � � 6� � � k,� ,� � W�      & 	  : ; ;= D> NA kB �D �E �G   4    �Z     �Y    �"#   �` �  ; ea � &    @� @� @@.   Z  Y  "   
      �     ^� �� 
� ݶ �� �K*� � � �<� � Y<� � �Y� ��� #*� � � �� �*� � � � � ݲ ݶ �      & 	  � � � � � � 3� 7� W�      Kbc    ?d � &    � %@e     /     *� �          %       f7  g           � �          %h 
    E     *+� �          %        f#     i2    j � k     :     *+� �          %       f#     i%  l     _      0�� � � ��
�� ��Y�� b�Y�� k�          %  &  ' % (&    @ m   no   *   p  @ 5q	 I       O r  _      