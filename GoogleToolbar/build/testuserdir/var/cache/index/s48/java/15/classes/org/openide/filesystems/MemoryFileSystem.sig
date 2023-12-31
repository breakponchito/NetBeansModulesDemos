����   4�	      (org/openide/filesystems/MemoryFileSystem id J
   	 
 
logMessage (Ljava/lang/String;)V
     getOrCreateEntry D(Ljava/lang/String;)Lorg/openide/filesystems/MemoryFileSystem$Entry;
    
 setSystemName
      *org/openide/filesystems/AbstractFileSystem <init> ()V	     COUNT (Ljava/util/concurrent/atomic/AtomicLong;
      ! &java/util/concurrent/atomic/AtomicLong incrementAndGet ()J # java/util/Date
 " 	  & ' ( created Ljava/util/Date;
  * + , 	initEntry ()Ljava/util/Map;	  . / 0 entries Ljava/util/Map;	  2 3 4 attr 1Lorg/openide/filesystems/AbstractFileSystem$Attr;	  6 7 8 list 1Lorg/openide/filesystems/AbstractFileSystem$List;	  : ; < change 3Lorg/openide/filesystems/AbstractFileSystem$Change;	  > ? @ info 1Lorg/openide/filesystems/AbstractFileSystem$Info; B java/lang/StringBuilder
 A  E MemoryFileSystem
 A G H I append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 K L M N O java/lang/String valueOf (J)Ljava/lang/String;
 A Q R S toString ()Ljava/lang/String;
  U V 
 _setSystemName X  java/beans/PropertyVetoException
 W Z [  printStackTrace
   ^ java/lang/StringBuffer
 ] 
 ] a H b ,(Ljava/lang/String;)Ljava/lang/StringBuffer; d /
 K f g h endsWith (Ljava/lang/String;)Z	 j k l m n .org/openide/filesystems/MemoryFileSystem$Entry data [B
 K p q r length ()I
 K t u v charAt (I)C
 K x y z 	substring (I)Ljava/lang/String;
  | } h isValidEntry  � � � � java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;
 j �  
  � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  � } � ((Ljava/lang/String;Ljava/lang/Boolean;)Z
  � � � findReference -(Ljava/lang/String;)Ljava/lang/ref/Reference;
 � � � � � java/lang/ref/Reference ()Ljava/lang/Object; � "org/openide/filesystems/FileObject
 � � � � isValid ()Z	  � � � ERR Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level FINE Ljava/util/logging/Level;
 � � � � � java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z
 � � � � � java/lang/Boolean booleanValue � entry: 
 A � H � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; �  isValidReference.fo:  � null � valid � invalid
 � � � � � org/openide/util/Enumerations empty ()Ljava/util/Enumeration;	 j � � 0 attrs  � � � keySet ()Ljava/util/Set;
 � � � � � java/util/Collections enumeration /(Ljava/util/Collection;)Ljava/util/Enumeration; � java/util/HashSet
 �  � � � � � java/util/Set iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext � � � � next
 K � � h 
startsWith
 K � � S trim
 K � � � indexOf (II)I
 K � y � (II)Ljava/lang/String; � � � � add (Ljava/lang/Object;)Z � � � � toArray (([Ljava/lang/Object;)[Ljava/lang/Object; � [Ljava/lang/String;	 � � � � FALSE Ljava/lang/Boolean; � File already exists:   java/io/IOException
 ] Q
 � � Folder already exists:   � remove	 No file to delete:  java/io/ByteArrayInputStream

  ([B)V	 j ( last mimeType -org/openide/filesystems/MemoryFileSystem$1Out
  ?(Lorg/openide/filesystems/MemoryFileSystem;Ljava/lang/String;)V "The file to rename does not exist. Cannot rename to existing file java/util/ArrayList  ! � entrySet
# $ (Ljava/util/Collection;)V
 �' java/util/Map$Entry&)* � getKey&,- � getValue/ &java/util/concurrent/ConcurrentHashMap
. 2 *org/openide/filesystems/MemoryFileSystem$1
14 5 -(Lorg/openide/filesystems/MemoryFileSystem;)V7  -> 
 �9: 
 fine
<=>? S java/lang/Class getName
 �ABC 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;
  F /org/openide/filesystems/AbstractFileSystem$InfoH 1org/openide/filesystems/AbstractFileSystem$ChangeJ /org/openide/filesystems/AbstractFileSystem$ListL /org/openide/filesystems/AbstractFileSystem$Attr 	Signature SLjava/util/Map<Ljava/lang/String;Lorg/openide/filesystems/MemoryFileSystem$Entry;>; Code LineNumberTable LocalVariableTable this *Lorg/openide/filesystems/MemoryFileSystem; s Ljava/lang/String; 
Exceptions MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value deprecation ex "Ljava/beans/PropertyVetoException; StackMapTable ([Ljava/lang/String;)V i I 	resources sb Ljava/lang/StringBuffer; x 0Lorg/openide/filesystems/MemoryFileSystem$Entry; n Zj java/lang/Objectl java/lang/Throwable ref Ljava/lang/ref/Reference; expectedResult retval fo $Lorg/openide/filesystems/FileObject; LocalVariableTypeTable @Ljava/lang/ref/Reference<+Lorg/openide/filesystems/FileObject;>; getDisplayName 
isReadOnly 
attributes +(Ljava/lang/String;)Ljava/util/Enumeration; name ?(Ljava/lang/String;)Ljava/util/Enumeration<Ljava/lang/String;>; children '(Ljava/lang/String;)[Ljava/lang/String; child f l Ljava/util/Set; #Ljava/util/Set<Ljava/lang/String;>; 
createData message createFolder delete deleteAttributes folder inputStream )(Ljava/lang/String;)Ljava/io/InputStream; arr n� java/io/FileNotFoundException lastModified $(Ljava/lang/String;)Ljava/util/Date; d lock markUnimportant &(Ljava/lang/String;)Ljava/lang/String; outputStream *(Ljava/lang/String;)Ljava/io/OutputStream; readAttribute 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; attrName readOnly rename '(Ljava/lang/String;Ljava/lang/String;)V each Ljava/util/Map$Entry; oldName newName clone Ljava/util/ArrayList; YLjava/util/Map$Entry<Ljava/lang/String;Lorg/openide/filesystems/MemoryFileSystem$Entry;>; pLjava/util/ArrayList<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/openide/filesystems/MemoryFileSystem$Entry;>;>; Ljava/lang/Override; renameAttributes size (Ljava/lang/String;)J unlock writeAttribute 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V Ljava/lang/Object; U()Ljava/util/Map<Ljava/lang/String;Lorg/openide/filesystems/MemoryFileSystem$Entry;>; 
access$000 n(Lorg/openide/filesystems/MemoryFileSystem;Ljava/lang/String;)Lorg/openide/filesystems/MemoryFileSystem$Entry; x0 x1 
access$100 
access$200 -(Lorg/openide/filesystems/MemoryFileSystem;)J <clinit> 
SourceFile MemoryFileSystem.java InnerClasses Entry Attr List Change Info Out� 0org/openide/filesystems/MemoryFileSystem$Handler Handler� /org/openide/filesystems/MemoryFileSystem$Mapper Mapper 0   EGIK   � �              ' (    / 0 M   N "  V 
 O   >     *+� �   P   
    J  KQ       RS     TU V     WW   T  X    Y Z[ s[    O   �     [*� *� � � *� "Y� $� %**� )� -**� 1**� 5**� 9**� =*� AY� CD� F*� � J� F� P� T� L+� Y�  5 R U W P   6    N  >  C  F ! O & P + Q 0 R 5 V R Y U W V X Z ZQ     V \]    [RS  ^    � U    W  _ O   �     I*� \� ]Y� _M>+�� 7,+2� `W+2c� e� *+2� � i� *+2� �� i���ɱ   P   & 	   ^  `  b  c  e ' g 5 i B b H lQ   *   :`a    IRS     Ib �   =cd ^    �    � ]  &� W   b      O       _+� o� +� s/� 	+� wL*+� {=*� -YN�*� -+� ~ � j:� � � jY+� �:*� -+� � W-ð:-��  $ W X   X \ X   P   * 
   p  q  t  u $ v 3 x < y F z S } X ~Q   *  3 %ef    _RS     _gU   B }h ^   " � $i j�    Ki kW   g    } h O   ;     *+� ��   P       �Q       RS     gU W   g    } � O  �     �+� o� � >+� o� +� s/� 	+� wL*� -+� ~ � j::� (*+� �:� � �� �:� � �� >� �� �� �� G,� C,� �� ;� AY� C�� F� ��� F� �� � �� �� �� F� P� �   P   >    �  �  � $ � 3 � 6 � ; � B � G � Q � ` � x � � � � � � �Q   H  B mn    �RS     �gU    �o �   �ph  3 ef  6 |qr s     B mt ^   @ 
@� � 9 j � �@�  w AL A�    K � j �  A KW   	g  o   u S O   -     D�   P       �Q       RS   v � O   ,     �   P       �Q       RS   wx O   b     *+� {� � ��*+� � Ĺ � � ˰   P       �  �  �Q       RS     yU ^    W   y  M   z {| O  �  	   �+� o� +� s/� 	+� wL+� o�  +c� e� � AY� C+� Fc� F� PL� �Y� �M*� -YN�*� -� � � � :� � � i� � � K:+� � +� � o� G/+� o� �6:� +� o� �:� +� o� w:� � o� ,� � W���,� K� � � �-ð:-��  J � �   � � �   P   J    �  �  � ' � ; � C � J � p � � � � � � � � � � � � � � � � � � � � �Q   >  � 7`a  � 4}U  p WyU    �RS     �~U  C �� s     C �� ^   ( 	#�  �i �� ( K� $ K
� � OkW   ~   � 
 O   �     6*+� �� �� "� ]Y� _M,�� `+� `W� �Y,���*+� �� i�   P       �  �  �  � * � 5 �Q       �d    6RS     6yU ^    *V     �W   y   � 
 O   �     5*+� �� �� #� ]Y� _M,� `+� `W� �Y,���*+� � i�   P       �  �  �  � + � 4 �Q       �d    5RS     5yU ^    +V     �W   y   � 
 O   o     **� -+� � � �Y� AY� C� F+� F� P���   P       �  � ) �Q       *RS     *yU ^    )V     �W   y   � 
 O   5      �   P       �Q       RS     yU W   y   � h O   P     *+� � i� � �   P       �Q       RS     yU ^    @W   y   �� O   r     *+� � iM,� �M�
Y,��   P       � 	 �  �  �Q        RS     yU  	 � n ^    � �V    �W   y   �� O   j     *+� �M,� 
*� %� ,�   P   
    � 	Q        RS     yU  	 � ( ^    �  "@ "W   y   � 
 O   5      �   P      Q       RS     yU V     �W   y   � 
 O   5      �   P      Q       RS     yU W   y   � O   H     *+� � �� ~ � K�   P      Q       RS     yU W   y   �� O   >     
�Y*+��   P      Q       
RS     
yU V     �W   y  �� O   f     *+� {� *+� � �,� ~ � �   P      Q        RS     yU    �U ^    @iW   	y  �   � h O   6     �   P      "Q       RS     yU W   y   �� O  �     �*+� {� � �Y��*,� {� � �Y��,� o� ,� s/� 	,� wM�Y*� -� �"N-�%:� � � n� � �&:�( � K+� � N*� -�( � W� AY� C,� F�( � K+� o� w� F� P:*� -�+ � j� � W����   P   :   ( ) , - &0 71 =4 N5 j6 {7 �8 �9 �; �<Q   >  � gU  j \��    �RS     ��U    ��U  N |�� s     j \��  N |�� ^    �  �� q� V     �W   	�  �  X    �   �� O   ?      �   P      ?Q        RS     �U    �U W   	�  �   �� O   g     *+� � iM,� 	� ,���   P   
   B 	DQ        RS     yU  	 � n ^   
 � �BW   y   � 
 O   5      �   P      HQ       RS     yU W   y   �� O   ]     *+� � �,-� � W�   P   
   L MQ   *    RS     yU    �U    Z� V     �W   y  �  Z    + , O   X     � �� �� �� �.Y�0��1Y*�3�   P      P Q TQ       RS  ^    M   � 
 	 
 O   _     � ]Y� _L+6� `*� `W� �+��8�   P      � � � �Q       �U    cd W   � �� O   :     *+� �   P       :Q       �S     �U � 
 O   /     *� �   P       :Q       �U  �� O   /     *� �   P       :Q       �S   �  O   2      �;�@� �� Y�D� �   P   
    ;  = �   ��   R 
 j � K �	I �	G �	E �	  �  & �	1      � � � � 