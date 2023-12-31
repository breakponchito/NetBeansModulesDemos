����   4�
      +org/netbeans/api/editor/mimelookup/MimePath getLookupImpl ()Lorg/openide/util/Lookup;
  	 
   java/lang/String length ()I	     EMPTY -Lorg/netbeans/api/editor/mimelookup/MimePath;
     get n(Lorg/netbeans/api/editor/mimelookup/MimePath;Ljava/lang/String;)Lorg/netbeans/api/editor/mimelookup/MimePath;
     validate (Ljava/lang/CharSequence;)Z  "java/lang/IllegalArgumentException  java/lang/StringBuilder
      <init> ()V " Invalid mimeType="
  $ % & append -(Ljava/lang/String;)Ljava/lang/StringBuilder; ( "
  * + , toString ()Ljava/lang/String;
  .  / (Ljava/lang/String;)V
  1 2 3 getEmbedded A(Ljava/lang/String;)Lorg/netbeans/api/editor/mimelookup/MimePath;	  5 6 7 $assertionsDisabled Z 9 java/lang/AssertionError ; path cannot be null
 8 =  > (Ljava/lang/Object;)V	  @ A B string2mimePath Ljava/util/Map; D E F  G java/util/Map &(Ljava/lang/Object;)Ljava/lang/Object; I java/lang/ref/Reference
 H K  L ()Ljava/lang/Object;
  N O P 	parseImpl -(Ljava/lang/CharSequence;Z)Ljava/lang/Object;
  R S , intern U java/lang/ref/WeakReference
 T = D X Y Z put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; \ test
  ^ _ ` 
startsWith 3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z b 	 c java/lang/CharSequence b e f g charAt (I)C b i j k subSequence (II)Ljava/lang/CharSequence;	  m n o WELL_KNOWN_TYPES Ljava/util/Set; b * r s t u v java/util/Set contains (Ljava/lang/Object;)Z	  x y z REG_NAME_PATTERN Ljava/util/regex/Pattern;
 | } ~  � java/util/regex/Pattern matcher 3(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
 � � � � � java/util/regex/Matcher matches ()Z D � � v containsKey
 �  � java/lang/Object � MimePath.LOOKUP_LOCK
  .	  � � � LOOKUP_LOCK Ljava/lang/String;
  � �  size	  � � � 	mimePaths .[Lorg/netbeans/api/editor/mimelookup/MimePath;
 � � � � � java/lang/System 	arraycopy *(Ljava/lang/Object;ILjava/lang/Object;II)V	  � � � path
  � % � (C)Ljava/lang/StringBuilder;	  � � � mimeType �  	  � � � LOCK Ljava/lang/Object;	  � � B mimeType2mimePathRef � java/util/HashMap
 � 
  �  � B(Lorg/netbeans/api/editor/mimelookup/MimePath;Ljava/lang/String;)V � java/lang/ref/SoftReference
 � =	  � � � LRU Ljava/util/ArrayList;
 � � � � � java/util/ArrayList add (ILjava/lang/Object;)V
 � �
 � � � � remove (I)Ljava/lang/Object; � 
mimeType '
  � % � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � ' does not contain '/'. � Two successive slashes in ' � ' � Empty string after '/' in '
  �  `
 � � � �  org/openide/util/Lookup 
getDefault � 9org/netbeans/modules/editor/mimelookup/MimeLookupCacheSPI
 � � � � lookup %(Ljava/lang/Class;)Ljava/lang/Object;
 � � � � 	getLookup H(Lorg/netbeans/api/editor/mimelookup/MimePath;)Lorg/openide/util/Lookup;	  � � � Lorg/openide/util/Lookup; � 5org/netbeans/modules/editor/mimelookup/MimePathLookup
 � �  � 0(Lorg/netbeans/api/editor/mimelookup/MimePath;)V � 	MimePath[ � ]
  � � v equals
  � � 3 parse
  � � � getInheritedPaths 6(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;  � java/util/List   �
 �  (I)V 	
 iterator ()Ljava/util/Iterator; � java/util/Iterator hasNext L next  � v
  split B(Lorg/netbeans/api/editor/mimelookup/MimePath;)[Ljava/lang/String;
   getGenericPartOfCompoundMimeType &(Ljava/lang/String;)Ljava/lang/String; [Ljava/lang/String;
 
  	
 "#$ lastIndexOf (I)I
 &'$ indexOf
 )*+ 	substring (II)Ljava/lang/String;
 -*. (I)Ljava/lang/String;0 xml2 text/
 45. getMimeType
789: � java/lang/Class desiredAssertionStatus
  
 � > "^[[\p{Alnum}][!#$&.+\-^_]]{1,127}$
 |@AB compile -(Ljava/lang/String;)Ljava/util/regex/Pattern;D java/util/HashSetF applicationH audioJ contentL imageN messageP modelR 	multipartT textV video
XYZ[\ java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
C^ _ (Ljava/util/Collection;)Va &java/util/concurrent/ConcurrentHashMap
` d 8org/netbeans/api/editor/mimelookup/MimePath$AccessorImpl
cf g 2(Lorg/netbeans/api/editor/mimelookup/MimePath$1;)V 	Signature DLjava/util/ArrayList<Lorg/netbeans/api/editor/mimelookup/MimePath;>; MAX_LRU_SIZE I ConstantValue    #Ljava/util/Set<Ljava/lang/String;>; kLjava/util/Map<Ljava/lang/String;Ljava/lang/ref/Reference<Lorg/netbeans/api/editor/mimelookup/MimePath;>;>; oLjava/util/Map<Ljava/lang/String;Ljava/lang/ref/SoftReference<Lorg/netbeans/api/editor/mimelookup/MimePath;>;>; Code LineNumberTable LocalVariableTable StackMapTable MethodParameters prefix mpRef Ljava/lang/ref/Reference; mimePath o LocalVariableTypeTable HLjava/lang/ref/Reference<Lorg/netbeans/api/editor/mimelookup/MimePath;>; i type Ljava/lang/CharSequence; subtype this 
prefixSize 
prefixPath getPath index 	getPrefix 0(I)Lorg/netbeans/api/editor/mimelookup/MimePath;� java/lang/Throwable 
slashIndex validateOnly pathLen 
startIndex #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; sequence getInheritedType lastType inheritedPaths Ljava/util/List; $Ljava/util/List<Ljava/lang/String;>; getIncludedPaths ()Ljava/util/List; p paths mpaths ?Ljava/util/List<Lorg/netbeans/api/editor/mimelookup/MimePath;>; A()Ljava/util/List<Lorg/netbeans/api/editor/mimelookup/MimePath;>; j arr2 genericMimeType arr ii sb Ljava/lang/StringBuilder; arrays mimePathArray 
suffixPath %Ljava/util/List<[Ljava/lang/String;>; J(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>; slashIdx suffix plusIdx array 
access$000 x0 <clinit> 
SourceFile MimePath.java InnerClasses AccessorImpl� -org/netbeans/api/editor/mimelookup/MimePath$1 1  �          � �    � � h   i jk l   m  y z    n o h   n  A B h   o  � �    � �    � �    � B h   p  � �    � �   6 7    	  3 q   S     *� 
*� � � �� *� �   r       �  �  �s        � �  t    u    �   	   q   r     -+� � #� Y� Y� !� #+� #'� #� )� -�*+� 0�   r       �  � ' �s       -v      - � � t    'u   	v   �   	 � 3 q       l� 4� *� � 8Y:� <�� ?*� C � HL+� +� J� � M,� ,�*� MN-� � � Y-� � -�-� M� ?*� Q� TY,� V� W W,�   r   .    �  � ! � 1 � 5 � 7 � = � D � P � U � j �s   *    l � �   ! Kwx  1 ;y   = /z � {     ! Kw| t    �  H@ �  �  �u    �   	  ` q   �     f*� P*[� ]� 4=*� a � (*� d _� *`*� a � h K� 	���Բ l*� p � q � �+� � w+� {� �� ��   r   6    �  �  �  � % � 5 � 8 � > � O � Q U b ds       /}k    f~     f� t    � (� u   	~  �   	   q   q     **� �� ?*� p � � � �*� M� � � �   r          s       * �  t    @u    �     � q  +     t*� �*� Y�� �� �+� �>*`� � �+� �*� �� �*� �*S+� �:*� )� � !� Y� � #/� �,� #� )� Q� ,� Q� �*,� ��   r   2   A ? B C  D .E 5F ;G IH gI nJ sKs   4    t�      tv     t � �   ^�k  ; 9� � t   3 � g       �         u   	v   �       q   d     &*� �*� Y�� �� �*� � �*�� �*�� ��   r      N ? O P Q %Rs       &�    � , q   /     *� ��   r      \s       �     �  q   0     *� ���   r      is       �    5. q   >     
*� �2� ��   r      {s       
�      
�k u   �   �� q   `     � 	� � *� �d2�   r      � � 
� �s       �       �k t    
G u    �    2 3 q  ?     �� �YM�*� �� *� �Y� �� �*� �+� C � HN-� -� J� Y:� D� Y*+� �:*� �+� �Y� �� W W� �� �� �� �� � �� �� �d� �W,ð:,��   | }   } � }   r   2   � � � � &� 7� B� V� _� i� x� }�s   4  4 y   & Wwx  B ;y     ��      � � � t   ' �  ��  H� @ �     � �u    �   
 O P q  b    G� M*� a >666� *� d /� 
6� 	����� 0�� Y� ˶ #**� a � h � �ж #� )��� E*� d /� 2`� /� Y� Ҷ #**� a � h � �Զ #� )�����`� )� Y� ֶ #**� a � h � �Զ #� )�*� h *`� h � ؚ %� Y� !� #*� h � �'� #� )�� *� h � p :,� 0M`6���,�   r   � #  � � � � � � � (� ,� /� 5� ;� B� h� k� q� ~� �� �� �� �� �� �� �� �� �� �� �� �� �$�5�<�B�E�s   R 5  � �  0�k  -�k   G �    G� 7  Cy   <�k  9�k t    �  � 2� A.=� u   	 �  �     �  q   :     � �߶ �� �*� �   r      �s       �       q   �     &*� �YL�*� �� *� �Y*� � �*� �+ðM+�,�     !   ! $ !   r      � � � � !�s       &�   t    �  �F�  + , q   F     � Y� � #*� �� #� #� )�   r      �s       �   �    �   
 _ ` q   �     8*� a +� a � �=+� a � *� d +� d � ������   r      � �   . 0 6s       #}k    8�     8 j t    � � u   	�   j   � , q   �     @�*� �� �� �*� �� *� 
*� �� �L+� �M,� � � ,� � ��   r         " ) 3 >s        @�    " �   ) �� {     ) �� t    F �    �� q   �     A*� �L� �Y+� � �M+� N-� � -� � :,� �� W���,�   r      L M N 0O <P ?Qs   *  0 � �    A�     :��   ,�� {      :��   ,�� t    �   � "h   �   � � q  )    ]� �YN» �Y*� ��:*�:6�� t�d� :6�� `2S����� W�� 52�:� '�� :		�� �	S	� W����� �Y� � �:� :� � �� �:� Y
�h`�:	+� +� � 
	+� #W6

�� /
2� � 	� � 	/� �W	
2� #W�
���,� !,� � 	� � 	/� �W	,� #W	� )� W��`-ð:-��  UV  VZV   r   � $  [ \ ] _ $a /b :c Gb Mg Wi ]m fn ko sp q �t �_ �y �{ �| �~ � �� �� ������*�2�:�A�N�Q�V�s   �  2 �k  s � 	 f )� �  / `�   y}k  � 4�k 
 � x�� 	 � ��  C��  =�  � ���   ]�     ]� �   ]� � {     C��  � ��� t   b �      �   � � � A� �  � 9 � "
� � �      � �u   	�  �  h   �  q   �     T*+�!<� I*� d� ?*/�%=*`�(N*`�,:/� �� 1N� Y� -� #� #� )��   r   & 	  � � � � &� /� :� >� R�s   4   5�k  & ,v �  / #� �    T � �    M�k t    � >      � u    �   
 q   �     "*� �� L=*� �� +*�3S����+�   r      � � � �  �s      
 }k    "y     � t    � 
� u   y  � � q   /     *� �   r       gs       �    �   q   �      ��6� � � 4� Y�;� � �Y� �� �� �Y�<� �=�?� w�CY	� YESYGSYISYKSYMSYOSYQSYSSYUS�W�]� l�`Y�b� ?�cY�eW�   r   & 	   g  m  p $ s . x 7 z � � �� ��t    @ �   ��    c � 
�    