����   4 �
      java/lang/Object <init> ()V  java/util/HashMap 
     java/util/Collection size ()I
     (I)V 
    iterator ()Ljava/util/Iterator;      java/util/Iterator hasNext ()Z     next ()Ljava/lang/Object;
 ! " # $ % org/openide/nodes/Children$Dupl updateListAndMap :(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Map;)V ' obj
 ) * + , - org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V / 0 1 2 3 java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 ! 5 6 7 createInstance 6(Ljava/lang/Object;I)Lorg/openide/nodes/Children$Dupl; 
 9 : ; add (Ljava/lang/Object;)Z
 = > ? @ A java/lang/Integer valueOf (I)Ljava/lang/Integer;
 = C D  intValue	 ! F G H key Ljava/lang/Object;
 ! J K  getKey
  M N  clone P $java/lang/CloneNotSupportedException R java/lang/InternalError
 Q 
  U V  hashCode
  X Y ; equals
 ! [ \  getCnt ^ java/lang/Cloneable `  org/openide/nodes/Children$Entry Code LineNumberTable LocalVariableTable this !Lorg/openide/nodes/Children$Dupl; LocalVariableTypeTable &Lorg/openide/nodes/Children$Dupl<TT;>; 
updateList /(Ljava/util/Collection;Ljava/util/Collection;)V o src Ljava/util/Collection; target map Ljava/util/Map; TT; Ljava/util/Collection<+TT;>; ?Ljava/util/Collection<-Lorg/openide/nodes/Children$Dupl<TT;>;>; &Ljava/util/Map<TT;Ljava/lang/Object;>; StackMapTable MethodParameters 	Signature ^(Ljava/util/Collection<+TT;>;Ljava/util/Collection<-Lorg/openide/nodes/Children$Dupl<TT;>;>;)V ,([Ljava/lang/Object;Ljava/util/Collection;)V arr [Ljava/lang/Object; [TT; z F([TT;Ljava/util/Collection<-Lorg/openide/nodes/Children$Dupl<TT;>;>;)V cnt I list prev k(TT;Ljava/util/Collection<-Lorg/openide/nodes/Children$Dupl<TT;>;>;Ljava/util/Map<TT;Ljava/lang/Object;>;)V ()TT; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value 	unchecked d n first ex &Ljava/lang/CloneNotSupportedException; ;(Ljava/lang/Object;I)Lorg/openide/nodes/Children$Dupl<TT;>; Ljava/lang/Override; _<T:Ljava/lang/Object;>Ljava/lang/Object;Ljava/lang/Cloneable;Lorg/openide/nodes/Children$Entry; 
SourceFile Children.java InnerClasses � org/openide/nodes/Children Dupl Entry  !   ] _   G H   	      a   E     *� �    b   
   � � c        d e   f        d g    h i  a   �     7� Y+� 	 h� N+�  :�  � �  :*,-�  ���    b      � � +� 3� 6� c   4  +  j H    7 d e     7 k l    7 m l   ' n o  f   4  +  j p    7 d g     7 k q    7 m r   ' n s  t    �  / �  u   	 k   m   v    w  h x  a   �     4� Y+�h� N+:�66� 2:*,-�  ����    b      � � %� -� 3� c   4  %  j H    4 d e     4 y z    4 m l   ( n o  f   4  %  j p    4 d g     4 y {    4 m r   ( n s  t    �   ! | 
 / |  �  u   	 y   m   v    }  $ %  a  6     k&+� (-+*� . :� ,*+� 4� 8 W�*� -+� <� . W,*+� 4� 8 W�� =� B`6-+� <� . W,*+� 4� 8 W�    b   6   � � � � "� #� )� 5� B� C� O� \� j� c   >  O  ~     k d e     k ' H    k � l    k n o   [ � H  f   *    k d g     k ' p    k � r    k n s  t   	 � #  u    '   �   n   v    �  K   a   g     *� E� !� *� E� !� I�*� E�    b      � 
� � c        d e   f        d g   t     v    � �     �  �[ s �  \   a   �     <*M,� E� !� ,� E� !M�����    b      � � � � � � c         d e     ~     � e  f        d g   t   
 �  !  6 7  a       8*� L� !N-:��� *� L� !:-� EN���-+� E�N� QY� S�    . / O  b   .   � � � � � !� $� '� , / 0 c   H   	 � e   ' � e   $ � e  0  � �    8 d e     8 ' H    8 ~   f       8 d g   t    �  ! !�   !   O u   	 '   ~   v    � �     �  �[ s �  V   a   D     *� I� T�    b      	 c        d e   f        d g   �     �    Y ;  a   �     -+� !� '+� !M*� I,� I� W� *� Z,� Z� � ��    b         + c        � e    - d e     - j H  f       - d g   t    � ) !@�   u    j   �     �    v    � �    � �     ! � � _ � �