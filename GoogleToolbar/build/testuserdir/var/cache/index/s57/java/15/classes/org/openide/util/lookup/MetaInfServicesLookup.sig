����   4	      -org/openide/util/lookup/MetaInfServicesLookup CACHE &Lorg/openide/util/lookup/MetaInfCache;	   	 
 RP Ljava/lang/ref/Reference;
      java/lang/ref/Reference get ()Ljava/lang/Object;  java/util/concurrent/Executor  !org.openide.util.RequestProcessor
      java/lang/Class forName %(Ljava/lang/String;)Ljava/lang/Class;
     newInstance  java/lang/Throwable
 ! " # $ % java/util/concurrent/Executors newSingleThreadExecutor (()Ljava/util/concurrent/ExecutorService; ' /org/openide/util/lookup/MetaInfServicesLookup$1
 & ) * + <init> ()V - java/lang/ref/SoftReference
 , / * 0 (Ljava/lang/Object;)V
 2 ) 3 &org/openide/util/lookup/AbstractLookup 5 java/util/WeakHashMap
 4 )	  8 9 : classes Ljava/util/Map;	  < = > loader Ljava/lang/ClassLoader;	  @ A B prefix Ljava/lang/String;	  D E F LOGGER Ljava/util/logging/Logger;	 H I J K L java/util/logging/Level FINE Ljava/util/logging/Level; N Created: {0}
 P Q R S T java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V V java/lang/StringBuilder
 U ) Y MetaInfServicesLookup[
 U [ \ ] append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 U _ \ ` -(Ljava/lang/Object;)Ljava/lang/StringBuilder; b ]
 U d e f toString ()Ljava/lang/String;
  h i j beforeLookup %(Lorg/openide/util/Lookup$Template;)V
 l m n o p  org/openide/util/Lookup$Template getType ()Ljava/lang/Class; r s t  u java/util/Map &(Ljava/lang/Object;)Ljava/lang/Object; w java/util/ArrayList
 v ) z java/util/HashSet
 y )
  } ~  allSuper 1(Ljava/lang/Class;Ljava/util/Set;)Ljava/util/Set; � � � � � java/util/Set iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext ()Z � � �  next
  � � � search *(Ljava/lang/Class;Ljava/util/Collection;)V �   r � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  � � � getPairsAsLHS ()Ljava/util/LinkedHashSet;
 � � � java/util/LinkedHashSet � +org/openide/util/lookup/AbstractLookup$Pair � 2org/openide/util/lookup/MetaInfServicesLookup$Item � � � � � java/util/List add (Ljava/lang/Object;)Z � � � java/util/Collection
  � � � 
insertItem G(Lorg/openide/util/lookup/MetaInfServicesLookup$Item;Ljava/util/List;)V
  � � � setPairsAndCollectListeners +(Ljava/util/Collection;)Ljava/util/HashSet;
  � � � getRP !()Ljava/util/concurrent/Executor;
  � � � notifyIn 5(Ljava/util/concurrent/Executor;Ljava/util/HashSet;)V � �
  � � p getSuperclass � java/lang/Object
  � � � getInterfaces ()[Ljava/lang/Class;	 H � � L FINER
 P � � � 
isLoggable (Ljava/util/logging/Level;)Z � !Searching for {0} in {1} from {2}
  � � f getName
  � � � getClassLoader ()Ljava/lang/ClassLoader;
 P � S � A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
 � � � � � java/lang/ClassLoader getResources +(Ljava/lang/String;)Ljava/util/Enumeration; � java/io/IOException
 � � � + printStackTrace � � � � � java/util/Enumeration hasMoreElements
 � � �  	loadClass �  java/lang/ClassNotFoundException	 H � � L WARNING � X{0} is not the real McCoy! Actually found it in {1} (from {2}) but searched for from {3} � {0} could not be found in {1} � � �  nextElement � java/net/URL
 � � � � 
openStream ()Ljava/io/InputStream;  java/io/BufferedReader java/io/InputStreamReader	 !java/nio/charset/StandardCharsets UTF_8 Ljava/nio/charset/Charset;

 * 2(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
 � * (Ljava/io/Reader;)V
 � f readLine
 f java/lang/String trim 
#position=
 
startsWith (Ljava/lang/String;)Z	 H L INFO! CFound line ''{0}'' in {1} but there is no item to associate it with
#$% 	substring (I)Ljava/lang/String;
'()*+ java/lang/Integer parseInt (Ljava/lang/String;)I
 �-./ 
access$002 8(Lorg/openide/util/lookup/MetaInfServicesLookup$Item;I)I1 java/lang/NumberFormatException
0 �
456 length ()I
89: charAt (I)C
 �<=> 
getContent &([Ljava/lang/Class;)Ljava/lang/Object;
 @ A =(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;C java/lang/LinkageErrorE No class found in 
 PG SH C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)VJ *URL does not support classloader protocol 
BLM f 
getMessage
 �O *P *(Ljava/lang/String;Ljava/lang/Throwable;)V
 RST isAssignableFrom (Ljava/lang/Class;)Z
 VWX clazzToString %(Ljava/lang/Class;)Ljava/lang/String;Z  not a subclass of 
 �\ *] (Ljava/lang/String;)V � �
 �` *a (Ljava/lang/Class;)V
cdef + java/io/InputStream closeh 2Found impls of {0}: {1} and removed: {2} from: {3} � �
 �klm 
access$100 G(Lorg/openide/util/lookup/MetaInfServicesLookup$Item;)Ljava/lang/Class; �op � contains
 rst getProtectionDomain "()Ljava/security/ProtectionDomain;
vwxyz java/security/ProtectionDomain getCodeSource ()Ljava/security/CodeSource;
|}~� java/security/CodeSource getLocation ()Ljava/net/URL;
 � d
 L� @� :
 ���� 
