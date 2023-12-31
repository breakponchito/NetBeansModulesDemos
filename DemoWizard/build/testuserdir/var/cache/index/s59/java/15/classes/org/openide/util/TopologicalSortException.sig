����   4F
      java/lang/Exception <init> ()V  java/util/Stack
  	      )org/openide/util/TopologicalSortException 	dualGraph Ljava/util/Stack;	     vertexes Ljava/util/Collection;	     edges Ljava/util/Map;
     topologicalSets ()[Ljava/util/Set;  java/util/ArrayList    ! " # java/util/Collection size ()I
  %  & (I)V ( ) * + , java/util/Set iterator ()Ljava/util/Iterator; . / 0 1 2 java/util/Iterator hasNext ()Z . 4 5 6 next ()Ljava/lang/Object; 8 9 : ; < java/util/List add (Ljava/lang/Object;)Z
   (   @ java/util/HashSet 8 B C D toArray (([Ljava/lang/Object;)[Ljava/lang/Object; F [Ljava/util/Set; H java/io/StringWriter
 G  K java/io/PrintWriter
 J M  N (Ljava/io/Writer;)V
  P Q R 
printDebug (Ljava/io/PrintWriter;)V
 J T U  close
 G W X Y toString ()Ljava/lang/String;
 [ \ ] ^ _ java/lang/Object getClass ()Ljava/lang/Class;
 a b c d Y java/lang/Class getName
 ? 
  g h  unsortableSets ( j k l addAll (Ljava/util/Collection;)Z n java/util/HashMap
 m  q r s t u java/util/Map entrySet ()Ljava/util/Set; w java/util/Map$Entry v y z 6 getValue
 ? |  } (Ljava/util/Collection;)V v  � 6 getKey ( 9 ( � � l 	retainAll ( � � 2 isEmpty q � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � :TopologicalSortException - Collection with relevant edges 
 J � � � print (Ljava/lang/String;)V
 J � � � (Ljava/lang/Object;)V �  cannot be sorted
 J � � � println �  Conflict #
 J � � & � : 
 J � � �
  � � R printStackTrace
 J �  � (Ljava/io/OutputStream;)V
  �
 J � �  flush	  � � F result	  � � � counter I  )
  � � � constructDualGraph Z(ILjava/lang/Object;Ljava/util/HashMap;)Lorg/openide/util/TopologicalSortException$Vertex;
  �
  � � 6 pop � 0org/openide/util/TopologicalSortException$Vertex	 � � � � visited Z
  � � � visitDualGraph K(Lorg/openide/util/TopologicalSortException$Vertex;Ljava/util/Collection;)V	 � � � � 	edgesFrom Ljava/util/List; 8 � � < contains	 � � � � object Ljava/lang/Object;
 � � � � � java/util/Collections 	singleton #(Ljava/lang/Object;)Ljava/util/Set;  � q � � � get &(Ljava/lang/Object;)Ljava/lang/Object;  9
 � � � � � org/openide/util/BaseUtilities topologicalSort 7(Ljava/util/Collection;Ljava/util/Map;)Ljava/util/List; � java/lang/IllegalStateException � Cannot happen
 � �  �
 m �
 � �  � (Ljava/lang/Object;I)V
 m �	 � � � � y
  � � � push
 � �  , 	Signature ,Ljava/util/Map<*+Ljava/util/Collection<*>;>; ELjava/util/Stack<Lorg/openide/util/TopologicalSortException$Vertex;>; ((Ljava/util/Collection;Ljava/util/Map;)V Code LineNumberTable LocalVariableTable this +Lorg/openide/util/TopologicalSortException; LocalVariableTypeTable MethodParameters E(Ljava/util/Collection;Ljava/util/Map<*+Ljava/util/Collection<*>;>;)V partialSort ()Ljava/util/List; e i all res $Ljava/util/List<Ljava/lang/Object;>; StackMapTable unsort !Ljava/util/List<Ljava/util/Set;>; 
getMessage w Ljava/io/StringWriter; pw Ljava/io/PrintWriter; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; s Ljava/lang/String; Ljava/util/Set; relevant entry Ljava/util/Map$Entry; relevantVertices bad relevantEdges Ljava/util/Set<*>; #Ljava/util/Set<Ljava/lang/Object;>; 2Ljava/util/Map$Entry<*+Ljava/util/Collection<*>;>; [Ljava/util/Set<*>; <Ljava/util/Map<Ljava/lang/Object;Ljava/util/Collection<*>;>; (Ljava/io/PrintStream;)V Ljava/io/PrintStream; set v 2Lorg/openide/util/TopologicalSortException$Vertex; to leadsTo from setsTo convert Ljava/util/Iterator; 
listResult ex 
vertexInfo Ljava/util/HashMap; it objectsToSets sets edgesBetweenSets 'Ljava/util/Collection<Ljava/util/Set;>; YLjava/util/HashMap<Ljava/lang/Object;Lorg/openide/util/TopologicalSortException$Vertex;>; Ljava/util/Iterator<*>; FLjava/util/Map<Ljava/lang/Object;Ljava/util/Set<Ljava/lang/Object;>;>; 5Ljava/util/List<Ljava/util/Set<Ljava/lang/Object;>;>; GLjava/util/Map<Ljava/util/Set;Ljava/util/Collection<Ljava/util/Set;>;>; vertex info c �(ILjava/lang/Object;Ljava/util/HashMap<Ljava/lang/Object;Lorg/openide/util/TopologicalSortException$Vertex;>;)Lorg/openide/util/TopologicalSortException$Vertex; *Ljava/util/Collection<Ljava/lang/Object;>; HLjava/util/Iterator<Lorg/openide/util/TopologicalSortException$Vertex;>; _(Lorg/openide/util/TopologicalSortException$Vertex;Ljava/util/Collection<Ljava/lang/Object;>;)V 
SourceFile TopologicalSortException.java InnerClasses Entry Vertex 1               �    �  � F    � �       �    �     �  �   z     *� *� Y� 	� 
*+� *,� �    �       2  0  3  4  5 �         � �               �         �     	       �      �   �     O*� L� Y*� �  � $M>+�� 2+2� ' :� - � � 3 :,� 7 W������,�    �   "    =  ?  A  B ; C D D G A M G �   4  ; 	 �   5 �    O � �    J F   9 �  �      9 	    �  E 8�  .� �   h   �   �     H*� L� Y� =M>+�� (+2� > � +2� ?� ,+2� 7 W����,� (� A � E�    �       V  X  Z  [ * \ 4 Z : ` �   *   + �    H � �    C F   ;
 �  �      ;
 	    �  E 8	�   Y  �   m     � GY� IL� JY+� LM*,� O,� S+� V�    �       e  f  g  h  i �         � �                X Y  �   B     
*� Z� `L+�    �   
    n  o �       
 � �             Q R  �  A     � ?Y� eM*� fN-:�66� 2:,� i W���� mY� o:*� � p � ' :� - � `� 3 � v:� ?Y� x � � {:� ~ � � W,� � W� � � � ~ � x � � � W���+�� �+� �+�� �6-�� #+�� �+� �+�� �+-2� ����ܱ    �   ^    s  t  u & v / u 5 x > y d z w { � | � } � ~ � � � � � � � � � � � � � � � � � � � � � � �   \ 	 & 	  w ;  d N  � ' �    � � �     �   �   � F  > �   �   >  & 	  w ;  d N   �   �  > �  	   3 �    J ( E E  � �  q .� c� � � &        � R  �   G     *+� O*+� ��    �       �  � 
 � �        � �                    �!  �   ]     � JY+� �M*,� �,� ��    �       � 	 �  �  � �         � �     "  	 
                  �  �    �*� �� *� ��� mY� oL*� �*� � � M,� - � **� �,� 3 +� �W��� mY� oN� Y� =:*� 
� �� |*� 
� �� �:� �� e� ?Y� e:*� �� > � � �� � � � ͸ �:� 7 W� ' M,� - � -,� 3 � � W������ mY� o:*� � p � ' M,� - � �,� 3 � v:� x � :���� � � ���-� ~ � � � (:� � � :		� � Y� =:		� � W� � :

� - � )-
� 3 � � � (:� 	� � W��ӧ�[� �:*� (� A � E� �� :� �Y� �*� �� ���   �   � .   �  �  �  �  � # � , � ? � G � P � Z � f � n � w �  � � � � � � � � � � � � � � � � � � � � � � � � � �/ �= �B �K �W �` �j �| �� ������
��	� �   �  w Y#  f j$% | &  � �  �'  / a( = S)  	` 0*+ 
� , � � 
- �   � � �   �./  #�0+  G{1   Pr2 �  � �3   �   R  w Y# = S)4 	� ,  �.5  #�06  G{17  Pr28  � �39 	   b �  m .�  q 8� R � (� �  q� 1 v � 9 ( �  .,�    m . q 8 q  ]   � �  �  f     �-,� �� �:� � �Y,�� �:-,� �W� �*� ,� � � :� 5� � :� - � "*� 3 -� �:� �� 7 W����� �*� 
� �W�    �   >    
   ( +  :" ?# H% R& a' n( q, z. �0 �   R  a  5%  H )0+    � � �     � � �    �: �    �./  
 };%  : M<   �     H )06    �.5 	    � ( ��   .� (     �  :  .   �   =  � �  �   �     <+� �� �,+� ͹ � W+� �+� �N-� - � -� 3 � �:*,� §��    �   * 
  : ; > ? A C &D 1E 8F ;G �   4  1 $%    < � �     <:%    < �    0+  �       < �>   0? 	   
 �  .    	:   �   �   @ A   BC     v qD	 � E 