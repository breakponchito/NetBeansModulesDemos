����   4F
      java/lang/Integer valueOf (I)Ljava/lang/Integer;
  	 
   $org/openide/util/lookup/ArrayStorage <init> (Ljava/lang/Integer;)V
      java/lang/Object ()V	     content Ljava/lang/Object;	      0org/openide/util/lookup/ArrayStorage$Transaction current [Ljava/lang/Object;	     arr
    ! " add (Ljava/lang/Object;)Z
  $ % " equals ' +org/openide/util/lookup/AbstractLookup$Pair
 & ) * + getIndex ()I
 & - . / setIndex 4(Lorg/openide/util/lookup/AbstractLookup$Storage;I)V 1 java/lang/IllegalStateException 3 java/lang/StringBuilder
 2  6 current objects: 
 2 8 9 : append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 < = > ? @ java/util/Arrays toString '([Ljava/lang/Object;)Ljava/lang/String; B 
new objects:  D 
cnt: 
  F G H 
access$000 5(Lorg/openide/util/lookup/ArrayStorage$Transaction;)I
 2 J 9 K (I)Ljava/lang/StringBuilder;
 2 M ? N ()Ljava/lang/String;
 0 P  Q (Ljava/lang/String;)V
  S T U addPair 0(Lorg/openide/util/lookup/AbstractLookup$Pair;)I W X Y Z [ java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; ] +org/openide/util/lookup/AbstractLookup$Info 
 ` a b c d 'org/openide/util/lookup/InheritanceTree arrayEn ,([Ljava/lang/Object;)Ljava/util/Enumeration; f /org/openide/util/lookup/ArrayStorage$1JustPairs
 e h  i Q(Lorg/openide/util/lookup/ArrayStorage;Ljava/util/Enumeration;Ljava/lang/Class;)V
 ` k l m emptyEn ()Ljava/util/Enumeration; o 8org/openide/util/lookup/AbstractLookup$ReferenceIterator	  q r s results :Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult;
 n u  v =(Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult;)V
 n x y z next ()Z
 n |  } <()Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult;	  � � � � 8org/openide/util/lookup/AbstractLookup$ReferenceToResult template "Lorg/openide/util/Lookup$Template;
 � $ �  org/openide/util/Lookup$Template
  � � � 	getResult ,()Lorg/openide/util/lookup/AbstractLookup$R;
 � � � � � java/lang/System currentTimeMillis ()J      �	 � � � � � &org/openide/util/lookup/AbstractLookup LOG Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level WARNING Ljava/util/logging/Level; � :Too long ({0} ms and {1} references) cleanUpResult for {2}
 � � �  � java/lang/Long (J)Ljava/lang/Long;
 � � � � getType ()Ljava/lang/Class;
 � � � � � java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
 n � � } first
  �  � (ILjava/lang/Object;)V
  � � � iterator ()Ljava/util/Iterator; � � � � z java/util/Iterator hasNext � � y � ()Ljava/lang/Object;
 � � � � matches S(Lorg/openide/util/Lookup$Template;Lorg/openide/util/lookup/AbstractLookup$Pair;Z)Z �   � java/util/Set
  � � � findMatching 9(Lorg/openide/util/Lookup$Template;[Ljava/lang/Object;I)I
  � � [ 
newContent
  � � � 	retainAll D(Ljava/util/Map;Lorg/openide/util/lookup/ArrayStorage$Transaction;)V
  � � � remove b(Lorg/openide/util/lookup/AbstractLookup$Pair;Lorg/openide/util/lookup/ArrayStorage$Transaction;)V
  � ! � b(Lorg/openide/util/lookup/AbstractLookup$Pair;Lorg/openide/util/lookup/ArrayStorage$Transaction;)Z
  � � � endTransaction D(Lorg/openide/util/lookup/ArrayStorage$Transaction;Ljava/util/Set;)V
  � � � beginTransaction 5(I)Lorg/openide/util/lookup/ArrayStorage$Transaction; � .org/openide/util/lookup/AbstractLookup$Storage 	Signature =Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult<*>; Code LineNumberTable LocalVariableTable this &Lorg/openide/util/lookup/ArrayStorage; 	treshhold Ljava/lang/Integer; MethodParameters i I newIndex item -Lorg/openide/util/lookup/AbstractLookup$Pair; changed 2Lorg/openide/util/lookup/ArrayStorage$Transaction; LocalVariableTypeTable 0Lorg/openide/util/lookup/AbstractLookup$Pair<*>; StackMapTable e(Lorg/openide/util/lookup/AbstractLookup$Pair<*>;Lorg/openide/util/lookup/ArrayStorage$Transaction;)Z p found info -Lorg/openide/util/lookup/AbstractLookup$Info; from retain Ljava/util/Map; lookup *(Ljava/lang/Class;)Ljava/util/Enumeration; all Ljava/util/Enumeration; clazz Ljava/lang/Class; +Ljava/util/Enumeration<Ljava/lang/Object;>; Ljava/lang/Class<TT;>; y<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/util/Enumeration<Lorg/openide/util/lookup/AbstractLookup$Pair<TT;>;>; 
findResult D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result; t it :Lorg/openide/util/lookup/AbstractLookup$ReferenceIterator; 'Lorg/openide/util/Lookup$Template<TT;>; d<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Template<TT;>;)Lorg/openide/util/Lookup$Result<TT;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; registerReferenceToResult v(Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult;)Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult; newRef prev y(Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult<*>;)Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult; cleanUpResult ^(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult; templ now J cnt took %Lorg/openide/util/Lookup$Template<*>;! java/lang/String a(Lorg/openide/util/Lookup$Template<*>;)Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult; ensure ref pairs Ljava/util/Iterator; oldIndex modified Ljava/util/Set; FLjava/util/Iterator<Lorg/openide/util/lookup/AbstractLookup$Pair<*>;>; ;Ljava/util/Set<Lorg/openide/util/lookup/AbstractLookup$R;>; p(Lorg/openide/util/lookup/ArrayStorage$Transaction;Ljava/util/Set<Lorg/openide/util/lookup/AbstractLookup$R;>;)V $(Ljava/util/Map;Ljava/lang/Object;)V B(Lorg/openide/util/lookup/AbstractLookup$Pair;Ljava/lang/Object;)V B(Lorg/openide/util/lookup/AbstractLookup$Pair;Ljava/lang/Object;)Z $(Ljava/lang/Object;Ljava/util/Set;)V (I)Ljava/lang/Object; vLjava/lang/Object;Lorg/openide/util/lookup/AbstractLookup$Storage<Lorg/openide/util/lookup/ArrayStorage$Transaction;>; 
SourceFile ArrayStorage.java InnerClasses Transaction Pair Storage Info 	JustPairs ReferenceIterator ReferenceToResult> org/openide/util/Lookup TemplateA (org/openide/util/lookup/AbstractLookup$R RD org/openide/util/Lookup$Result Result 0    �       � r s  �    �      �   8     
*� � �    �   
    - 	 . �       
 � �       �   F     
*� *+� �    �       1  2 	 3 �       
 � �     
 � �  �    �    ! �  �  �     �,� N,� � �6-�� >-2� -+S,+� W�-2+� #� +-2� &� (� ,-+S������ 0Y� 2Y� 45� 7,� � ;� 7A� 7,� � ;� 7C� 7,� E� I� L� O�,+� R66-�� 4-2� ,+� W�-2+� #� � ,+� W������,+� W�    �   v    ;  =  ?  @  A " B ( D * G 5 I D L I N K ? Q T e U t V � W � [ � ] � ^ � _ � a � d � f � h � j � m � ] � s � u �   H   B � �  � 8 � �  � C � �    � � �     � � �    � � �   �    �       � � �  �    
�  ^ � ;� 	�  �   	 �   �   �    �  � �  �  R     },� N-� �66-�� h-2� �� )-2+� #� -2� &:� ,,� W6����-�� -2� � -d-2S���-dS����    �   J    |  } 	 ~ 
 �  �  �  �  � 0 � 9 � @ � G � K � N � T � e � r � | � �   H  9  � �   l � �    } � �     } � �    } � �   x     p � �  �     9  � �  �    � 
 ^� +&� 	 �   	 �   �    � �  �   �     E,� N6-�� 8-2� &� � +-2� &:+� V � \:� 
