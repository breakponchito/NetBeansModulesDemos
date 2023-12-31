����   4�
      #org/openide/util/EditableProperties writeOperation ()V	   	 
 state +Lorg/openide/util/EditableProperties$State;
     trimLeft &(Ljava/lang/String;)Ljava/lang/String;
      java/util/AbstractMap <init>	     alphabetize Z  )org/openide/util/EditableProperties$State
  	     shared
      .(Lorg/openide/util/EditableProperties$State;)V " +org/openide/util/EditableProperties$SetImpl
 ! $  % ((Lorg/openide/util/EditableProperties;)V ' java/io/BufferedReader ) java/io/InputStreamReader	 + , - . / !java/nio/charset/StandardCharsets 
ISO_8859_1 Ljava/nio/charset/Charset;
 ( 1  2 2(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
 & 4  5 (Ljava/io/Reader;)V 7 java/util/LinkedList
 6 
 & : ; < readLine ()Ljava/lang/String; > ? @ A B java/util/List add (Ljava/lang/Object;)Z
  D E F isEmpty (Ljava/lang/String;)Z
  H I F 	isComment
  K L M createNonKeyItem (Ljava/util/List;)V
  O P F 
isContinue
  R S T createKeyItem (Ljava/util/List;I)V > V W X size ()I Z java/io/BufferedWriter \ java/io/OutputStreamWriter
 [ ^  _ 3(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
 Y a  b (Ljava/io/Writer;)V	  d e f items Ljava/util/LinkedList;
 6 h i j iterator ()Ljava/util/Iterator; l m n o p java/util/Iterator hasNext ()Z l r s t next ()Ljava/lang/Object; v (org/openide/util/EditableProperties$Item
 u x y p 
isSeparate
 Y { |  newLine
 u ~  � 
getRawData ()Ljava/util/List; > h � java/lang/String
 Y � � � write (Ljava/lang/String;)V
 Y � �  flush	  � � � 	itemIndex Ljava/util/Map; � � � � � java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;
 u � � < getValue � key
 � � � � � org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V
 u � � � setValue
 u �  � '(Ljava/lang/String;Ljava/lang/String;)V
  � � � addItem .(Lorg/openide/util/EditableProperties$Item;Z)V
  � � � &(Ljava/lang/Object;)Ljava/lang/String;
  � � � put 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � java/lang/NullPointerException
 � 
 � � � � � java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
 u � � M
 u �  � %(Ljava/lang/String;Ljava/util/List;)V
 u � � � 
getComment ()[Ljava/lang/String; � "java/lang/IllegalArgumentException � java/lang/StringBuilder
 �  � -Cannot set comment for non-existing property 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � < toString
 � �  �
 u � � � 
setComment ([Ljava/lang/String;Z)V
  � � � cloneProperties '()Lorg/openide/util/EditableProperties;
  $
 6 � E p
 6 � � t getLast
 u � � < getKey
 u � � M addCommentLines > � �  clear
 u �  M > � � � subList (II)Ljava/util/List;
 u �  � #(Ljava/util/List;Ljava/util/List;)V	  � �  $assertionsDisabled � java/lang/AssertionError
 � 
 6 � � � listIterator ()Ljava/util/ListIterator; � m � java/util/ListIterator � r
 � compareToIgnoreCase (Ljava/lang/String;)I � t previous �	 A
 (Ljava/lang/Object;)V � � 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 6 ?
 � X length
 � charAt (I)C
 � 	substring (I)Ljava/lang/String;
 p java/lang/Class desiredAssertionStatus  java/lang/Cloneable INDENT Ljava/lang/String; ConstantValue%      WAITING_FOR_KEY_VALUE I    READING_KEY_VALUE    (Z)V Code LineNumberTable LocalVariableTable this %Lorg/openide/util/EditableProperties; MethodParameters ep StackMapTable entrySet ()Ljava/util/Set; 	Signature N()Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>; load (Ljava/io/InputStream;)V empty comment stream Ljava/io/InputStream; 
parseState input Ljava/io/BufferedReader; tempList Ljava/util/List; line commentLinesCount LocalVariableTypeTable $Ljava/util/List<Ljava/lang/String;>;H java/io/InputStream 
ExceptionsK java/io/IOException store (Ljava/io/OutputStream;)V it Ljava/util/Iterator; item *Lorg/openide/util/EditableProperties$Item; Ljava/io/OutputStream; previousLineWasEmpty output Ljava/io/BufferedWriter; (Ljava/util/Iterator<Ljava/lang/String;>; Ljava/lang/Object; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; value result getProperty setProperty 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String; [Ljava/lang/String; 	valueList '(Ljava/lang/String;)[Ljava/lang/String; )(Ljava/lang/String;[Ljava/lang/String;Z)V separate clone lines '(Ljava/util/List<Ljava/lang/String;>;)V ((Ljava/util/List<Ljava/lang/String;>;I)V k Ljava/util/ListIterator; sort DLjava/util/ListIterator<Lorg/openide/util/EditableProperties$Item;>; index 
slashCount start len 
access$000 x0 
access$100 R(Lorg/openide/util/EditableProperties;)Lorg/openide/util/EditableProperties$State; 
access$200 <clinit> RLjava/util/AbstractMap<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/Cloneable; 
SourceFile EditableProperties.java InnerClasses State SetImpl Item~ 0org/openide/util/EditableProperties$MapEntryImpl MapEntryImpl� 0org/openide/util/EditableProperties$IteratorImpl IteratorImpl� java/util/Map$Entry Entry 1      	 
        !" #   $ &' #   ( )' #   * �      + ,   U     *� *� *� Y� � �   -       j  k 	 l  m.       /0        1         % ,   a     *� *+� � *+� � *� � �   -       s  u  v  w  x.       /0     20 1   2      ,   U     *� � � *� Y*� � � �   -       { 
 |  ~.       /0  3     45 ,   3     	� !Y*� #�   -       �.       	/0  6   7 89 ,  �  	   �=� &Y� (Y+� *� 0� 3N� 6Y� 8:6-� 9Y:� \� = W� C6� G6� !� *� J6� � 	�� =� *� N� *� Q=6���� U � � *� Q� 	*� J�   -   f    �  �  �  � ! � , � 6 � = � D � I � N � T � Z � _ � e � g � u � } �  � � � � � � � � � � � � �.   \ 	 = E:   D >;     �/0     �<=   �>'   �?@   �AB  ) }C"  ! �D' E      �AF 3   : � !  G & >   � 8 	 G & > �  
� I    J1   <   LM ,  h     �=� YY� [Y+� *� ]� `N*� � c� g:� k � _� q � u:� w� � -� z:� }� � :� k � � q � �:-� �-� z���� 	� C=���-� ��   -   B    �  �  � 7 � C � G � J � V � ` � l � r � y � ~ � � � � � � �.   H  J :C"  V .NO  7 MPQ    �/0     �<R   �S    wTU E     V .NV 3   " � ! Y l� % u�  � l"� 
� I    J1   <    � � ,   �     *+� �� �*� � �+� �� � � uM,� 
,� �� �   -       �  � 	 �  �.        */0     * �W   PQ 3    	�  u@ �1    �  X    Y    � � ,   �     K�+� �+,� �*� *� � �+� � � uN:-� -� �:-,� �� � uY+,� �N*-*� � ��   -   .    �  �  �  �   � # � ' � - � 5 � ? � H �.   4    K/0     K �"    KZ"    +PQ  # ([" 3    � 5 u �1   	 �  Z  X    Y   \  ,   :     *+� ��   -       �.       /0      �" 1    �   ] � ,   E     *+,� ��   -       �.        /0      �"    Z" 1   	 �  Z   ]^ ,        U*+� �N+� ,� � �Y� ��,� �:*� *� � �+� � � u:� � �� *� uY+� �*� � �-�   -   * 
         2 7 A S.   >    U/0     U �"    UZ_   O["   9`B  2 #PQ E      9`F 3    �  �� * > u1   	 �  Z    �a ,   w     *� � �+� � � uM,� � ��,� ��   -      ( ) * ,.        /0      �"   PQ 3    �  u1    �    �b ,   �     >*� *� � �+� � � u:� � �Y� �Y� �ȶ �+� ʶ η ѿ,� ӱ   -      = > ? @ 6B =C.   4    >/0     > �"    >;_    >c    (PQ 3    � 6 u1    �  ;  c   d t ,   /     *� װ   -      G.       /0  X    Y    � � ,   3     	� Y*� ۰   -      O.       	/0    L M ,   �     H*� *� � c� ܚ $*� � c� �� uM,� �� ,+� �+� � �� uY+� �M*,� �+� � �   -   .   T V W X &Z +[ 1\ 2` ;a Ab Gc.   *   PQ    H/0     HeB  ; PQ E       HeF 3    21   e  6   f  S T ,   �     *� uY+� � ++� U � � � �N*-� �+� � �   -      h i #j )k.   *    */0     *eB    *D'   PQ E       *eF 1   	e  D  6   g  � � ,  ^     �*� +� �N� k� � -� � �Y� ��*� � c� �:� � � C�  � u� �:� ,-�� #� W+� *� � �-+� W����*� � c+�W-� *� � �-+� W�   -   F   n o 	p q r +s 5t Du Rv Zw bx qy r{ u} �~ � ��.   >  D .h"  + JNi    �/0     �PQ    �j   	 � �" E     + JNk 3    �  ��  �� F� 1   	P  j    P F ,   �     ,+�d=>� +�\� ������p� � �   -      � � 	� � �  �.   *    ,/0     ,C"   %l'  	 #m' 3    � 		@1   C   
 I F ,   t     0*� K*�� %*��           !      #   ��   -      � � � ,� .�.       0C"  3    ,1   C   
 E F ,   E     *� �� � �   -      �.       C"  3    @1   C   
   ,   �     S<*�=� D*��     9      	   3   
   3      3      3       3����� *��   -   "   � � � � D� G� J� M�.        SC"    Qn'   Lo' 3   
 � <1   C  A � ,   7     *+� �,� �� ��   -       @.       /0  1   	 � Z X    Y  A � � ,   0     *+� ��   -       @.       /0  1    � X    Y  p  ,   /     *� �   -       @.       q"  rs ,   /     *� �   -       @.       q0  t % ,   /     *� �   -       @.       q0   u  ,   4      �� � � �   -       @3    @ 6   vw   xy   2   z 
 ! {  u | 
}  � � � ��	