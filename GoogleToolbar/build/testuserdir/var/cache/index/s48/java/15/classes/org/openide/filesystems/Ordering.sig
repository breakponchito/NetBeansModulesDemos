����   4�	       org/openide/filesystems/Ordering LOG Ljava/util/logging/Logger;
  	 
   java/lang/Object <init> ()V	      java/util/logging/Level FINE Ljava/util/logging/Level;  getOrder for {0}
      java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V       java/util/Collection iterator ()Ljava/util/Iterator; " # $ % & java/util/Iterator hasNext ()Z
 ( ) * + , java/util/Collections 	emptyList ()Ljava/util/List; . java/util/HashMap
 - 	 1 java/util/TreeSet
 0 	 " 4 5 6 next ()Ljava/lang/Object; 8 "org/openide/filesystems/FileObject
 7 : ; < 
getNameExt ()Ljava/lang/String; > ? @ A B java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; D "java/lang/IllegalArgumentException F java/lang/StringBuilder
 E 	 I Duplicate in children list: 
 E K L M append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 7 O P < getPath R 
Children: 
 E T L U -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 E W X < toString
 C Z  [ (Ljava/lang/String;)V ] position
 7 _ ` a getAttribute &(Ljava/lang/String;)Ljava/lang/Object; c java/lang/Number e 2org/openide/filesystems/Ordering$1ChildAndPosition
 d g  h :(Lorg/openide/filesystems/FileObject;Ljava/lang/Number;Z)V j k l m n java/util/SortedSet add (Ljava/lang/Object;)Z
 7 p q & isFolder	  s t  WARNING v JEncountered nonnumeric position attribute {0} of {1} for {2}
Children: {3}
  x y z getClass ()Ljava/lang/Class;
  |  } A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
 7  � � 	getParent &()Lorg/openide/filesystems/FileObject; � (All children must have the same parent:  �  vs. 
 7 � � � getAttributes ()Ljava/util/Enumeration;
 � � � � � org/openide/util/NbCollections iterable -(Ljava/util/Enumeration;)Ljava/lang/Iterable; �  � java/lang/Iterable � java/lang/String	  � �  FINEST
  � � � 
isLoggable (Ljava/util/logging/Level;)Z �   attr found {0}({1})
 � � � � indexOf (I)I � #  reading attribute {0}({1}) -> {2}	 � � � � � java/lang/Boolean TRUE Ljava/lang/Boolean;
 � � � n equals � GEncountered non-boolean relative ordering attribute {0} from {1} on {2}
 � � � � 	substring (II)Ljava/lang/String; > � � � get &(Ljava/lang/Object;)Ljava/lang/Object;
 � � � � (I)Ljava/lang/String; � java/util/Set � java/util/HashSet
 � 	 � k � \Relative ordering attribute {0} on {1} is deprecated in favor of numeric position attributes � CCould not find both sides of relative ordering attribute {0} on {1} �   no more attribs {0} j 	 d � � � child $Lorg/openide/filesystems/FileObject; j � � & isEmpty j � � � size ()I  � � Projects/.+/Lookup
 � � � � matches (Ljava/lang/String;)Z
 � � � � �  org/openide/filesystems/FileUtil getConfigRoot
 � � � � 
isParentOf K(Lorg/openide/filesystems/FileObject;Lorg/openide/filesystems/FileObject;)Z � java/util/ArrayList
 � �  � (Ljava/util/Collection;)V � � � � n java/util/List remove � 
 7 � � < getExt � _hidden
 � � � � endsWith " � �  � � � �
 � �  � (I)V � 
ergonomics
 � �  contains (Ljava/lang/CharSequence;)Z � k SNot all children in {0}/ marked with the position attribute: {1}, but some are: {2} > �
	
 org/openide/util/BaseUtilities topologicalSort 7(Ljava/util/Collection;Ljava/util/Map;)Ljava/util/List; )org/openide/util/TopologicalSortException "Contradictory partial ordering in 
   C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 , partialSort
 � checkedListByCopy 4(Ljava/util/List;Ljava/lang/Class;Z)Ljava/util/List;
  findPosition 7(Lorg/openide/filesystems/FileObject;)Ljava/lang/Float;
  ! getOrder )(Ljava/util/Collection;Z)Ljava/util/List; � � �$ �% (I)Ljava/lang/Object;
  � �()* subList (II)Ljava/util/List;
,-./0 java/lang/Float 
floatValue ()F	 234 $assertionsDisabled Z6 java/lang/AssertionError8  => 
5: ; (Ljava/lang/Object;)V �= �> (Ljava/lang/Object;)IB�  
ABCDE java/lang/Math round (F)I
GHIJK java/lang/Integer valueOf (I)Ljava/lang/Integer;
 7MNO setAttribute '(Ljava/lang/String;Ljava/lang/Object;)V
 QRS setOrder (Ljava/util/List;)V
5 	V 	setOrder(X ) -> 
 b-
,[J\ (F)Ljava/lang/Float;
^_`a < *org/openide/filesystems/FileAttributeEvent getName
 � �
