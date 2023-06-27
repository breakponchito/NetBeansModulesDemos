����   4M	      org/openide/util/NbBundle brandingToken Ljava/lang/String;	   	 
 LOG Ljava/util/logging/Logger;
      java/lang/Object <init> ()V   [a-z][a-z0-9]*(_[a-z][a-z0-9]*)*
      java/lang/String matches (Ljava/lang/String;)Z  "java/lang/IllegalArgumentException  java/lang/StringBuilder
    Malformed branding token: 
  ! " # append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  % & ' toString ()Ljava/lang/String;
  )  * (Ljava/lang/String;)V
 , - . / 0 java/util/Locale 
getDefault ()Ljava/util/Locale;
  2 3 4 	getLoader ()Ljava/lang/ClassLoader;
  6 7 8 getLocalizedFile ](Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/net/URL; : (org/openide/util/NbBundle$LocaleIterator
 9 <  = (Ljava/util/Locale;)V ? java/util/ArrayList
 > A  B (I)V
  D E F replace (CC)Ljava/lang/String;	  H I J localizedFileCache Ljava/util/Map; L M N O P java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; R java/util/HashMap
 Q  L U V W put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  Y " Z (C)Ljava/lang/StringBuilder; \ java/net/URL
 ^ _ ` a b java/lang/ClassLoader getResource "(Ljava/lang/String;)Ljava/net/URL; d e f g h java/util/Iterator hasNext ()Z d j k l next ()Ljava/lang/Object; n o p q r java/util/List add (Ljava/lang/Object;)Z
  t u v length ()I x "java/util/MissingResourceException z Cannot find localized resource  |  in 
  ~ "  -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
  %
 w �  � 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V n � � � iterator ()Ljava/util/Iterator;
 � � � � � org/openide/util/NbCollections iterable *(Ljava/util/Iterator;)Ljava/lang/Iterable; � � � java/lang/Iterable	  � � � USE_DEBUG_LOADER Z �  (?: � )
  � � � getLocalizedValue G(Ljava/util/Map;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;
  � � � attr2Map +(Ljava/util/jar/Attributes;)Ljava/util/Map;
 � % � java/util/jar/Attributes$Name	 , � � � US Ljava/util/Locale;
  � � � toLowerCase &(Ljava/util/Locale;)Ljava/lang/String;
  � � � 5(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object; � 'org/openide/util/NbBundle$AttributesMap
 � �  � (Ljava/util/jar/Attributes;)V
  � � � 	getBundle W(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
  � � � findName %(Ljava/lang/Class;)Ljava/lang/String;
 � � � � 4 java/lang/Class getClassLoader
 � � � ' getName
  � � � lastIndexOf (I)I
  � � � 	substring (II)Ljava/lang/String; � Bundle
 � � � O � %org/openide/util/NbBundle$DebugLoader 0(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
  � � � getBundleFast � No such bundle 
 � � � / � org/openide/util/Lookup ()Lorg/openide/util/Lookup;
 � � � � lookup %(Ljava/lang/Class;)Ljava/lang/Object; � *Class loader not yet initialized in lookup
 � � � � � org/openide/util/Exceptions attachMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable; � Offending classloader: 	  � � J bundleCache
 , %
  � � � getChars (II[CI)V
  �  � ([C)V � java/lang/ref/Reference
 � � O l � java/util/ResourceBundle
  � � � 
loadBundle  #org/openide/util/TimedSoftReference
 �  6(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Object;)V java/util/LinkedList
 
	
 addFirst (Ljava/lang/Object;)V java/util/Properties
 
 � .properties
 ^ b getSystemResource
 ^ getResourceAsStream )(Ljava/lang/String;)Ljava/io/InputStream;
 ^ getSystemResourceAsStream
 [ 
openStream ()Ljava/io/InputStream;  )java.util.PropertyResourceBundle.encoding
"#$%& java/lang/System getProperty &(Ljava/lang/String;)Ljava/lang/String;( UTF-8
 *+ r equals	 -./ utfThenIsoCharsetOnlyUTF8 -Lorg/openide/util/NbBundle$UtfThenIsoCharset;	 12/ utfThenIsoCharset4 java/io/InputStreamReader6 
ISO-8859-1	89:;< !java/nio/charset/StandardCharsets 
ISO_8859_1 Ljava/nio/charset/Charset;
>?@AB java/nio/charset/Charset 
newDecoder #()Ljava/nio/charset/CharsetDecoder;
D?E +org/openide/util/NbBundle$UtfThenIsoCharset
3G H 9(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V
JKL load (Ljava/io/Reader;)V
NOPQ  java/io/InputStream closeS java/io/IOExceptionU While loading: 	WXYZ[ java/util/logging/Level WARNING Ljava/util/logging/Level;
]^_`a java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 cde loadBundleClass y(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;g !org/openide/util/NbBundle$PBundle
 �ijk checkedMapByFilter C(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/util/Map;
fm n $(Ljava/util/Map;Ljava/util/Locale;)Vp .class
 �rst forName =(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
 �vwx 
asSubclass $(Ljava/lang/Class;)Ljava/lang/Class;
 �z{ l newInstance} &org/openide/util/NbBundle$MergedBundle
| � I(Ljava/util/Locale;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle;)V�  java/lang/ClassNotFoundException� java/lang/Exception� java/lang/LinkageError
 � �� -(Ljava/lang/Class;)Ljava/util/ResourceBundle;
 ���& 	getString
 ��� 
getMessage J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
"��� 	arraycopy *(Ljava/lang/Object;ILjava/lang/Object;II)V
 ��� 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
����� java/text/MessageFormat format 9(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
 ^�� 4 getSystemClassLoader� java/lang/Error
� 
]��� 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;� org.openide.util.NbBundle.DEBUG
����  java/lang/Boolean 
getBoolean
D� � (Z)V� java/util/WeakHashMap
�  	Signature YLjava/util/Map<Ljava/lang/ClassLoader;Ljava/util/Map<Ljava/lang/String;Ljava/net/URL;>;>; �Ljava/util/Map<Ljava/lang/ClassLoader;Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/Reference<Ljava/util/ResourceBundle;>;>;>; Code LineNumberTable LocalVariableTable this Lorg/openide/util/NbBundle; 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; getBranding setBranding bt StackMapTable 
Exceptions MethodParameters 4(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL; baseName ext F(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/net/URL; locale path baseVariant Ljava/net/URL; suffix loader Ljava/lang/ClassLoader; it Ljava/util/Iterator; cacheCandidates Ljava/util/List; baseNameSlashes perLoaderCache LocalVariableTypeTable (Ljava/util/Iterator<Ljava/lang/String;>; $Ljava/util/List<Ljava/lang/String;>; 1Ljava/util/Map<Ljava/lang/String;Ljava/net/URL;>; _v Ljava/lang/Object; physicalKey v table key TT; &Ljava/util/Map<Ljava/lang/String;TT;>; e<T:Ljava/lang/Object;>(Ljava/util/Map<Ljava/lang/String;TT;>;Ljava/lang/String;Ljava/util/Locale;)TT; S<T:Ljava/lang/Object;>(Ljava/util/Map<Ljava/lang/String;TT;>;Ljava/lang/String;)TT; _(Ljava/util/jar/Attributes;Ljava/util/jar/Attributes$Name;Ljava/util/Locale;)Ljava/lang/String; attr Ljava/util/jar/Attributes; Ljava/util/jar/Attributes$Name; M(Ljava/util/jar/Attributes;Ljava/util/jar/Attributes$Name;)Ljava/lang/String; Q(Ljava/util/jar/Attributes;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>; .(Ljava/lang/String;)Ljava/util/ResourceBundle; clazz Ljava/lang/Class; name Ljava/lang/Class<*>; 0(Ljava/lang/Class<*>;)Ljava/util/ResourceBundle; pref last I ((Ljava/lang/Class<*>;)Ljava/lang/String; @(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle; e $Ljava/util/MissingResourceException; b Ljava/util/ResourceBundle; m o Ljava/lang/ref/Reference; 	localeStr k [C pos XLjava/util/Map<Ljava/lang/String;Ljava/lang/ref/Reference<Ljava/util/ResourceBundle;>;>; 5Ljava/lang/ref/Reference<Ljava/util/ResourceBundle;>; java/lang/Throwable� is Ljava/io/InputStream; encoding charset reader Ljava/io/InputStreamReader; Ljava/io/IOException; res u sname l Ljava/util/LinkedList; p Ljava/util/Properties; *Ljava/util/LinkedList<Ljava/lang/String;>; java/nio/charset/CharsetDecoder c Ljava/lang/Exception; Ljava/lang/LinkageError; suffixes master .Ljava/lang/Class<+Ljava/util/ResourceBundle;>; �(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/List<Ljava/lang/String;>;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle; resName :(Ljava/lang/Class<*>;Ljava/lang/String;)Ljava/lang/String; I(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String; param1 L(Ljava/lang/Class<*>;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String; [(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String; param2 ^(Ljava/lang/Class<*>;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String; m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String; param3 p(Ljava/lang/Class<*>;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String; �(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String; param4 params [Ljava/lang/Object; 	allParams �(Ljava/lang/Class<*>;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String; arr M(Ljava/lang/Class<*>;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; getLocalizingSuffixes *()Ljava/util/Iterator<Ljava/lang/String;>; setClassLoaderFinder 0(Lorg/openide/util/NbBundle$ClassLoaderFinder;)V loaderFinder -Lorg/openide/util/NbBundle$ClassLoaderFinder; 
access$000 ()Ljava/util/logging/Logger; 
access$100 <clinit> 
SourceFile NbBundle.java InnerClasses LocaleIterator@ java/util/jar/Attributes Name AttributesMap DebugLoader UtfThenIsoCharset PBundle MergedBundleH +org/openide/util/NbBundle$ClassLoaderFinder ClassLoaderFinderK "org/openide/util/NbBundle$Messages Messages !       	 
    � �   
     2/   ./    I J �   �  � J �   �     �   3     *� �   �   
    f  g�       ��  �    �    �   	� ' �         � �   �       m 	� * �   l     -*� '*� � � Y� Y� �  *�  � $� (�*� �   �       |  } (  , ��       -�   �    (�     �   �   ) 7� �   @     *+� +� 1� 5�   �       ��       �      �  �     w�   	�  �  �    �    �   ) 7� �   H     
*+,� 1� 5�   �       ��        
�      
�     
� � �     w�   �  �  �  �    �    �   ) 7 8 �      �:� 9Y,� ;:� >Y
� @:*./� C:� G-� K � L:� � G-� QY� SY:� T W+�  � Y� �  .� X+�  � $:
� :

� K � [:� -
� ]:	� :	� c � �� i � :+� %� Y� �  �  .� X+�  � $:
� � Y� �  �  � $:

� K � [:� � /
� m W� s� 
	:� -
� ]:� � ��o� V*./� C:
+� � Y� 
�  .� X+�  � $:
� wY� Y� y�  
�  {�  -� }� $-� �
� ��� � :� c � � i � � T W����   �   � '   �  �  �  � " � 0 � 5 � I � M � j � n � | � � � � � � � � � � � � � � � � � � � � � � � �	 � � � �  �# �( �2 �6 �P �r �{���	�   �  g �  
 � �� 	 � {�    ��     ��    �� �   ���  � ��  ���  ���  "��   0x� J  ��� 	 n:�  
�      ���  ���  0x�� �   g � I 	   , ^ [ d n  L   �   �     , ^ [ d n  L [   � ; � ,* �     w�   �  �  �  �  �    �    �   	 � � �  U     �� 9Y,� ;� �� � N-� c � l-� i � :� Y� +�  �  � $:*� K :� :� �� 1� � )� Y� � �  ��  �  ��  � $:������   �   * 
  ! %" :# D% I' W* z+ }- �0 �2�   H  z ��  : F�   D <��  % [�     �� J     ��     �� � �      z ��  D <��    ���  �    �  d� k   � � �   �  �  �  �   � 	 � � �   O     	*+� +� ��   �      >�       	� J     	�  �       	��  �   	�  �  �   � 	 �� �   T     *� �+� �� �� �,� �� �   �      I�        ��     ��    � � �   �  �  �   	 �� �   I     *� �+� �� �� �� �� �   �      U�       ��     �� �   	�  �   
 � � �   3     	� �Y*� ��   �      ^�       	��  �   �  �   � 	 �� �   5     *� +� 1� ��   �      r�       �   �     w�   �   	 �� �   [     *� �L+� +*� �� ��   �   
   � ��       ��    �  �       ��  �     w�   �  �   � 
 � � �   �     0*� �L+.� �=�  +`� �L� Y� +�  ̶  � $�̰   �      � � � � � -��        0��    +�    $�� �       0��  �   	 � - �   �  �   � 	 �� �   =     	*+� 1� ��   �      ��       	�      	� � �     w�   	�  �   	 � � �   �     h� �� ,� �M*+,� �N-� -�� wY� Y� ֶ  *�  � $*� �:� �^� �� � �W� � Y� �  ,� }� $� �W�   �   * 
  � � � � � � 6� A� L� e��   4  6 2��    h�      h� �    h��   V�� �    �  �� 3 w�     w�   �  �  �   
 � � �  ,    0� �Y:² �,� K � LN-� � �,� QY� SYN� T Wç :��+� �:*� s� � � � s� ``� s`�:**� s� �*� s/U*� s`6� � -U�� � � � s� �� � s`6/U�� s� � Y� �:-Y:�-� K � �:		� 	� �� �� :

� 	
ð*+,� �:

� -� �Y
-�� T W
ð:��   . 1   1 6 1   � �(   '(  (-(   �   z   � � � � +� 9� ?� X� `� l� u� }� �� �� �� �� �� �� �� �� �� �� �� �� �� ���"(�   p   � J  � F�� 	 � 3�� 
  0�     0� �   0��  9 �� J  ? ��   ` ���  } � �  � `�  �       �  � F� 	 9 �� �   � � + L �    , ^   �    , ^ L  �    , ^ L  �     , ^ L  � <� E   �@ ��  �!�  	  , ^ L    �   �  �  �   
 � � �  �    e*./� CN� 9Y+� ;:�Y�:� c � � i � ����Y�:�:� c �� i � :� Y� -�  �  �  � $:	,� ,	� ]� 	�:

� �� �� ,� ,	�� 	�� 
�:�!:'�)� 	�,� �0:�3Y5�)� �7�=� �C�F:�I�M� :�M�� @:� Y� T�  	�  � $� �W� �V�\�� s� *-+,�b�����fY�h+�l�  � �     �R �   � !   	   & 8 A ^ y �! �% �& �' �* �+ �, �- �. �/ �2 �4545;67/8;:=<E?OARC�   �  � [  � S   � =	/  � 
  )�  y �  	 � �� 
 ^ ��    e�     e� �   e��  	\   R��  I  A$ �     R��  I �   �   d�  d� =  D [�  [DN� N BD�    , ^  d d   [N D  � �N�    , ^  d d   [N D  � �N�    , ^  d d   [N D3 � 	   , ^  d d   [  BR*� � �   �  �  �   
de �  �  
   �� !� Y� +�  o�  � $� ]� �:-� � :� c � }� i � :� Y� *�  �  � $�q��u:�y� �:	� 
	:� �|Y,	�~:� ':� ":� �V�\� :� �V�\���  D � �� D � �� D � �� �   N   R !U #X &Z D\ d] n_ s` zb �j �d �j �f �g �j �h �i �k �m�   p  d $�  n �� 	 � �  � �  D k�     ��      �     �� �    ��    ��  & �� �     d $    �� �   - 	#� 
 � d� K  � �� B�D�P�� � �   �    �      �    	�� �   O     	*��+���   �      }�       	��     	  �       	��  �     w�   	�    �    	�  �   ^     *+� Y,S���   �      ��        ��          !� �       ��  �     w�   �    !  �   " 	�# �   l     *+� Y,SY-S���   �      ��   *    ��          !�    $� �       ��  �     w�   �    !  $  �   % 	�& �   {     *+� Y,SY-SYS���   �      ��   4    ��          !�    $�    '� �       ��  �     w�   �    !  $  '  �   ( ��) �   �     4�`� :,S-SSS���*+���   �      � 
� � � �  � ,��   R    4��     4     4!�    4$�    4'�    4*�    4+,  
 *-, �       4��  �     w�   �    !  $  '  *  +  �   . 	�� �   Z     
*+��,���   �      ��        
��     
     
/, �       
��  �     w�   �    /  �   0 
 3 4 �   X     � �^� �� ^K*� *� ���   �   
   � ��      �  �    �  ^B ^ 	1 � �   #      � 9Y� +� ;�   �      ��   2 	34 �   2     ��Y���   �      �       56  �   5  �    �    �  78 �         � �   �       J9 ' �         � �   �       J :  �   s      C� ���� ���� �� �DY���0�DY���,��Y��� G��Y��� �   �       L  N  O  Q # R . Y 8 ^ ;   <=   J 	 9 > 
 �?A 	 � B 
 � C D D 
f E | F 
G I	J L&	