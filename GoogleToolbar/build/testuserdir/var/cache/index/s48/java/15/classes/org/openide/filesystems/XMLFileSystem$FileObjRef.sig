����   4�	      0org/openide/filesystems/XMLFileSystem$FileObjRef content Ljava/lang/Object;
   	 
 createAbsoluteUrl "(Ljava/lang/String;)Ljava/net/URL;
      java/lang/ref/WeakReference <init> (Ljava/lang/Object;)V	     isFolder B	     
urlContext	     fo $Lorg/openide/filesystems/FileObject;
      ! 2org/openide/filesystems/XMLFileSystem$ResourceElem 
getContent ()[B
  # $ % getAttr '(Z)Lorg/openide/filesystems/XMLMapAttr;
 ' ( ) * + "org/openide/filesystems/XMLMapAttr isEmpty ()Z	  - . / foAttrs $Lorg/openide/filesystems/XMLMapAttr;
  1  +
  3 4 5 getURI ()Ljava/lang/String;
  7 8 9 getUrlContext ()[Ljava/net/URL;
  ; < = setUrlContext ([Ljava/net/URL;)V
 ' ?  @ ()V
 ' B C D entrySet ()Ljava/util/Set; F G H I J java/util/Set iterator ()Ljava/util/Iterator; L M N O + java/util/Iterator hasNext L Q R S next ()Ljava/lang/Object; U java/util/Map$Entry T W X S getKey T Z [ S getValue
 ' ] ^ _ put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 a b c d e java/lang/Object equals (Ljava/lang/Object;)Z
 g h i j k org/openide/util/Enumerations empty ()Ljava/util/Enumeration; m java/util/HashSet
 ' o p D keySet
 l r  s (Ljava/util/Collection;)V
 u v w x y java/util/Collections enumeration /(Ljava/util/Collection;)Ljava/util/Enumeration; { [Ljava/net/URL; } java/net/URL  layers
 � b � java/lang/String
  � � 9 	getLayers	 � � � � � 'org/openide/filesystems/MultiFileObject attrAskedFileObject Ljava/lang/ThreadLocal;
 � � � � S java/lang/ThreadLocal get � "org/openide/filesystems/FileObject
 � � �  set
 ' � � � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � java/io/ByteArrayInputStream
 � �  � ([B)V
  � � � createAbsoluteConnection ,(Ljava/lang/String;)Ljava/net/URLConnection;
 � � � � � java/net/URLConnection getInputStream ()Ljava/io/InputStream; � java/io/IOException � [B � java/io/FileNotFoundException
 � �  � (Ljava/lang/String;)V
 � � � � 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;
 | �  � #(Ljava/net/URL;Ljava/lang/String;)V
 | � � � openConnection ()Ljava/net/URLConnection;
 � � � @ connect
 | �
 � � � � � $org/openide/filesystems/ExternalUtil copyAnnotation A(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
 � � � � getContentLength ()I
 � � � � @ java/io/InputStream close
 | � � 5 getProtocol � jar
 � � � � �  org/openide/filesystems/FileUtil getArchiveFile (Ljava/net/URL;)Ljava/net/URL; � file
 | � � 5 toExternalForm
 � � � � � java/net/URI create "(Ljava/lang/String;)Ljava/net/URI;
 � � � � � org/openide/util/BaseUtilities toFile (Ljava/net/URI;)Ljava/io/File;	  � � � lastFile Ljava/io/File;
 � b � java/io/File � java/util/Date
 � � � � lastModified ()J
 � �  � (J)V	  � � � lastFileDate Ljava/util/Date;  "java/lang/IllegalArgumentException %org/openide/filesystems/XMLFileSystem
 5 java/lang/Class getName
	
 java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 java/util/logging/Level FINE Ljava/util/logging/Level; java/lang/StringBuilder
 ? 	#121777: 
 append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
!" 5 toString
	$%& log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V	 ()* NETWORK_PROTOCOLS Ljava/util/Set; F,- e contains
 /01 timeFromDateHeaderField  (Ljava/net/URL;)Ljava/util/Date;
 �34 � getLastModified6 http8 https: ftp
<=>?@ java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List; 	Signature TT; #Ljava/util/Set<Ljava/lang/String;>; '(Lorg/openide/filesystems/FileObject;)V Code LineNumberTable LocalVariableTable this 2Lorg/openide/filesystems/XMLFileSystem$FileObjRef; LocalVariableTypeTable 7Lorg/openide/filesystems/XMLFileSystem$FileObjRef<TT;>; MethodParameters (TT;)V isInitialized StackMapTable 
initialize 7(Lorg/openide/filesystems/XMLFileSystem$ResourceElem;)V res 4Lorg/openide/filesystems/XMLFileSystem$ResourceElem; tmp attacheAttrs '(Lorg/openide/filesystems/XMLMapAttr;)Z 	attrEntry Ljava/util/Map$Entry; prev attrs it Ljava/util/Iterator; ch Z +Ljava/util/Iterator<Ljava/util/Map$Entry;>; ctx 
attributes s -()Ljava/util/Enumeration<Ljava/lang/String;>; readAttribute &(Ljava/lang/String;)Ljava/lang/Object; objs [Ljava/lang/Object; attrName Ljava/lang/String; topFO fm java/lang/Throwable )(Ljava/lang/String;)Ljava/io/InputStream; x Ljava/io/IOException; fnfe Ljava/io/FileNotFoundException; name is Ljava/io/InputStream; ex 
Exceptions iox u Ljava/net/URL; conn Ljava/net/URLConnection; uri uc retVal getSize (Ljava/lang/String;)J urlConnection $(Ljava/lang/String;)Ljava/util/Date; all iex $Ljava/lang/IllegalArgumentException; protocol url retval urlConn ie 
access$000 T(Lorg/openide/filesystems/XMLFileSystem$FileObjRef;Ljava/lang/String;)Ljava/net/URL; x0 x1 
access$100 F(Lorg/openide/filesystems/XMLFileSystem$FileObjRef;)Ljava/lang/Object; 
access$102 X(Lorg/openide/filesystems/XMLFileSystem$FileObjRef;Ljava/lang/Object;)Ljava/lang/Object; <clinit> J<T:Lorg/openide/filesystems/FileObject;>Ljava/lang/ref/WeakReference<TT;>; 
SourceFile XMLFileSystem.java InnerClasses 
FileObjRef ResourceElem� java/util/Map Entry           A   B       . /               )* A   C 
 � �   
 � �     D E   u     *+� *� *� *+� �   F      8 4 
5 9 :G       HI        J       HK      B L      A   M N + E   U     *� � � �   F      =G       HI  J       HK  O    @ PQ E   �     G*+� � +� "M,� ,� &� *,� ,*+� 0� � �� *� � *+� 2� *+� 6� :�   F   & 	  A C E F I /K 6L >O FPG        GHI     GRS   9T / J       GHK  O   ! �  'K �      '  L   R     + E   U     *� � � �   F      SG       HI  J       HK  O    @ UV E  o     �+� 
+� &� �*� ,� *� 'Y� >� ,+� A� E M>,� K � N,� P � T:*� ,� V � Y � \:� � Y � � Y � `� � �>����   F   2   X Y \ ] ` )a +b 4c ?d Vf |g iG   >  ? =WX  V &Y     �HI     �Z /  ) X[\  + V]^ J       �HK   ) X[_ O   D 	�  L� :   ' L T a NC�     ' L T a � L   Z    < = E   {     +�� +�� *+� � 
*+2� �   F      m n o q tG       HI     ` { J       HK  O    L   `   a k E   �     *� ,� � f�� lY*� ,� n� qL+� t�   F      w x z |G      b*    HI  J      bC    HK  O    A   c  � 9 E   �     **� � �*� � z� *� � z�� |Y*� � |S�   F      � � 	� � �G       *HI  J       *HK  O    	 de E  3     e+~� �� *� ��*� ,� �� �� �� �M,� 
*� � ,N� �� �� aY-SY+S:*� ,+� �:� �,� ��:� �,� ��  5 O Y   Y [ Y   F   6   � 	� � � � !� .� 5� C� O� V� Y� b�G   4  C fg    eHI     ehi  ! Dj   . 7k  J       eHK  O   $ �  �@ �� +   � � � lL   h    �n E  >     hMN*� � � �Y�� ��*� � �� *+� �� �M� :N*� � �� � �Y*� � �� �M,� � �Y+� �:-� 
-� �W�,�    ) , � F   F   � � � � �  � )� ,� .� 1� ;� J� N� X� \� c� f�G   >  . op  X qr    hHI     hsi   ftu   dvp J       hHK  O    �  � �U ��  �� w     �L   s    � � E       �MN*� � �� �*� � �:*� �:� @:�66� -2:	� |Y	� �� �M,� �� :
M
N����,� .� |Y� �� �M,� �� :� �Y+� �:� �W�,�  > Q T � e v y � F   b   � � � � � � � $� >� M� Q� T� V� X� [� a� e� r� v� y� {� �� �� ��G   f 
 V xp 
 > yz 	 � or  { xp    �HI     �si   �{|   �vp   y}i   s~ { J       �HK  O   k �  � ��  	  � � � � z z  � # 
  � � � � z z |  ��    � � � � z  W �w     �L   s    	 
 E        R*� � �� �*� � �M*� �N-� -�� � |Y,� �� � |Y-2,� �:�N� �Y+� �:-� �W�   < = � F   * 
  � 
� � � � :� =� >� H� O�G   H   $~ {  : z  H 
or  > vp    RHI     Rsi   >}i J       RHK  O   $ �  � z
J |�    � �  �w     �L   s   �� E       K*� � 	�*� � �� *� � ����*� � �� %*+� �M,� ƅB,� �� �!�:,� �� ��M	�  - 3 <   < > <   ' : H � < H H � F   6     	   ' - 3 : < E H IG      - �|    KHI     Ksi J       KHK  O   ( 	�    � � l�    �  � L   s    �� E  ^     �MN*� � ��  *� �:� �� 
2� M� *+� M� :M,� �,� �:�� �� ,� �:� � ,M,� �:�� �� _,� ܸ ߸ �:� � � � � �Y� �� �� �� �N� @:����Y��,�� �#� �'�+ � 	*,�.N-� � �Y	� �N-�  + 1 4 � n � � � F   ~     ! # $ % (& +( 1+ 4) 6* 8. </ B0 L1 R2 ^3 d6 n8 z9 �: �; �= �@ �> �? �@ �A �B �F �G �JG   f 
  � {  6 �p  R Tz  z #k �  � %o�  B ��i    �HI     �si   ��z   �� � J       �HK  O   N � & | � z@ |� H �� # � |@ |� � 4 ��    � | � �  �)� L   s   01 E   �     +� �M� �Y,�2� ��N� �Y	� ��      � F      Q R S TG   *   �|   	�p    HI     �z J       HK  O    Q �L   �  �� E   :     *+� �   F      0G       �I     �i w     ��� E   /     *� �   F      0G       �I  �� E   ;     *+Z� �   F      0G       �I     �   � @ E   L      ,� lY� �Y5SY7SY9S�;� q�'� �� ��   F       # ' A   ��   ��     � 
 � 
 T��	