����   4t
      org/openide/nodes/Children$Keys keysExit 8(Lorg/openide/nodes/Children$Keys;Ljava/lang/Runnable;)V
   	 
 	keysCheck 8(Lorg/openide/nodes/Children$Keys;Ljava/lang/Runnable;)Z
     <init> (Z)V
     org/openide/nodes/Children$Array
     clone ()Ljava/lang/Object;	     lazySupport Z	     nodes Ljava/util/Collection;    ! " # java/util/Collection size ()I
  % & ' fallbackToDefaultSupport ()V	  ) * + LOG Ljava/util/logging/Logger; - OFallbacking entry support from lazy to default - Children.Array method was used
 / 0 1 2 3 java/util/logging/Logger warning (Ljava/lang/String;)V
  5 6  switchSupport	 8 9 : ; < org/openide/nodes/Children PR #Lorg/openide/util/Mutex$Privileged;
 > ? @ A ' !org/openide/util/Mutex$Privileged enterWriteAccess
  C D E entrySupport "()Lorg/openide/nodes/EntrySupport;
 G H I J K org/openide/nodes/EntrySupport 
getEntries ()Ljava/util/List;
 G M N O isInitialized ()Z	  Q R S parent Lorg/openide/nodes/Node;
  U V E getEntrySupport
 G X Y K snapshot [   \ java/util/List
  ^ _ ` getSnapshotIdxs (Ljava/util/List;)[I
 b c d e K java/util/Collections 	emptyList
 g h i j k org/openide/nodes/Node fireSubNodesChangeIdx H(Z[ILorg/openide/nodes/Children$Entry;Ljava/util/List;Ljava/util/List;)V
  m n o setEntrySupport #(Lorg/openide/nodes/EntrySupport;)V	  q r s 
nodesEntry "Lorg/openide/nodes/Children$Entry;
  u v w createNodesEntry $()Lorg/openide/nodes/Children$Entry; y java/util/ArrayList
 x {  | (Ljava/util/Collection;)V	  ~   before [ � � � add (ILjava/lang/Object;)V
 G � � ' notifySetEntries
 G � � | 
setEntries
 > � � ' exitWriteAccess
  � � � ([Lorg/openide/nodes/Node;)Z	  9  � � � contains (Ljava/lang/Object;)Z
  � � � remove	  � � � MUTEX Lorg/openide/util/Mutex; � !org/openide/nodes/Children$Keys$1
 � �  � 6(Lorg/openide/nodes/Children$Keys;Ljava/lang/Object;)V
 � � � � � org/openide/util/Mutex postWriteRequest (Ljava/lang/Runnable;)V � "org/openide/nodes/Children$Keys$KE
 � �	  � �  $assertionsDisabled � java/lang/AssertionError
 � �  ' [ � � � get (I)Ljava/lang/Object;
 � � � � � java/lang/Object equals
 � � � # hashCode � java/lang/StringBuilder
 � � � bad equals/hashCode in 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; �  vs.  �  class: 
 � � � � getClass ()Ljava/lang/Class;
 � � � � � java/lang/Class getName ()Ljava/lang/String;
 � � � � toString
 � �  � (Ljava/lang/Object;)V
 x �  � (I)V
 � �  � $(Lorg/openide/nodes/Children$Keys;)V
 � � � � 
updateList /(Ljava/util/Collection;Ljava/util/Collection;)V
  � � w getNodesEntry [ � � �
  � � � 	applyKeys (Ljava/util/List;)V
 � � � � ,([Ljava/lang/Object;Ljava/util/Collection;)V � !org/openide/nodes/Children$Keys$2
 � �  � 4(Lorg/openide/nodes/Children$Keys;Ljava/util/List;)V
  � �  	keysEnter [ � � �
 g � � ' fireNodeDestroyed	  lastRuns Ljava/util/Map;	 java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � &(Ljava/lang/Object;)Ljava/lang/Object; java/lang/Runnable � �
 � O desiredAssertionStatus java/util/HashMap
 � 	Signature ILjava/util/Map<Lorg/openide/nodes/Children$Keys<*>;Ljava/lang/Runnable;>; Code LineNumberTable LocalVariableTable this !Lorg/openide/nodes/Children$Keys; LocalVariableTypeTable &Lorg/openide/nodes/Children$Keys<TT;>; lazy MethodParameters k $Lorg/openide/nodes/Children$Keys<*>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; checkSupport StackMapTable idxs [I Ljava/util/List; entries init toLazy *Ljava/util/List<Lorg/openide/nodes/Node;>; 4Ljava/util/List<Lorg/openide/nodes/Children$Entry;>;2 java/lang/Throwable arr [Lorg/openide/nodes/Node; 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; i I 
refreshKey key Ljava/lang/Object; TT; (TT;)V createEntryForKey 6(Ljava/lang/Object;)Lorg/openide/nodes/Children$Entry; '(TT;)Lorg/openide/nodes/Children$Entry; setKeys b j a keys keysSet asserts sz l updator $Lorg/openide/nodes/Children$Keys$KE; Ljava/util/List<+TT;>; Ljava/util/Collection<+TT;>; )Lorg/openide/nodes/Children$Keys<TT;>.KE; (Ljava/util/Collection<+TT;>;)V ([Ljava/lang/Object;)V [Ljava/lang/Object; [TT; ([TT;)V invoke Ljava/lang/Runnable; 5Ljava/util/List<+Lorg/openide/nodes/Children$Entry;>; 8(Ljava/util/List<+Lorg/openide/nodes/Children$Entry;>;)V 	setBefore createNodes -(Ljava/lang/Object;)[Lorg/openide/nodes/Node; (TT;)[Lorg/openide/nodes/Node; destroyNodes ([Lorg/openide/nodes/Node;)V ch run ;(Lorg/openide/nodes/Children$Keys<*>;Ljava/lang/Runnable;)V r reg 
access$400 x0 x1 
access$500 <clinit> 8<T:Ljava/lang/Object;>Lorg/openide/nodes/Children$Array; 
SourceFile Children.java InnerClasses Keys Array 
Privilegedq  org/openide/nodes/Children$Entry Entry KE!      
           �       '    F     *� �      
   + ,                          P     *� �      
   ; <            !            "   !         ^     
*� � L+�      
   B D       
    #        
     #$ %    &    ' '    l     *� � *� � *� �  � *� $�         I J L                   (    %    &     & '    R     � (,� .*� 4�         O P Q                      6    -     �*� � �� 7� =*� B� FM*� B� L>� 4*� P� -*� T� W:� Z � � ]:*� P� a� f8Y:�*� lç :��*� � *� p� /**� t� p� xY,� zM,*� }� � 	,� Z *� p� � � 
*� B� �*� B,� �� 7� �� :� 7� ���  Z b e   e j e   	 � �   � � �      n   T U 	X Y [ \ *] 3^ =_ D` Td Ze _f mg rh vi ~k �l �m �p �q �s �u �v �u �v �w   >  D )*  3 ! Y+   �,+   �-     �     �.        3 ! Y/   �,0    �   (   K 	� J [�    [ � 1� \ [�    [  [
�    1
"   .    � �    h     *� � *� $*+� ��          � �            34           (    "   3  5    6    7  %    &    � �    �     Q*� � �� �� =*� � *=+�� *� +2� � � +S����*+� �W� �� �� N� �� �-��  	 = F      :   � � 	� � � � -� 1� 7� =� C� F� M� O�       89    Q     Q34        Q   (    	� � H1"   3 5    6    7  %    &   : �    d     � �� �Y*+� �� ��      
   � �            ;<              ;= "   ;    >  ?@    Z     
� �Y*+� ��         �       
     
;<        
      
;= "   ;     A B |   �  	  =� �� Y=� � �Y� ��+�  >� �
� �� xY+� z:6d� �� � :`6� g� � :� �� P� �� F� �� �� 9� �Y� �Y� ��� �� �ɶ �� �˶ �� Ͷ Ѷ ¶ ׷ ڿ�������z� xY+�  `� �:� �Y*� �:*� � +� � 1*� }� *� � � W+� �*� }� *� � � W*� �      b   � � � � '� 1� <� G� S� ^� �� �� �� �� �� �� �� �� �� ������   p  ^ SC<  M jD9  G pE<  4 �89  1 �F+       G   H   I9  � QJ+  � GKL    H  ^ SC=  G pE=  1 �FM        GN  � QJ0  � GKO (   ) 	� �  [�  �� c� � � , [ �"   G     P BQ   ;     �=� �� Y=� � �Y� ��+�>� {
� u6d� j+2:`6� R+2:� �� @� �� 6� �� �� )� �Y� �Y� ��� �� �ɶ �� ƶ ׷ ڿ��������� xY+�`� �:� �Y*� �:*� � +� � 1*� }� *� � � W+� �*� }� *� � � W*� �      Z   � � � � #� .� 4� @� F� �� �� �� �� �� �� �� �� �� �� �� � �   f 
 F CC<  : UD9  4 [E<  & o89    �     �FR   �H    �I9  � QJ+  � GKL    >  F CC=  4 [E=    �      �FS  � QJ0  � GKO (   & 	� � �  �� N� � � ( [ �"   F    T  � �    }     � �Y*+� �M*,� �� �,� ��          
               J+  
 UV              JW "   J    X Y         e� �� =*� }� G*� � @*� B� FM,*� � � W*� }� ,*� � � � ,*� � � W*� B,� �� �� �� N� �� �-��    R [      :       ! (" -$ 1% ?' J* R- X. [- b. d/       5J+    e     eC        5J0    e   (    � ? [
� H1"   C Z[ "   ;     \ ]^    �     =+�� +2� �����         B C B E       89         34           (   	 � � "   3  %    &   * �     V     � *+� W�      
   L M       _     `V        _$  "   	_  `     a *           '� *�
 �M,� ,+� � � *,� W�         S U V &X        '_     'bV   cV (    � &"   	_  b   * 	 
    R     +� *� � � �         `       _     `V (    @"   	_  `  d 
    :     *+� �         "       e     fV g     :     *+� �         "       e     fV  h '    D      8�� � � ��Y�� �      
   " %(    @    ij   kl   :   8m	  8n 	 > �o p 8r �       � s   �      