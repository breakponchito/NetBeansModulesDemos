����   4�
      'org/openide/util/lookup/InheritanceTree extractNode D(Ljava/util/Iterator;)Lorg/openide/util/lookup/InheritanceTree$Node;
  	 
   java/lang/Object <init> ()V  ,org/openide/util/lookup/InheritanceTree$Node
     (Ljava/lang/Class;)V	     object .Lorg/openide/util/lookup/InheritanceTree$Node;
      java/io/ObjectOutputStream writeObject (Ljava/lang/Object;)V	     
interfaces Ljava/util/Map; ! " # $ % java/util/Map entrySet ()Ljava/util/Set; ' ( ) * + java/util/Set iterator ()Ljava/util/Iterator; - . / 0 1 java/util/Iterator hasNext ()Z - 3 4 5 next ()Ljava/lang/Object; 7 java/util/Map$Entry 6 9 : 5 getKey < java/lang/Class
 ; > ? @ getName ()Ljava/lang/String; 6 B C 5 getValue E java/util/Collection G +org/openide/util/lookup/AbstractLookup$Pair I java/lang/ClassCastException
 K L M N O java/lang/String valueOf &(Ljava/lang/Object;)Ljava/lang/String;
 H Q  R (Ljava/lang/String;)V
 T U V W 5 java/io/ObjectInputStream 
