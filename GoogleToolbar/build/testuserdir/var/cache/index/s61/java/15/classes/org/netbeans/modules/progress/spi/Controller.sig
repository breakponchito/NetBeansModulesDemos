����   4�
      java/lang/Object <init> ()V	  	 
   ,org/netbeans/modules/progress/spi/Controller 
timerStart J	     	taskDelay I	     RQ #Lorg/openide/util/RequestProcessor;  .org/netbeans/modules/progress/spi/Controller$1
     1(Lorg/netbeans/modules/progress/spi/Controller;)V
      !org/openide/util/RequestProcessor create >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;	  ! " # task (Lorg/openide/util/RequestProcessor$Task;	  % & ' 	component 4Lorg/netbeans/modules/progress/spi/ProgressUIWorker; ) +org/netbeans/modules/progress/spi/TaskModel
  + , - getEventExecutor !()Ljava/util/concurrent/Executor;
 ( /  0 "(Ljava/util/concurrent/Executor;)V	  2 3 4 model -Lorg/netbeans/modules/progress/spi/TaskModel; 6 java/util/LinkedList
 5 	  9 : ; 
eventQueue Ljava/util/List;	  = > ? dispatchRunning Z	  A B C defaultInstance .Lorg/netbeans/modules/progress/spi/Controller;
 E F G H I 1org/netbeans/progress/module/DefaultHandleFactory get 9()Lorg/netbeans/modules/progress/spi/ProgressEnvironment; K L M N O 5org/netbeans/modules/progress/spi/ProgressEnvironment getController 0()Lorg/netbeans/modules/progress/spi/Controller;
 Q R S T U java/lang/Class getName ()Ljava/lang/String;
 W X Y Z [ java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 ] ^ _ ` a java/util/logging/Level CONFIG Ljava/util/logging/Level; c .Using fallback trivial progress implementation
 W e f g log .(Ljava/util/logging/Level;Ljava/lang/String;)V i >org/netbeans/progress/module/TrivialProgressBaseWorkerProvider
 h 
 h l m n getDefaultWorker ?()Lorg/netbeans/modules/progress/spi/ProgressUIWorkerWithModel;
  p q n createWorker
  s t O 
getDefault
  v w x getModel /()Lorg/netbeans/modules/progress/spi/TaskModel; z { | } ~ ;org/netbeans/modules/progress/spi/ProgressUIWorkerWithModel setModel 0(Lorg/netbeans/modules/progress/spi/TaskModel;)V � /org/netbeans/modules/progress/spi/ProgressEvent
  � � � 	isWatched 5(Lorg/netbeans/modules/progress/spi/InternalHandle;)Z
  �  � 7(Lorg/netbeans/modules/progress/spi/InternalHandle;IZ)V
 � � � � � 0org/netbeans/modules/progress/spi/InternalHandle getInitialDelay ()I
  � � � 	postEvent 5(Lorg/netbeans/modules/progress/spi/ProgressEvent;Z)V
 � � � � � java/util/Collections 	singleton #(Ljava/lang/Object;)Ljava/util/Set;
  � � � runImmediately (Ljava/util/Collection;)V
  � � � 4(Lorg/netbeans/modules/progress/spi/ProgressEvent;)V
 ( � �  updateSelection
  �  � I(Lorg/netbeans/modules/progress/spi/InternalHandle;IZLjava/lang/String;)V
  �  � K(Lorg/netbeans/modules/progress/spi/InternalHandle;Ljava/lang/String;IDJZ)V
 � � � � isInSleepMode ()Z
 ( � � � getExplicitSelection 4()Lorg/netbeans/modules/progress/spi/InternalHandle;
 ( � � � explicitlySelect 5(Lorg/netbeans/modules/progress/spi/InternalHandle;)V � java/util/ArrayList
 � 
 � � � � requestStateSnapshot 3()Lorg/netbeans/modules/progress/spi/ProgressEvent; � � � � � java/util/Collection add (Ljava/lang/Object;)Z
  �  � ](Lorg/netbeans/modules/progress/spi/InternalHandle;Ljava/lang/String;IDJZLjava/lang/String;)V � � � � � java/util/List addAll (Ljava/util/Collection;)Z
  � �  	runEvents
  � � � 
resetTimer (IZ)V � �
 � � � � � java/lang/System currentTimeMillis ()J
  � � � 	getSource
  � � � schedule (IZZ)V
 � � � � � &org/openide/util/RequestProcessor$Task (I)V	  � � ? $assertionsDisabled � java/lang/AssertionError
 � 
 � � � � cancel � .org/netbeans/modules/progress/spi/Controller$2
 � 
  � � � execute (Ljava/lang/Runnable;)V � java/util/HashMap
 �       �
 ( � � � getSelectedHandle � � � � iterator ()Ljava/util/Iterator; � java/util/Iterator hasNext next ()Ljava/lang/Object;
 �
 � getTimeStampStarted
  � getType
 � � isCustomPlaced	  LOG Ljava/util/logging/Logger;	 ] a FINER Adding to model {0}
 W f @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
 (  � 	addHandle" Short-start: {0} �$% � contains' Removed from model: {0}
 ()* � removeHandle
 �, H- &(Ljava/lang/Object;)Ljava/lang/Object;/ Short task ended: {0}
 �12- remove �42 �
 W678 
isLoggable (Ljava/util/logging/Level;)Z	 ]:; a FINE= java/lang/StringBuilder
< @ Merging event 
<BCD append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 FG U toString
<F
 JK � copyMessageFromEarlier
 MN � 
isSwitched
 PQ  markAsSwitched
 ST  markAsFinishedV Event merged with {0} to {1}
 WX fY A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
 �[\] put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;_2  � �b Repost start event: {0}d Repost queued event: {0}
fghij java/lang/Math min (JJ)J
 �lmn values ()Ljava/util/Collection;
 pqr getProgressUIWorker 6()Lorg/netbeans/modules/progress/spi/ProgressUIWorker;t Dispatching: {0}vwxy � 2org/netbeans/modules/progress/spi/ProgressUIWorker processSelectedProgressEventv{| � processProgressEvent       d
f��j max ��� � isEmpty
 Q�� � desiredAssertionStatus
 � � (Ljava/lang/String;)V 	Signature CLjava/util/List<Lorg/netbeans/modules/progress/spi/ProgressEvent;>; TIMER_QUANTUM ConstantValue  � INITIAL_DELAY  � 7(Lorg/netbeans/modules/progress/spi/ProgressUIWorker;)V Code LineNumberTable LocalVariableTable this comp MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value "OverridableMethodCallInConstructor f 7Lorg/netbeans/modules/progress/spi/ProgressEnvironment; StackMapTable prgUIWorker =Lorg/netbeans/modules/progress/spi/ProgressUIWorkerWithModel; start handle 2Lorg/netbeans/modules/progress/spi/InternalHandle; event 1Lorg/netbeans/modules/progress/spi/ProgressEvent; finish toIndeterminate toSilent G(Lorg/netbeans/modules/progress/spi/InternalHandle;Ljava/lang/String;)V message Ljava/lang/String; toDeterminate progress J(Lorg/netbeans/modules/progress/spi/InternalHandle;Ljava/lang/String;IDJ)V msg units 
percentage D estimate snapshot z(Lorg/netbeans/modules/progress/spi/InternalHandle;Ljava/lang/String;IDJ)Lorg/netbeans/modules/progress/spi/ProgressEvent; explicitSelection old evnts Ljava/util/Collection; LocalVariableTypeTable ILjava/util/Collection<Lorg/netbeans/modules/progress/spi/ProgressEvent;>; displayNameChange J(Lorg/netbeans/modules/progress/spi/InternalHandle;IDJLjava/lang/String;)V display hndl events� java/lang/Throwable L(Ljava/util/Collection<Lorg/netbeans/modules/progress/spi/ProgressEvent;>;)V delay shorten activate shortenPeriod runNow isShort 	lastEvent stE evnt diff it Ljava/util/Iterator; justStarted startIt map Ljava/util/HashMap; hasShortOne minDiff oldSelected stamp selected GLjava/util/Iterator<Lorg/netbeans/modules/progress/spi/ProgressEvent;>; JLjava/util/Collection<Lorg/netbeans/modules/progress/spi/InternalHandle;>; HLjava/util/Iterator<Lorg/netbeans/modules/progress/spi/InternalHandle;>; xLjava/util/HashMap<Lorg/netbeans/modules/progress/spi/InternalHandle;Lorg/netbeans/modules/progress/spi/ProgressEvent;>; <clinit> 
SourceFile Controller.java InnerClasses Task !         	 B C    & '    3 4    : ; �   �  > ?        �  �   � �  �   �            " #   � ?     � �   �     G*� *	� *�� *� � Y*� � �  *+� $*� (Y*� *� .� 1*� 5Y� 7� 8*� <�   �   & 	   9  . 	 �  � " : ' ; 6 < A = F >�       G� C     G� ' �   �  �    � �[ s� ) t O �   V     � @� � DK*� J � @� @�   �       A  B 
 C  E�     
 	��  �      q n �   I     � P� V� \b� d� hY� j� k�   �   
    N  O�       � C   qr �   o     "*� $� *� oL+� r� u� y *+� $*� $�   �       Y  [  \  ]  _�      ��    "� C  �      w x �   /     *� 1�   �       c�       � C    � � �   �     1� Y+*+� �� �M*� r� +� �d� *,� �� *,� �� ��   �       g  h  j ( l 0 n�        1� C     1��   "�� �   	 � ( �   �    � � �   [     � Y+*+� �� �M*,� ��   �       q  r  s�        � C     ��   �� �   �    � � �   f     � Y+*+� �� �M*� 1� �*,� ��   �       v  w  x  y�        � C     ��   �� �   �    �� �   r     � Y+*+� �,� �N*� 1� �*-� ��   �       |  }  ~  �   *    � C     ��    ��   �� �   	�  �    � � �   f     � Y+*+� �� �M*� 1� �*,� ��   �       �  �  �  ��        � C     ��   �� �   �    �� �   �  	   � Y+,*+� �� �:*� ��   �       �  �  ��   H    � C     ��    ��    �     ��    �    �� �   �  �  �  �  �    �� �   �     ,+� �� � Y+*+� �,� ��� Y+,*+� �� ��   �       �  �  ��   >    ,� C     ,��    ,��    ,�     ,��    ,�  �    �   �  �  �  �  �    � � �   �     =*� 1� �M*� 1+� �� �Y� �N-+� �� � W,� ,+� -,� �� � W*-� ��   �   "    �  �  �  � # � , � 7 � < ��   *    =� C     =��   5��   %�� �      %�� �    � 7 � ��   �    �� �   �  	   ,� �Y� �:� Y+)*+� �� �� � W*� ��   �       � 	 � % � + ��   H    ,� C     ,��    ,�     ,��    ,�     ,��  	 #�� �     	 #�� �   �  �  �  �  �    � � �   P     *� 1� �+� � �   �       ��       � C     �� �    @�   �     � � �   �     #*YM�*� 8+� � W*� <,ç N,�-�*� ʱ            �       �  �  �  �  � " ��       #� C     #�� �       #�� �    �    �  �� �   �  �   �   � � �   ?     *+� ��   �   
    �  ��       � C     �� �   �   � � �   �     *� � *� � *� <� *� <*� *� ͱ   �       �  �  �  �  � # � ) ��   *    *� C     *�     *� ?    *� ? �    �   �  �  �     � � �       l*YN�*� 8+� � W*� <� '*� ҵ *� <*� +� ض �� � ۧ (� $� �*� e+� ض ���� *+� ض �� �-ç 
:-���   a d   d h d   �   .    �  �  �  �  � " � : � > � R � _ � k ��        l� C     l��    l� ? �   4 � 1      �        $D�� �   	� �    � � �   �     .� � (*�  � ߧ � � � � �Y� �*�  � �W�   �          % -
�        .� C     .�     .� ? �    �   	�  �    , - �   .     � �   �      �       � C    �  �   =     � � �Y*� � �   �   
   " '�       � C   �  �  �    O� �Y� �L= �B*� 1� �:� �7*Y:�*� 8� � :	� �Y� �:
	�  ��	� � :� ض	e� ض ���� � 6�� N� ض� �  ���*� 1� ض� S��!�
� ع � W� 5�� ,
� ع# � ��&�*� 1� ض(+� ض+� :� H�� ?
� ع# � 0� +��.�+� ض0W
� ع3 W� }� l���5� $��9�<Y�>?�A�E�A�H� d�I�L� �O�� �R��U� YSYS�W+� ��ZW	�^ ��m
�` :�  � �� � �:�	e7� ���� *� 1�� k*� 8� Y*� �� �Y:� � W��a�+�0� :�� ��c�*� 8� � W=!� ��e�eB��`ç :��*� 1� �:� � :+�k�` :	*� $� *�oW	�  � @	� � :
��s
�
� ئ *� $
�u *� $
�z ���*Y:
�*� �� *� ҵ *}!��� ۧ !*� <*�*� 8�� � � � �
ç :
���  !z}  }�}  �CF  FKF   �  2 L  , - 
. 0 1 2 !3 ,4 55 ?6 K7 j8 r9 �: �; �= �> �A �B �D �E �G �HIM-N7OGQLSXTyV�X�Y�\�]�_�b�d�e�i�j�k�l�m nq)r7sBtJuXvdxfyt{w|�}�~������������������������
��"�'�@�N��   �  K}��  j^� ?  � ��� # Q�� B 2�� � ��� � ��   ,K�� 	 5B�� 
� ��� � .�� 
  O� C   G��  
E� ?  A�   8��  3�  � ��� � ��� 	�   4  ,K�� 	 5B�� 
� ���  G�� � ��� 	�   �  � 5 	  � �  �  � 1 @� 1� W 1� 	� � 7 �� W  �  
  � �  �  � E�� �  �A �� � 8 � � ' �  	  � � �   �   	  � � �   E��  �  �   V      +��� � � �� P� V�� Y� P��� �   �       $  %  ��    @ �   ��            � �  �      