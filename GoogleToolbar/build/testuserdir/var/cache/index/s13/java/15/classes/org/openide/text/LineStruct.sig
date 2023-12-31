����   4 �  java/lang/Integer
      org/openide/text/LineStruct deleteLinesImpl (II)V
  
   insertLinesImpl
     currentToOriginalImpl (I)I
     originalToCurrentImpl
      java/lang/Object <init> ()V  java/util/LinkedList
  	     list Ljava/util/List; !  org/openide/text/LineStruct$Info?���
   $   & ' ( ) * java/util/List add (Ljava/lang/Object;)Z , $org/openide/text/LineStruct$1Compute
 + .  / "(Lorg/openide/text/LineStruct;IZ)V	  1 2 3 	PROCESSOR #Lorg/openide/util/RequestProcessor;
 5 6 7 8 9 !org/openide/util/RequestProcessor post >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;
 ; < = >  &org/openide/util/RequestProcessor$Task waitFinished	 + @ A B result I D org/openide/text/LineStruct$1
 C F  G "(Lorg/openide/text/LineStruct;II)V I org/openide/text/LineStruct$2
 H F & L M N iterator ()Ljava/util/Iterator; P Q R S T java/util/Iterator next ()Ljava/lang/Object;	   V W B original	   Y Z B current & \ ] ^ listIterator ()Ljava/util/ListIterator; ` Q a java/util/ListIterator
   c d e insert (IILjava/util/ListIterator;)I
   g h i delete _(ILorg/openide/text/LineStruct$Info;Ljava/util/ListIterator;)Lorg/openide/text/LineStruct$Info; ` k l m hasPrevious ()Z ` o p T previous ` r ) s (Ljava/lang/Object;)V u LineStruct Processor
 5 w  x (Ljava/lang/String;IZZ)V MAX ConstantValue 	Signature 4Ljava/util/List<Lorg/openide/text/LineStruct$Info;>; Code LineNumberTable LocalVariableTable this Lorg/openide/text/LineStruct; convert (IZ)I line currentToOriginal Z c &Lorg/openide/text/LineStruct$1Compute; MethodParameters insertLines count deleteLines i "Lorg/openide/text/LineStruct$Info; it Ljava/util/Iterator; cur LocalVariableTypeTable 8Ljava/util/Iterator<Lorg/openide/text/LineStruct$Info;>; StackMapTable Ljava/util/ListIterator; <Ljava/util/ListIterator<Lorg/openide/text/LineStruct$Info;>; prev hasPrev stat 
access$000 !(Lorg/openide/text/LineStruct;I)I x0 x1 
access$100 
access$200 x2 
access$300 <clinit> 
SourceFile LineStruct.java InnerClasses Info Compute Task 0       y B  z    "  2 3       {    |      }   [     %*� *� Y� � *� �  Y""� #� % W�    ~       /  0  1 $ 2        % � �    � �  }   j     � +Y*� -N� 0-� 4� :-� ?�    ~       J  M  P    *     � �      � B     � �    � �  �   	 �   �   �   }   T     � 0� CY*� E� 4W�    ~   
    X  _          � �      � B     � B  �   	 �  �   �   }   T     � 0� HY*� J� 4W�    ~   
    h  o          � �      � B     � B  �   	 �  �      }   �     J*� � K M>,� O �  :� U� � X� � X`� `�� X`>� Ud<���    ~   "    v 
 w  z  |   ~ 7 � ? � G �    4   0 � �    J � �     J � B  
 @ � �   > � B  �     
 @ � �  �    �  P� &  B  �    �       }   �     J*� � K M>,� O �  :� X� � U� � U`� `�� U`>� Xd<���    ~   "    � 
 �  �  �   � 7 � ? � G �    4   0 � �    J � �     J � B  
 @ � �   > � B  �     
 @ � �  �    �  P� &  B  �    �       }   �     G*� � [ N-� _ �  :� X� !-� b=� �-� _ �  :<���� Xd<���    ~   * 
   � 
 �  �  � ' � + � , � 7 � < � D �    4   / � �    G � �     G � B    G � B  
 = � �  �     
 = � �  �    � 
 `�    �   	 �   �       }  �     �*� � [ N-� _ �  :� X� ��  Y� #:-� f:� U� � -� _ �  :<���� X� h-� j � _-� n �  :-� j 6� -� n �  :� X� Y� U� X`� U� "� 
-� _ W-�  Y� X� #� q �� Xd<��E    ~   Z    � 
 �  �  � ) � 4 � < � ? � J � O � ` � k � s � x � � � � � � � � � � � � � � � � �    R  k Q � �  s I � �  ) � � �   � � �    � � �     � � B    � � B  
 � � �  �     
 � � �  �   " 	� 
 `�     � 3  � �   �   	 �   �   � �  }   :     *� �    ~       "         � �      � B  � �  }   :     *� �    ~       "         � �      � B  � G  }   E     *� 	�    ~       "          � �      � B     � B  � G  }   E     *� �    ~       "          � �      � B     � B   �   }   (      � 5Yt� v� 0�    ~       '  �    � �   *     �  +   �   ; 5 �  C       H      