readObject Y java/util/WeakHashMap
 X 	
 \ ] ^ _ ` org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; b java/lang/ClassLoader
 \ d e f lookup %(Ljava/lang/Class;)Ljava/lang/Object;
 ; h i j forName =(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class; ! l m n put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  p q r registerClass �(Lorg/openide/util/lookup/InheritanceTree$Node;Lorg/openide/util/lookup/AbstractLookup$Pair;)Lorg/openide/util/lookup/InheritanceTree$Node;
  t u v getType ()Ljava/lang/Class;
 x y z { | java/util/ArrayList add (Ljava/lang/Object;)Z
  ~  � 
assignItem Y(Lorg/openide/util/lookup/InheritanceTree;Lorg/openide/util/lookup/AbstractLookup$Pair;)Z
  � � � registerInterface F(Lorg/openide/util/lookup/AbstractLookup$Pair;Ljava/util/Collection;)Z
  � � r removeClass
  � � � removeInterface F(Lorg/openide/util/lookup/AbstractLookup$Pair;Ljava/util/Collection;)V
  � � � retainAllInterface ((Ljava/util/Map;Ljava/util/Collection;)V
  � � � retainAllClasses V(Lorg/openide/util/lookup/InheritanceTree$Node;Ljava/util/Map;Ljava/util/Collection;)Z
 ; � � 1 isInterface
  � � � searchInterface *(Ljava/lang/Class;)Ljava/util/Enumeration;
  � � � searchClass X(Lorg/openide/util/lookup/InheritanceTree$Node;Ljava/lang/Class;)Ljava/util/Enumeration; � 5org/openide/util/lookup/InheritanceTree$NeedsSortEnum �  
  � � � 	printNode Y(Lorg/openide/util/lookup/InheritanceTree$Node;Ljava/lang/String;Ljava/io/PrintStream;Z)V
  � � � accepts 0(Lorg/openide/util/lookup/AbstractLookup$Pair;)Z	  � � � children Ljava/util/ArrayList;
 x (	  � � � items Ljava/util/Collection; D � � | remove
  � � � (Ljava/lang/Class;)Z
  � � � classToNode o(Lorg/openide/util/lookup/InheritanceTree$Node;Ljava/lang/Class;)Lorg/openide/util/lookup/InheritanceTree$Node;
  � � 1 deserialized � 2org/openide/util/lookup/InheritanceTree$1VerifyJob
 � �  � �(Lorg/openide/util/lookup/InheritanceTree;Ljava/util/Collection;Lorg/openide/util/lookup/InheritanceTree$Node;Ljava/lang/Class;Lorg/openide/util/lookup/InheritanceTree$Node;)V
 � � �  before � *org/openide/util/lookup/AbstractLookup$ISE
  � �  markDeserialized
 � � � � registerJob 3(Lorg/openide/util/lookup/AbstractLookup$ISE$Job;)V
 � � �  inside � 0org/openide/util/lookup/InheritanceTree$1TwoJobs
 � �  � k(Lorg/openide/util/lookup/InheritanceTree;Lorg/openide/util/lookup/InheritanceTree$Node;Ljava/lang/Class;)V
 � �
 � � �  internal
 � � � � 
access$100 b(Lorg/openide/util/lookup/InheritanceTree$1TwoJobs;)Lorg/openide/util/lookup/InheritanceTree$Node;
  � � � emptyEn ()Ljava/util/Enumeration;
  � � � 
nodeToEnum G(Lorg/openide/util/lookup/InheritanceTree$Node;)Ljava/util/Enumeration; D ( ! � � � &(Ljava/lang/Object;)Ljava/lang/Object; � +org/openide/util/lookup/AbstractLookup$Info - � � 
 F � � � getIndex ()I	 � � � � index I
 F � � � setIndex 4(Lorg/openide/util/lookup/AbstractLookup$Storage;I)V D y D  1 isEmpty
 x 
 java/util/Collections enumeration /(Ljava/util/Collection;)Ljava/util/Enumeration;
 �
  1(Lorg/openide/util/lookup/InheritanceTree$Node;)V
 F � 
instanceOf
  | equals
 x  (I)V 6 � setValue D � size java/util/HashMap
  (Ljava/util/Map;)V
!"# 	singleton #(Ljava/lang/Object;)Ljava/util/Set;
 �& java/util/List	()*+, (org/openide/util/lookup/ALPairComparator DEFAULT Ljava/util/Comparator;
./0 sort )(Ljava/util/List;Ljava/util/Comparator;)V !23 � get
 5 e �789: 1 java/util/Enumeration hasMoreElements7<= 5 nextElement
 ?@A singletonEn +(Ljava/lang/Object;)Ljava/util/Enumeration;
 C3 5
EFGH R java/io/PrintStream printJ java/lang/StringBuilder
I 	M 
Node for: 
IOPQ append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
ISPT -(Ljava/lang/Object;)Ljava/lang/StringBuilder;V 	
 ;XYZ getClassLoader ()Ljava/lang/ClassLoader;
I\] @ toString
E_` R println
 xb c (Ljava/util/Collection;)Ve   item (
IgPh (I)Ljava/lang/StringBuilder;j ): 
ElH n  id: 
pqrst java/lang/System identityHashCode (Ljava/lang/Object;)I
vwxyz java/lang/Integer toHexString (I)Ljava/lang/String;|  index: 
E~H�  I: 
 F�� 5 getInstance
