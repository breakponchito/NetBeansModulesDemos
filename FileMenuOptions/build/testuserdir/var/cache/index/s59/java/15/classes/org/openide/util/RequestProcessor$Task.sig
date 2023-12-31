����   4[	      &org/openide/util/RequestProcessor$Task item (Lorg/openide/util/RequestProcessor$Item;	   	 
 	cancelled +Ljava/util/concurrent/atomic/AtomicBoolean;
     markCreated ()V	     this$0 #Lorg/openide/util/RequestProcessor;
      org/openide/util/Task <init> (Ljava/lang/Runnable;)V  java/lang/Thread	     priority I	    ! " time J	  $ % & 
lastThread Ljava/lang/Thread;
 ( ) * +  java/lang/Object wait - java/lang/InterruptedException
  / 0 1 currentThread ()Ljava/lang/Thread;
  3 4  notifyRunning	  6 7 8 run Ljava/lang/Runnable; : ; < 7  java/lang/Runnable
 > ? @ A B &org/openide/util/RequestProcessor$Item isNew ()Z
 > D E F getTask *()Lorg/openide/util/RequestProcessor$Task;
  H I  notifyFinished
 ( K L  	notifyAll
 N O P Q R java/lang/System currentTimeMillis ()J T java/lang/Integer    ������
  Y Z [ schedule (J)V	 ] ^ _ ` a !org/openide/util/RequestProcessor stopped Z
 ] c d e 
access$400 7(Lorg/openide/util/RequestProcessor;)Ljava/lang/Object;
 g h i j k )java/util/concurrent/atomic/AtomicBoolean set (Z)V
 > m n o clear 0(Lorg/openide/util/RequestProcessor$Processor;)Z
 ] q r s 
access$500 &(Lorg/openide/util/RequestProcessor;)Z u *org/openide/util/RequestProcessor$SlowItem
 t w  x N(Lorg/openide/util/RequestProcessor$Task;Lorg/openide/util/RequestProcessor;)V z *org/openide/util/RequestProcessor$FastItem
 y w
 ] } ~  enqueue +(Lorg/openide/util/RequestProcessor$Item;)V
 � � � Z � )org/openide/util/RequestProcessor$TickTac ,(Lorg/openide/util/RequestProcessor$Item;J)V	  � � a $assertionsDisabled � java/lang/AssertionError
 � �   � -org/openide/util/RequestProcessor$CreatedItem
 � w
  � � � cancelOrNew (Z)Z
 > � � � getProcessor /()Lorg/openide/util/RequestProcessor$Processor;
 > � � � 
clearOrNew
 � � � � x +org/openide/util/RequestProcessor$Processor interruptTask
 g � � � 	getAndSet
 � � � � 	interrupt N(Lorg/openide/util/RequestProcessor$Task;Lorg/openide/util/RequestProcessor;)Z
 ] � � � 
access$600 :(Lorg/openide/util/RequestProcessor;)Ljava/util/SortedSet; � � � � � java/util/SortedSet remove (Ljava/lang/Object;)Z
 ] � � � 
access$700 N(Lorg/openide/util/RequestProcessor;Lorg/openide/util/RequestProcessor$Item;)V
 ] � � B isRequestProcessorThread
 ] � � � logger ()Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level FINE Ljava/util/logging/Level;
 � � � � � java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z � 3Task.waitFinished on {0} from other task in RP: {1}
  � � � getName ()Ljava/lang/String;
 � � � � log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V �     ## finished: {0}
  � � B 
isFinished
 � � � � � java/lang/Boolean valueOf (Z)Ljava/lang/Boolean;
 � � � � @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V �     ## item: {0}
 � � � � C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V �     ## running it synchronously
 � � � � fine (Ljava/lang/String;)V
 � � � � 
doEvaluate `(Lorg/openide/util/RequestProcessor$Task;Ljava/lang/Object;Lorg/openide/util/RequestProcessor;)V � #    ## not running it synchronously � 2    ## waiting for it to be finished: {0} now: {1}
  � �  waitFinished �     ## exiting waitFinished � java/lang/StringBuilder
 � � � Cannot wait with timeout 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � (J)Ljava/lang/StringBuilder; , from the RequestProcessor thread for task: 
 � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 �	
 � toString
 ,  �
  � (J)Z RequestProcessor.Task [	 ] name Ljava/lang/String; , 
 � � (I)Ljava/lang/StringBuilder; ] for 
 	
 !" B java/lang/Class desiredAssertionStatus$ org/openide/util/Cancellable :(Lorg/openide/util/RequestProcessor;Ljava/lang/Runnable;)V Code LineNumberTable LocalVariableTable this (Lorg/openide/util/RequestProcessor$Task; MethodParameters ;(Lorg/openide/util/RequestProcessor;Ljava/lang/Runnable;I)V StackMapTable 	scheduled0 java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getDelay ()I delay (I)V 	localItem cancel success p -Lorg/openide/util/RequestProcessor$Processor; canBeNew wasCancelled getPriority setPriority runAtAll toRun 	processor em Ljava/util/logging/Logger; loggable timeout 
Exceptions 
access$000 +(Lorg/openide/util/RequestProcessor$Task;)V x0 
access$202 �(Lorg/openide/util/RequestProcessor$Task;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/concurrent/atomic/AtomicBoolean; x1 
access$900 R(Lorg/openide/util/RequestProcessor$Task;)Lorg/openide/util/RequestProcessor$Item; <clinit> 
SourceFile RequestProcessor.java InnerClasses Task Item 	Processor SlowItem FastItem TickTac CreatedItem 1   #             ! "    % &    	 
   � a          % &   l     *+� *,� *� *	� *� #�   '      h i 
a b c j(        )*            7 8 +   	 � 7     , &   �     /*+� *,� *� *	� *� #� >
� 
>*� �   '   .   o p 
a b c r s  v &w )z .{(   *    /)*     /      / 7 8    /   -    �     ] :  +    � 7       7  &    	   �YL�*� #� � '���M���*� .� #+ç N+�-�*� 2*� 5� 9 *� L+� +� =� +� C*� � *� GYM�*� #� J,ç 
:,��� I:*� :� � =� � C*� � *� GY:�*� #� Jç :���� 	    ,  ! $   $ ' $   Z f i   i m i     6 s   � � �   � � �   s u s   '   n   � � � � � � � � )� -� 6� ;� Q� U� Z� _� d� p� s� {� �� �� �� �� �� �� ��(      ; 5.   { ;.     �)*  -   q �  (N ,K/� � ' >�    > ( /� B/�        / >  �       / > ( /� �     1    2   34 &   t     *� � Me@	�� � U�� W���   '      � 	� � � � �(       )*   	 5 " -    � 
  Z6 &   ?     *�� X�   '   
   � �(       )*     5  +   5     Z [ &  o     �*� � \� �*� Ma� *� � bY:�*� � *� � f*� 2*� � *� � lW**� � p� � tY**� � v� � yY**� � {� *� Nç :��	�� *� -� |� -� ��   s v   v { v   '   J   � 
� � � � &� .� 2� 9� B� M� \� k� p� ~� �� �� ��(   *  p 7     �)*     �5 "  ~ 7  -   8 	� "  (Y �     (   >M/�    >  +   5      &   ^     #� �� *� � � �Y� ��*� �Y*� �� �   '      � � "�(       #)*  -     8 B &   0     *� ��   '      �(       )*  1    2    � � &       X*� � bYM�*� � >� 2*� � �:*� � �>� **� � �*� � *� � *� G,ì:,��  
 P Q   Q U Q   '   :   � 
� � � � (� -� 7� <� @� E� I� M� Q�(   4   9 a   &:;  ( )9 a    X)*     X< a -   $ �  (� % �� �    ( /+   <    8 � &  p     �*� � bYM�*� � *� � �� � >� ,ì*� � >� ?*� � �:*� � l>� (� **� � �>� **� � �� *� � *� G,ì:,��  
 ) ~   * } ~   ~ � ~   '   N   
 
  " & * 1 6 ? H M Q _ i! m" r& v' z) ~*(   >  " = a  3 9 a  ? 3:;  H 69 a    �)*     � � a -   ) 	�   (@� ( �	� �    ( /+    �   >4 &   /     *� �   '      1(       )*   ?6 &   �     `*� � �� <
� 
<*� � bYM�*� � )*� � �*� � � � *� *� *� � �� *� ,ç N,�-��  # W Z   Z ] Z   '   6   8 9 	< = @ A F #G =H BI PK UM _N(       `)*     `   -    	� 6 (D/� +        �  &  }    *� � ��� �N-� �� �6� -� ��� (Y*SY� .� �S� �*� � bY:�*� �<� *� � *� � l� � =�  -� ��*� Ӹ ֶ �-� ��*� � �ç :��� *� 	-� � .� �:**� � b*� � � F� 	-� �� 
*� #� 0*� #� .� &� -� ��� (Y*� #SY� .S� �*� �� 	-�� � *� �  A � �   � � �   '   v   W 
[ \ ^ _ 6c Af Gg ch hi xj �l �n �o �p �r �s �t �u �v �y �z �{ �}�����(   R  G D@ a  c (A a  � B;  � y@ a  � yA a   �CD   �E a   )*  -   s � 6     �  � &    � (  @� "   � (  �      � ( /�    �  

(� 
    1    2    � &       j*� � �� ]*� � bY:�*� �>ç :��� (� ,Y� �Y� ��� �� � �*����*� #� .� 	*���*��    !   ! & !   '   * 
  � 
� � � )� -� R� \� b� d�(   *   A a  ) ;A a    j)*     jF " -   % � !    ( /�     (� G     ,+   F  1    2   
 � &   _     5� �Y� �� �*� �� �� �*� �� �*�� ���   '      �(       5)*  1    2  HI &   /     *� �   '      _(       J*  KL &   ;     *+Z� �   '      _(       J*     M 
 NO &   /     *� �   '      _(       J*   P  &   4      ]�� � � ��   '      _-    @ Q   RS   :   ]T  > ]U 
 � ]V 
 t ]W 
 y ]X 
 � ]Y  � ]Z 