^de � getFile
ghij & java/lang/Class desiredAssertionStatus
g_
 mno 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; ATTR_POSITION Ljava/lang/String; ConstantValue Code LineNumberTable LocalVariableTable this "Lorg/openide/filesystems/Ordering; pos Ljava/lang/Object; edge Ljava/util/Set; slash I val f1 f2 attr subsequentChild previousChild cap 4Lorg/openide/filesystems/Ordering$1ChildAndPosition; 
fileObject mis Ljava/util/Iterator; n f missingNames Ljava/util/List; presentNames missingPositions x +Lorg/openide/util/TopologicalSortException; children Ljava/util/Collection; logWarnings it 	unordered ordered childrenByName Ljava/util/Map; childrenByPosition Ljava/util/SortedSet; parent edges it2 	shouldLog LocalVariableTypeTable 5Ljava/util/Set<Lorg/openide/filesystems/FileObject;>; :Ljava/util/Iterator<Lorg/openide/filesystems/FileObject;>; $Ljava/util/List<Ljava/lang/String;>; 6Ljava/util/List<Lorg/openide/filesystems/FileObject;>; <Ljava/util/Collection<Lorg/openide/filesystems/FileObject;>; GLjava/util/Map<Ljava/lang/String;Lorg/openide/filesystems/FileObject;>; KLjava/util/SortedSet<Lorg/openide/filesystems/Ordering$1ChildAndPosition;>; jLjava/util/Map<Lorg/openide/filesystems/FileObject;Ljava/util/Set<Lorg/openide/filesystems/FileObject;>;>; JLjava/util/Iterator<Lorg/openide/filesystems/Ordering$1ChildAndPosition;>; StackMapTable 
Exceptions MethodParameters 	Signature u(Ljava/util/Collection<Lorg/openide/filesystems/FileObject;>;Z)Ljava/util/List<Lorg/openide/filesystems/FileObject;>; outLeft Ljava/lang/Float; outRight left right oldOrder length start end rangeLength idx nue 	beforePos afterPos proposed actual oneNewChild fullySpecified 	toBeMoved before after d asserts� java/io/IOException 9(Ljava/util/List<Lorg/openide/filesystems/FileObject;>;)V o affectsOrder /(Lorg/openide/filesystems/FileAttributeEvent;)Z event ,Lorg/openide/filesystems/FileAttributeEvent; name 
access$000 ()Ljava/util/logging/Logger; <clinit> 
SourceFile Ordering.java InnerClasses ChildAndPosition             pq r    \34       s   /     *� �   t       -u       vw    ! s  
E    P� � *� *�  M,� ! � � '�>6� -Y� /:� 0Y� 2::,� ! �,� 3 � 7:� 9� = � +� CY� EY� GH� J� N� JQ� J*� S� V� Y�\� ^:		� b� /� dY	� b� f� i W� o� � �6� 4� 0	� +� � ru� Y	SY	� wSY� NSY*S� {� � ~:� E� ~� ;� CY� EY� G�� J� ~� N� J�� J� N� JQ� J*� S� V� Y�	� � o� � �>��߻ -Y� /:� �� �� � :		� ! �c	� 3 � �:
� � �� �� � � ��� YSY
S� {
/� �6� ���
� ^:� � � �� !� � �� YSY
SYS� {� �� �� 8��t��o� ���g� � r�� YSY
SY� NS� {��C
� �� � � 7:
`� �� � � 7:� \� W� � � �:� � �Y� �Y:� = W� � W� � � r�� Y
SY� NS� {� #� � � r�� Y
SY� NS� {���� � �� �� � � ��� � � :		� ! � c	� 3 � d� �:
	� ! � J	� 3 � d� �:
� � � �:� 
� �Y� �Y:� = W� � W:
���� !� � � � � *� � � � 6

� +� NӶ ՙ 	6
� � �� ޙ ~� 6

�A� �Y*� �:� � :� ! � � 3 � d:� ǹ � W���� � :� ! � &� 3 � 7:� �� � 
� � ���� � � Ȼ �Y� � � �:� � :� ! � 0� 3 � 7:� 9:�� �� � �� W��̻ �Y� � � �:� � :� ! � 3� 3 � d:� Ƕ 9:�� �� � 2� W��ɲ � r� Y� NSYSYS� {� � � �Y*� �*��:� &� � r� EY� G� J� N� J� V��7��  t  � m   3  4  5  6   8 " 9 % : . V 7 W : X C Y N Z _ [ � ] � ^ � _ � ` � a � b � d � e g hF kK l[ n^ og p� q� r� t� u� v� x� y� z� | } ~6 �J �_ �i �w �| �� �� �� �� �� �� �� �� �� �� �� �� �� � � � �% �4 �B �G �[ �e �i �l �� �� �� �� �� �� �� �� �� �� �� � � �( �/ �2 �< �L �k �r �| � �� �� �� �� �� �� �� �� �� �� �� � � � � � �! �D �u  L ! N � �  � �xy 	w Cz{ �#|} �~y J � � _ ~� � �Q�q 
4 5� � B 'z{  Q� � 
� ��  � �  -�� r �q k � � � �q � !�� L ��� � e�� �4��  3��   P��    P�4  =��  ".�}  %+�}  ."��  7��  :� � g��� N�� 	���4 
�   z w Cz� B 'z�  -�� L ��� � e�� �4��   P��   =��  ."��  7�� g��� N�� 	�  M .�   "�    " > j 7  � L 7� 5 
  " > j 7 7  �   
  " > j 7 7  0� AQ�   
  " > j 7 7  � �  > "� : �� � 2 ?� Y 7 7 �� )�  
  " > j 7 > "  � � ! " 7� ? 7 �� !@� �  � "� %�  ")� � " � "� ) 7 �� �  � "� , d �� � !F� (�     C�   	�  � �   � RS s  �    �<=*� � N-� ! � -� 3 � 7:�� =� ���N::��*�:*�" � �*� � 66� #*�# � 7�# �&� 	����d6		� #*	�# � 7	�# �&� 	�	����	d`6

� �*	�# � 7�# �&� ^*	�' `	`�' �" � =*	�# � 7N*	d�# � 7:	`� *	`�# � 7� :��*�# � 7	�# �&��*`	`�' 	�' �" �{*�# � 7Nd� *d�# � 7� :*`�# � 7:�C
�� *�# � 7N*	�# � 7:�	d� *	�# � 7N*�# � 7:� �*d�# � 7�:*	`�# � 7�:*�# � 7�:*	�# � 7�:� � z� u� p�+�+f�+�+f�� .*	�# � 7N*�# � 7:*	`�# � 7:� +*�# � 7N*d�# � 7:*	�# � 7:� /�1� )
� $�5Y� EY� G� S7� J*� S� V�9�� �*� � � �:*� � :� ! � ,� 3 � 7:�� � 
:� 	:� ���� J<N*�< 6� � *d�# � 7:*� � d� � *`�# � 7:-� �� -\��+?f�@�F�L� k� -\��+?b�@�F�L� K�:�:�+�+b�@l6�+��� ��+�� -\�F�L� N-� 7d6*� � :� ! � !� 3 � 7:\�F�L�d���� -� *�P�*�# � 7� ~:� �� �� � :� ! � 2� 3 � �:/� �� � ^� �� �L���6�1� Y6� �5Y�T�� B*�:�1� 5*�" � *�5Y� EY� GU� J*� SW� J� S� V�9��   t  � `   �  �  �  � ' � ) � , � / � 7 � ; � B � M � N � V � Y � z � � � � � � � � � � � � �/jv	�
�������� "2F`ly �"�#�$�'�)�+�-�./01$4'5*8-92:4;7<A=Y>yA}C�D�E�F�H�I�J�K�LNR	TU+V7W:X=ZE]I^JaYb~c�d�f�g�h�i�j�k�mu     � �   ���  ��� " ��� 2 ���  B���  V��}  Y��}  �\�} 	 �.�} 
 � � A 8�} � �� � � A�� � :�� � (�} + � �  0x} ~  �q � 8��   ���   ��4  ��4  1�� �  4�� �  7�� � Y �� � � Z�4 �      B��� � 8��   ���  �   � *�  " � �   � 7 7 7 �  � 
&� $� }@ 7� ]@ 7&$� �  � 7 7 7 �,,,,  � '  � 7 7 7 �  � +  � 7 7 7  �  7 "� ) 7� � � L 7L 7� #� E,,� �  "� '�  7 "5� � � C�     C��   �  �   � 
 s   i     *\� ^L+� b� +� b�Y�Z��   t      p q r tu       � �    �y �    �  �   �   �� s   �     .*�]L+� �+\�b� *�c� o� +/� �� � �   t      y z 	| ~u       .��    )�q �    �  �@�   �  �� s         � �   t       + �  s   C      �f� � �1�k�l� �   t   
    +  /�    @ �   ��   
  d  �  