E�` �   	 ��  reg
� t�  org/openide/util/Lookup$Template� 8org/openide/util/lookup/AbstractLookup$ReferenceToResult� 8org/openide/util/lookup/AbstractLookup$ReferenceIterator
�� � =(Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult;)V
�� 4 1
���� current <()Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult;	���� template "Lorg/openide/util/Lookup$Template;
�
���� 	getResult ,()Lorg/openide/util/lookup/AbstractLookup$R;
 	
 ��� collectListeners #(Ljava/util/Set;Ljava/lang/Class;)V
 x 	
 x
 x�3� (I)Ljava/lang/Object; ' y
���� first
 ;�� v getSuperclass ! 
����� java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
��� 	emptyList ()Ljava/util/List;
 ��� 	retainAll '(Ljava/util/Map;Ljava/util/ArrayList;)V
 � �� E(Lorg/openide/util/lookup/AbstractLookup$Pair;Ljava/util/ArrayList;)V
 � {� E(Lorg/openide/util/lookup/AbstractLookup$Pair;Ljava/util/ArrayList;)Z
 ��� endTransaction '(Ljava/util/ArrayList;Ljava/util/Set;)V
 ��� beginTransaction (I)Ljava/util/ArrayList;� java/io/Serializable� .org/openide/util/lookup/AbstractLookup$Storage serialVersionUID J ConstantValue        	Signature 4Ljava/util/Map<Ljava/lang/Class;Ljava/lang/Object;>; \Ljava/util/Map<Ljava/lang/Class;Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult;>; Code LineNumberTable LocalVariableTable this )Lorg/openide/util/lookup/InheritanceTree; (Ljava/io/ObjectOutputStream;)V e Ljava/util/Map$Entry; c Ljava/lang/Class; o Ljava/lang/Object; it Ljava/util/Iterator; oos Ljava/io/ObjectOutputStream; StackMapTable 
Exceptions� java/io/IOException MethodParameters (Ljava/io/ObjectInputStream;)V ois Ljava/io/ObjectInputStream; clazz Ljava/lang/String; l Ljava/lang/ClassLoader;�  java/lang/ClassNotFoundException item -Lorg/openide/util/lookup/AbstractLookup$Pair; affected node registeredAsInterface Z LocalVariableTypeTable 0Lorg/openide/util/lookup/AbstractLookup$Pair<*>; (Ljava/util/ArrayList<Ljava/lang/Class;>; [(Lorg/openide/util/lookup/AbstractLookup$Pair<*>;Ljava/util/ArrayList<Ljava/lang/Class;>;)Z n X(Lorg/openide/util/lookup/AbstractLookup$Pair;Ljava/util/ArrayList<Ljava/lang/Class;>;)V retain notify :(Ljava/util/Map;Ljava/util/ArrayList<Ljava/lang/Class;>;)V Ljava/lang/Class<TT;>; y<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/util/Enumeration<Lorg/openide/util/lookup/AbstractLookup$Pair<TT;>;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value 	unchecked unsorted (Ljava/util/Enumeration;)Z en Ljava/util/Enumeration; (Ljava/io/PrintStream;Z)V out Ljava/io/PrintStream; 	instances ch result ex ,Lorg/openide/util/lookup/AbstractLookup$ISE; verify 4Lorg/openide/util/lookup/InheritanceTree$1VerifyJob; found j 2Lorg/openide/util/lookup/InheritanceTree$1TwoJobs; Ljava/lang/Class<*>; r(Lorg/openide/util/lookup/InheritanceTree$Node;Ljava/lang/Class<*>;)Lorg/openide/util/lookup/InheritanceTree$Node; �(Lorg/openide/util/lookup/InheritanceTree$Node;Ljava/lang/Class<*>;)Ljava/util/Enumeration<Lorg/openide/util/lookup/AbstractLookup$Pair;>; -Lorg/openide/util/lookup/AbstractLookup$Info; retained CLjava/util/Iterator<Lorg/openide/util/lookup/AbstractLookup$Pair;>; )Ljava/util/Collection<Ljava/lang/Class;>; i(Lorg/openide/util/lookup/InheritanceTree$Node;Ljava/util/Map;Ljava/util/Collection<Ljava/lang/Class;>;)Z FLjava/util/Enumeration<Lorg/openide/util/lookup/AbstractLookup$Pair;>; v(Lorg/openide/util/lookup/InheritanceTree$Node;)Ljava/util/Enumeration<Lorg/openide/util/lookup/AbstractLookup$Pair;>; set ll entry iface *Ljava/util/Collection<Ljava/lang/Object;>; )Ljava/util/ArrayList<Ljava/lang/Object;>; :Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Object;>; PLjava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Object;>;>; \(Lorg/openide/util/lookup/AbstractLookup$Pair<*>;Ljava/util/Collection<Ljava/lang/Class;>;)Z elems p Ljava/util/List; Ljava/util/HashMap; multi changed 	reordered retainItems Ljava/util/HashMap<**>; one obj \(Ljava/lang/Class<*>;)Ljava/util/Enumeration<Lorg/openide/util/lookup/AbstractLookup$Pair;>; i sp type 
findResult D(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/Lookup$Result; :Lorg/openide/util/lookup/AbstractLookup$ReferenceIterator; t prev :Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult; 'Lorg/openide/util/Lookup$Template<TT;>; d<T:Ljava/lang/Object;>(Lorg/openide/util/Lookup$Template<TT;>;)Lorg/openide/util/Lookup$Result<TT;>; Ljava/lang/Override; registerReferenceToResult v(Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult;)Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult; newRef =Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult<*>; &Ljava/lang/Class<+Ljava/lang/Object;>; y(Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult<*>;)Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult; cleanUpResult ^(Lorg/openide/util/Lookup$Template;)Lorg/openide/util/lookup/AbstractLookup$ReferenceToResult; templ ensure +(I)Ljava/util/ArrayList<Ljava/lang/Class;>; list allAffectedResults Ljava/util/Set; ;Ljava/util/Set<Lorg/openide/util/lookup/AbstractLookup$R;>; f(Ljava/util/ArrayList<Ljava/lang/Class;>;Ljava/util/Set<Lorg/openide/util/lookup/AbstractLookup$R;>;)V *Lorg/openide/util/lookup/AbstractLookup$R; O(Ljava/util/Set<Lorg/openide/util/lookup/AbstractLookup$R;>;Ljava/lang/Class;)V arrayEn ,([Ljava/lang/Object;)Ljava/util/Enumeration; [Ljava/lang/Object; @([Ljava/lang/Object;)Ljava/util/Enumeration<Ljava/lang/Object;>; TT; 7<T:Ljava/lang/Object;>(TT;)Ljava/util/Enumeration<TT;>; 4<T:Ljava/lang/Object;>()Ljava/util/Enumeration<TT;>; $(Ljava/util/Map;Ljava/lang/Object;)V B(Lorg/openide/util/lookup/AbstractLookup$Pair;Ljava/lang/Object;)V B(Lorg/openide/util/lookup/AbstractLookup$Pair;Ljava/lang/Object;)Z $(Ljava/lang/Object;Ljava/util/Set;)V 
access$000 x0 �Ljava/lang/Object;Ljava/io/Serializable;Lorg/openide/util/lookup/AbstractLookup$Storage<Ljava/util/ArrayList<Ljava/lang/Class;>;>; 
SourceFile InheritanceTree.java InnerClasses Node Entrys &org/openide/util/lookup/AbstractLookup Pair NeedsSortEnum 	VerifyJob ISEy .org/openide/util/lookup/AbstractLookup$ISE$Job Job TwoJobs Info Storage Template ReferenceToResult ReferenceIterator� (org/openide/util/lookup/AbstractLookup$R R� )org/openide/util/lookup/InheritanceTree$R� org/openide/util/Lookup$Result Result 0   ��  �� �   � �     �   �   � ��  �   � $    �   D     *� *� Y� � �   �       t  u  v�       ��    � �  0     y+*� � *� � g*� �   � & M,� , � O,� 2 � 6N-� 8 � ;:+� =� -� A :� D� � F� � HY� J� P�+� ���+� �   �   :    y  {  |  ~ '  1 � < � E � M � ] � j � p � s � x ��   >  1 ?��  < 4��  M #��   U��    y��     y�� �   ! �  -� K 6 ; �      �    ��   �    W� �       k*+� S� � *� XY� Z� � [a� c� aN+� S� KYM� ?+� S:� D� � F� � HY� J� P�,-� g:*� � k W����   �   .    �  �  � " � . � 4 � D � Q � Y � g � j ��   >  4 3��  Y ��    k��     k��  + @��  " I�� �   " � "  a� .   T K a   � �    ���   �    {� �   �     +*� +� oN,-� s� wW-*+� }� � �*+,� �6�   �       � 	 �  �  �   � ( ��   4    +��     +��    +� �  	 "�   (          +�    +� �   	 �  �   	�  �  �     �� �   �     *� +� �N-� ,-� s� wW*+,� ��   �       � 	 �  �  �  ��   *    ��     ��    � �  	          � �    �  �   	�  �  �    �� �   j     *+,� �**� +,� �W�   �       �  �  ��        ��          	 �        	 �   	  	  �   
  e � �   r     +� +� �� 	*+� ��**� +� ��   �       �  �  ��       ��     ��        � �    �   �  �        [ s 	 �   /     *� ��   �       ��         �      H �   N     *� �+� ��   �   
    �  ��        ��          �   	     
 q r �   �     9*+� �� �*� �� )*� �� �M,� N-� � -+� o:� ����*�   �   2    �  � 
 �  �  �  " % , 1
 4 7�   4      ,     ��    9      9�� �    
�  -�  � � �   	  �   
 � r �   �     O*+� �� �*� �� *� �+� � � *�*� �� )*� �� �M,� N-� � -+� �:� �����   �   :     
     '! /$ 4& 8' ;* B3 G6 J8 M<�   4  4    B    / ��    O      O�� �    
�  -�  � � �   	  �    � � �  %     �+,� �� �+� s,� +�+� �� s+� �� �N-� :� � ]*,� �:� D� �� <� �Y*+� �,+� �:� Ƨ :� �� ��� �*,� �:� ����� �Y*+,� �N-� ڧ :-� ��-� �-� ް  Y ^ a � � � � � �   ~   F H 
K M P R #U )W .X 1[ :] G� Y� ^� a� c� h� o� r� w� �� �� �� �$ �' �. �( �, �- �0 �3�   f 
 c   Y '  ) _   : N   # h��  � 	    ���     �     ���  �  !        ��" �   P 
	�  -�  � /    ; -   �  �� � � �     ; �  �
�   	 � �   #  � � �   �     ,� 
*+,� �L+� � �+� �   �      : ; > @ B�        ��          ��        �" �    �   	  �  �   $  � � �  "     �6+� �� v,� r+� �� � :� , � I� 2 � F:,� � � �:� � � 6� � �� �� � �� ����� -� -+� s� � W+� �� 4+� �� �:� :� � *,-� �6� 
� � ���� $+� �� � � +� �� +� ��� � �   �   b   O Q R T #U /V <X AZ H[ N^ [_ fd if rh }l �m �n �p �q �t �v �x �z �}�   p  / 7��  < *%   d��  �    �   � (��    ���     ��     �     �	 �   �&       / 7�   d�'    �	( �   / �  -� 4 F �� � �  -�  � � !@�   �    	  �   ) 
 � � �   �     (*� �� *� �� 
� �L� *� ��L+�� �Y*�	�   �      � � � � � ��       �   �    (         �*   �* �    � 7� �     �   +  � � �  �     �*� � �*� �   � & N-� , � �-� 2 � 6:� 8 � ;:+�� b� A :� D� � D:+� � � �� 1+�� �� xY�:� wW+� wW� W,� � W��x�   �   Z   � � 	� � !� ,� 8� A� J� R� Y� d� f� i� r� t� ~� �� �� �� �� ���   \ 	 Y , �  ~ - �  J V�  , t.�  8 h/�    ���     ���    �� �   ���    H  Y ,0  ~ -1  , t.2  8 h/"    ��    ��(   ��3 �    	�  -� M 6 ; 
"� �   	�  �  �   4     [ s  � � �  l     �*� � �*� �   � & N-� , � �-� 2 � 6:� A :� D� E� D:+� � � 0� � � � � 2 � W,� 8 � � W�  +�� -� � ,� 8 � � W��|�   �   J   � � � �  � +� 4� <� C� N� Y� m� {� ~� �� �� �� ���   H  C 8, �  + p.�  4 g�    ���     ���    �� �   ��� �    �  -� U 6  D� � �   	�  �       [ s  � � �      )*� � �*� �   � & N-� , �-� 2 � 6:� A :�Y+�:� D6� � D� � :� � � & :6	6
� , � P� 2 � F:�$� �:� � 
� � 6	� � �� �� � �� �6
���
� �%� �%:�'�-	� E� ,� D:� � � � � 2 � W� 	-� � ,� 8 � � W���   �   � %  � � � �    + 4 > E J
 Y e h k u � � � � � �  �" �% �( �* �, �- �0 �1 �2 �4 �68:>%@(A�   �  V 5�  � >6�  � 2%  � �7  � � �  + �.�  4 ��  > �8  e �5�  E �9  h �: 	 k �; 
  )��    )<    )� �  ��      > �= �   r �  -� A 	  ! D - 6    �  	  ! D - 6  -  � � 2 F �� /�    ! D -  �   	<  �       [ s  � � �  �     �*� � *� XY� Z� *� +�1 M,� �N:*�4:�6 � C�; � F:+�� +-� 	N� !� � xY�:-� wW� wW���� -� *� +-� k W-�>�� � xY�:*� +� k W��,� D� ,� D��,� F�>�   �   n   I K N P !R #S &U .W 8X DZ M\ Q] W_ \` fa md ug xi �k �m �o �p �s �u �x �y �|�   H  D 1��  # �>�  & � � �  . �    ���     ���   �?�        ��" �   - 
�    ;  F x7  � ( F� � �   � �   @     [ s 
   �   �     **� , � "*� 2 � L+�B� *� � � +�����   �      � 	� � � #� %� (��           *��  �     � " � �   �   
 � � �  �    6*� s:,+�D,�IY�KL�N�RU�N� � �W�R�[�^*� �� �6� xY*� ��a� �:� , � �� 2 � F:,+�D,�IY�Kd�N��fi�N�[�D,�k,�IY�Km�N�o�u�N�[�D,{�D,� �}� ,�IY�K�N���R�[�D,����j*� �� C6*� �� �:� , � -� 2 � :�IY�K+�N��N�[,� ���ϱ   �   j   � � � ;� B� E� U� _� k� p� �� �� �� �� �� �� �� �� �� �� �����2�5��   p  k �6�  E �A �  U ���     � =A �  4��   6     6B�   6   6  0C� �   � � -   KE   ; EI�    KE   ; EI a� "   KE - ;  � � F�    KE   ;  �    KE - ;  � 3   KE   ;  �     B       DE �   �     F*��� �*��+���1 ��M,� )��Y,��N-��� -����+�����-������   �   & 	  � � 	� � � '� .� <� D��   *  ' �F    F��     FG�   ,HI        FGJ �    	� ��� �   G  �   K    L   MN �   �     /*��� *�Y����+����M*,�4W*��,+� k ���   �      � � � �  ��        /��     /OI   ��        /OP   �Q �    �   O  �   R ST �   j     %*+����*��� � *��+���1 ���   �   
   � 	��       %��     %U� �    O��   U   �� �   <     � xY���   �      ��       ��     V � �   V  �   W �� �   �     8+��� *,+��� ;��� "+� �N-� , � *,-� 2 � ;�����   �      � � � � &� 7��   *   ��    8��     8X �    8YZ        8X    8Y[ �    �  -� �   	X  Y  �   \ �� �  _     �*��� �,� t*��,�1 ��N��Y-��:��� ����:+� +�� W���-��� )��� *��,� � W� *��,��� k W,��M���*���� � *���   �   N   � � �    $ , 6 : C
 F O W e u z } � ��   >  6 ]   `�I  $ V�F    ���     �YZ    ���        �Y[ �    � ��� �   	Y  �  �   ^ _` �   2     *����   �      ��        a  �      �   b @A �   D     *� ��   �      ��        �          c  �      �   d  � � �         ����   �      ��   eA�f �   4     
*+,� x���   �       a�       
��  �   	 	 A �g �   4     
*+,� x�ı   �       a�       
��  �   	� � A {h �   4     
*+,� x�Ǭ   �       a�       
��  �   	� � A�i �   4     
*+� x,�ʱ   �       a�       
��  �   	X Y A�� �   0     *�ΰ   �       a�       ��  �   V j  �   /     *� �   �       a�       k�   �   lm   no   �   p  6 !q	 Frt	 � u  �  v   �rw x �z �  {   �r| �r}� \~ �r �r� �r� � � � \�	