,� W���Ǳ    �   * 
   �  �  �  �  � % � 2 � 7 � > � D � �   H  %  � �  2  � �   < � �    E � �     E �     E � �   @    �    �  ^!�  �   	 �   �     �   �     $*� � ^� *� � ^� _M� eY*,+� g�� j�    �       � 
 �  �   � �           $ � �     $  �          $  �      �     �   	 
  �   �     +� nY*� p� tM,� w� ,� {� ~+� ����,� {� ���    �       �  �  � ! � ) � �        + � �     + �     �       +  �   	 �  n �      �            �   d     *� pM*+� p,�    �        
 �         � �      s    s  �        �  �      �      �  b     q� �A� nY*� p� t:6� w� 	����� � e7 ��� 7� �� 1� �� ��� Y� �SY� SY+� 
+� �� S� �*� �Z� p�    �   .        " ) 8 H c f �   >    q � �     q �   m   `   ] �  ) H  �       q  �   U �  n� >   � n  � �  ^ ^�     � n  � �  ^ ^  �      �   "        � �  �   A     � Y*� � ��    �      # �        � �     # �  �   #    � �  �       � nY*� p� tN+� � L-� w� �-� {:+� �:� � � ,� � � &:� ~�  ,� �� � W��Ч��-� w� p-� {:66� ~+� � �6� ~+� � �6� � � 2� � +� 2+� 2� #���,� �� � W� ���*-� �� p*+*� � ͵ �    �   n   ) + - .  / &1 02 <4 J5 V7 Y8 \; c< i> l? oB C �E �F �I �K �M �O �R �U �V �W �   f 
 <  � �    9$ s  & 3%&  i d$ s  l a' �  o ^ � �    � � �     � � �    �()   �  �     & 3%*    �(+  �   $ 
�  n�   �/� �  .�  �   	 �  (   �   , 
 � �  �   |     $�+�� +2� &���*+2� &� ����    �      Z 	[ \  ] "b �        $ �     $      $ � �  �     ! �         �  A �-  �   4     
*+,� � б    �       ! �       
 � �   �   	 �  � A �.  �   4     
*+,� � Ա    �       ! �       
 � �   �   	 �  � A !/  �   4     
*+,� � ج    �       ! �       
 � �   �   	 �  � A �0  �   4     
*+� ,� ۱    �       ! �       
 � �   �   	 � ( A �1  �   0     *� ߰    �       ! �        � �   �   #   �   23   45   R 
  6  & �7	 � �8 \ �9  e  :   n �;   �<  �=? @ �B C=E	