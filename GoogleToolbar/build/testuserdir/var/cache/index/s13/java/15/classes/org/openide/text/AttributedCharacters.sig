����   4 `
      java/lang/Object <init> ()V	  	 
   %org/openide/text/AttributedCharacters chars [C  java/awt/Font	     fonts [Ljava/awt/Font;  java/awt/Color	     colors [Ljava/awt/Color;	     runStart [I	     runLimit	  ! " # current I
 % & ' ( ) java/lang/System 	arraycopy *(Ljava/lang/Object;ILjava/lang/Object;II)V
  + , - equals (Ljava/lang/Object;)Z
  +
 0 1 2 3 4 java/lang/Math max (II)I 6 Eorg/openide/text/AttributedCharacters$AttributedCharacterIteratorImpl
 5 8  9 *([C[Ljava/awt/Font;[Ljava/awt/Color;[I[I)V Code LineNumberTable LocalVariableTable this 'Lorg/openide/text/AttributedCharacters; append #(CLjava/awt/Font;Ljava/awt/Color;)V ctmp ftmp cotmp rstmp rltmp prev c C f Ljava/awt/Font; color Ljava/awt/Color; StackMapTable MethodParameters $([CLjava/awt/Font;Ljava/awt/Color;)V size i replace a pseudo iterator )()Ljava/text/AttributedCharacterIterator; cs fs colos ret 'Ljava/text/AttributedCharacterIterator; 
SourceFile AttributedCharacters.java InnerClasses AttributedCharacterIteratorImpl !                                " #        :   z     4*� *
�� *
� � *
� � *
�
� *
�
� *�  �    ;   "    :  ;  <  =  > & ? . @ 3 A <       4 = >    ? @  :  C  	  @,� �*Y�  `Z�  *� �� �*� �h�:*� �h� :*� �h� :*� �h�
:*� �h�
:*� *� �� $*� *� �� $*� *� �� $*� *� �� $*� *� �� $*� *� *� *� *� *� *�  U*� *�  ,S*� *�  -S*�  � ^*�  d6*� 2,� *� .*� 2-� .�  *� *� *�  *� .[O*�  O� *� *�  *�  O*� *�  *�  O�    ;   r    I  J  M  N # O / P ; Q F R Q S a T q U � V � W � X � Y � Z � [ � \ � _ � ` � a � c � d � f g% i2 j? m <   f 
 # � A   / � B   ; � C   F y D   Q n E   � S F #   @ = >    @ G H   @ I J   @ K L  M    � �� e�  N    G   I   K    ? O  :    
  �+� +�� ,� -� �*Y�  `Z�  +�`*� �� �*�  +�`*� �h� /6�:� :� :�
:�
:	*� *� �� $*� *� �� $*� *� �� $*� *� �� $*� 	*� �� $*� *� *� *� *	� +*� *�  +�� $6+�� #*� *�  `,S*� *�  `-S����*�  d6*�  +�`d6� *� O� f*� 2,� *� +*� 2-� .� *� *� .O*� .6� *� *�  O*�  6*�  6� *� O����*�  �    ;   � &   u  v  z ( { ; | A } H ~ O  U � [ � k � { � � � � � � � � � � � � � � � � � � � � � � � � � �
 � � �% �A �O �[ �f �l �y �� �� �� � <   �  ; � P #  A � A   H � B   O z C   U t D   [ n E  	 � ' Q # X  R # r  Q # l  R #   � = >    � S    � I J   � K L 
 � F #  z T #  M    
 � �� � &� "5� � �  N    S   I   K    U V  :       n*�  `<�M� N� :�
:�
:*� � $*� � $*� ,� $*� -� $*� � $� 5Y,-� 7:�    ;   6    �  �  �  �  �  �   � , � 8 � C � N � Z � k � <   R    n = >    g P #   c W    ^ X    X Y    S D     N E   k  Z [   \    ] ^   
  5  _ 	