access$000 7(Lorg/openide/util/lookup/MetaInfServicesLookup$Item;)I �o
 ��� � equals �� �� (ILjava/lang/Object;)V
 P��� 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;� $org/openide/util/lookup/MetaInfCache
�� *� (I)V� java/lang/ref/WeakReference
� / 	Signature :Ljava/lang/ref/Reference<Ljava/util/concurrent/Executor;>; 7Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Object;>; Code LineNumberTable LocalVariableTable seek Ljava/lang/Class; t2 Ljava/lang/Throwable; t res Ljava/util/concurrent/Executor; LocalVariableTypeTable Ljava/lang/Class<*>; StackMapTable ,(Ljava/lang/ClassLoader;Ljava/lang/String;)V this /Lorg/openide/util/lookup/MetaInfServicesLookup; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value LeakingThisInConstructor Ljava/lang/Override; beforeLookupResult template "Lorg/openide/util/Lookup$Template; %Lorg/openide/util/Lookup$Template<*>; ((Lorg/openide/util/Lookup$Template<*>;)V type all Ljava/util/Set; lh -Lorg/openide/util/lookup/AbstractLookup$Pair; p lhs Ljava/util/LinkedHashSet; arr Ljava/util/List; c toAdd Ljava/util/Collection; 	listeners Ljava/util/HashSet; %Ljava/util/Set<Ljava/lang/Class<*>;>; 0Lorg/openide/util/lookup/AbstractLookup$Pair<*>; KLjava/util/LinkedHashSet<Lorg/openide/util/lookup/AbstractLookup$Pair<*>;>; FLjava/util/List<Lorg/openide/util/lookup/MetaInfServicesLookup$Item;>; HLjava/util/Collection<Lorg/openide/util/lookup/AbstractLookup$Pair<*>;>; ?Ljava/util/HashSet<Lorg/openide/util/lookup/AbstractLookup$R;>; clazz sup� [Ljava/lang/Class; `(Ljava/lang/Class<*>;Ljava/util/Set<Ljava/lang/Class<*>;>;)Ljava/util/Set<Ljava/lang/Class<*>;>; en Ljava/util/Enumeration; ioe Ljava/io/IOException; 	realMcCoy e !Ljava/lang/NumberFormatException; ldr Ljava/lang/Object; ex "Ljava/lang/ClassNotFoundException; err Ljava/lang/LinkageError; cnfe line remove Z inst reader Ljava/io/BufferedReader; is Ljava/io/InputStream; url Ljava/net/URL; currentItem 4Lorg/openide/util/lookup/MetaInfServicesLookup$Item; item result foundClasses removeClasses foundOne 'Ljava/util/Enumeration<Ljava/net/URL;>; ,Ljava/util/Collection<Ljava/lang/Class<*>;>; _(Ljava/lang/Class<*>;Ljava/util/Collection<Lorg/openide/util/lookup/AbstractLookup$Pair<*>;>;)V loc ((Ljava/lang/Class<*>;)Ljava/lang/String; i list 
foundIndex I index }(Lorg/openide/util/lookup/MetaInfServicesLookup$Item;Ljava/util/List<Lorg/openide/util/lookup/MetaInfServicesLookup$Item;>;)V 
createPair G(Ljava/lang/Class;)Lorg/openide/util/lookup/MetaInfServicesLookup$Item; J(Ljava/lang/Class<*>;)Lorg/openide/util/lookup/MetaInfServicesLookup$Item; 
access$200 (()Lorg/openide/util/lookup/MetaInfCache; <clinit> 
SourceFile MetaInfServicesLookup.java InnerClasses
 org/openide/util/Lookup Template Pair Item =org/openide/util/lookup/MetaInfServicesLookup$CantInstantiate CantInstantiate (org/openide/util/lookup/AbstractLookup$R R 0  2     E F        
 	 
 �   �  9 : �   �  = >    A B    ( � � �   �     =� � � K*� 0� L+� � K� L�  K� M� &Y� (K� ,Y*� .� *�        $ '  �   2    9 
 :  <  =  I  >   @ $ H ' A ( B 0 J ; L�   *   ��  ( ��    ��  
 3��  �      �� �   # �     �      � 
  *� �   x     &*� 1*� 4Y� 6� 7*+� ;*,� ?� C� GM*� O�   �       _  U  `  a  c % d�        &��     & = >    & A B �   	 =   A  �    � �[ s�  e f �   F     � UY� WX� Z*� ;� ^a� Z� c�   �       h�       ��  �    �    � j �   P     *+� g�   �   
    o  p�       ��     �� �       �� �   �  �   ��    �    i j �  �    +� kMN*Y:�*� 7,� q � � vY� xN� ñç :��-� :� yY� {:*,� |� � :� � � � � � :*-� ����:*Y:�*� 7,�� � � s*� �:� vY� x:� �:� � � � � � �:		� �� � W���-� � :� � � � � � �:	*	� �� ����*� �:ç :
�
�� *� �� ��   ' .   ( + .   . 3 .   y � �   � �   �   r    v  x  y  z  { $ ~ ( � 6 � : � C � g � n � q � t � y � � � � � � � � � � � � � � � � � � � � � � � ��   p  g ��  C .��  � �� 	 � �� 	 � j��  � a��   ��    ��  ��  ��  t ��� �   \ 	 C .��  � �� 	 � �� 	 � j��  � a��   ��  ��  ��  t ��� �   [ � $  � �E � �  � �� � , 	  l  � y � � � �  � %�  �� #� E � �   �  �   ��    �    ~  �       K,+� � W+� �N-� -�� ,-� � W+� �:�66� 2:*,� |W����,�   �   "    �  �  �  �  � ; � C � I ��   4  ; ��    K��     K��    K��   >�� �   *  ; ��    K��    K��   >�� �    �  � �� �   	�  �  �   �  � � �  �    m� C� Ƕ ʙ $� C� ��� �Y+� �SY+� �SY*S� ׻ UY� W*� ?� Z+� ж Z� cN*� ;-� �:� :� ⱻ vY� x:� vY� x:6� � ��� s6:*� ;+� ж �:� :	+� U� 2� C� ��� �Y+� �SY� �SY*� ;SY+� �S� ק  � C� ��� �Y+� �SY*� ;S� ױ� � � �::	� �:
� �Y�Y
��	�:�:� ���:�� ?	�  � C� � �YSYS� ק��	
�"�&�,W� 
:�2	� *	� �:	�3� ���6�7#� %�3��t�7-� ��f6�"::� Y�S�;:� ۙ � ۸?:� O:� J:� C� ǻ UY� WD� Z� ^� c�F� %:� C� ǻ UY� WI� Z� ^� c�F� 8*� ;�?:� ):� ��ƻ �Y�K�N�:� ����+�Q� *� �Y� UY� W�U� ZY� Z+�U� Z� c�[�� �^ W� � �Y�_:	��Z	� *	� �:	
�b� :
�b�� ":
� C�
�F� :
� C�
�F��i� C� �g� �Y+� �SYSYSY*S� ��i :� � � -� � � �:		�j�n � ���,	�^ W��ϱ  F P S � � � � �]mp0���B��� ��� �>JMB>Jf ���  ���   ��� � ��� � �  � f   �  � - � F � P � S � U � Z � [ � d � m � p � z �  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �! �& �) �0 �; @Z]mpr
w|�������� �!�#�%�&�'�/�)�/�+�,/-.91>3JBM4O5T6W8f9h:m=p@sD|E�H�I�N�P�R�S�T�W�X�W�X�]�Y�Z�]�[�\^
`/fNg]h`killm�    P ��  U ��  � j�� r �� � �� �  ��   �� O �� h �� !�� B �+�� � ��� ��� ��� 
� �� 
� �� 
 ���  �	�� 	N �� 	  m��    m��   m��  F'� B  [��  d	��  m ��  p��� �   R  P ��  � j�� � ���   m��   m��  [��  d	��  m �� �   *-� %    �  ��  ��  � �� $ 	   � � � �   �9�  � *    � � � � � �c �  � 3R0
� $
� ' BBD �d �!SB� 	B�     � � � � � �c �   �� 	 �� /� 
� G � 	B �P �� � - �� ' �� �   	�  �  �   � 
WX �   �     SL*�q� *�q�u� *�q�u�{��L� 	M,��L� UY� W*� ж Z�� Z*� Ӷ ^�� Z+� Z� c�   ! $  �      o q r !v $t %u *w�      % ��    S��    Q� B �       S��  �    � !B �   �  �   �  � � �  U     �+��� ,+�� � ,+� � W�>6,�i :� � � ;� � � �:+��� ��� ��� ��+��� >���� ,+� � W� ,+�� �   �   J    � � � � �  � >� G� H� K� O� d� g� j� n� y� ���   >  > )��    ���     ���    ���   e��    b�� �       ��� �    	 �  ��  �� � �   	�  �  �   �   �   E     	� �Y*�_�   �      ��       	��  �       	��  �   �  �    �         � �   �       4  + �   D      $� и�� C��Y ��� ��Y��� �   �       5  6  7       2  &       l	  � 2	 �     2 