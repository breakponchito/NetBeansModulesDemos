����   4$
      java/lang/Object <init> ()V	  	 
   org/openide/util/Task run Ljava/lang/Runnable;	     finished Z
     wait  java/lang/InterruptedException
     overridesTimeoutedWaitFinished ()Z
      java/lang/System currentTimeMillis ()J	  ! " # LOG Ljava/util/logging/Logger;	 % & ' ( ) java/util/logging/Level FINE Ljava/util/logging/Level; + About to wait {0} ms
 - . / 0 1 java/lang/Long valueOf (J)Ljava/lang/Long;
 3 4 5 6 7 java/util/logging/Logger log @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
  9  : (J)V	 % < = ) FINER ? finished, return
 3 A 6 B .(Ljava/util/logging/Level;Ljava/lang/String;)V D infinite wait, again F remains {0} ms H exit, timetout J Using compatibility waiting
 3 L M N fine (Ljava/lang/String;)V	  P Q R RP #Lorg/openide/util/RequestProcessor; T org/openide/util/Task$1Run
 S V  W (Lorg/openide/util/Task;)V
 Y Z [ \ ] !org/openide/util/RequestProcessor post >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;
 _ ` a b c &org/openide/util/RequestProcessor$Task waitFinished (J)Z
 Y e f g logger ()Ljava/util/logging/Logger; i notifyRunning: {0}
  k l  	notifyAll n notifyFinished: {0}	  p q r list Ljava/util/Set; t java/util/HashSet
 s v  w (Ljava/util/Collection;)V
 s y z { iterator ()Ljava/util/Iterator; } ~  �  java/util/Iterator hasNext } � � � next ()Ljava/lang/Object; � org/openide/util/TaskListener � � � W taskFinished
  � �  notifyRunning � � �   java/lang/Runnable
  � �  notifyFinished
 s  � � � � � java/util/Set add (Ljava/lang/Object;)Z � � � � remove � java/lang/StringBuilder
 �  � task 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 � � � � toString ()Ljava/lang/String;
  � � � getClass ()Ljava/lang/Class;	  � � � 	overrides Ljava/util/WeakHashMap; � java/util/WeakHashMap
 �  � ,Timeout waitFinished compatibility processor
 Y �  � (Ljava/lang/String;I)V
 � � � � get &(Ljava/lang/Object;)Ljava/lang/Object; � java/lang/Boolean
 � � �  booleanValue b � java/lang/Class	 - � � � TYPE Ljava/lang/Class;
 � � � � 	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
 � � � � � java/lang/reflect/Method getDeclaringClass
 � � 0 � (Z)Ljava/lang/Boolean;
 � � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � java/lang/Exception
 � � � � � org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V � null � �
 � � � � getName
  	  � � � EMPTY Lorg/openide/util/Task;
 3 � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; 	Signature =Ljava/util/WeakHashMap<Ljava/lang/Class;Ljava/lang/Boolean;>; 0Ljava/util/Set<Lorg/openide/util/TaskListener;>; (Ljava/lang/Runnable;)V Code LineNumberTable LocalVariableTable this StackMapTable MethodParameters 
isFinished java/lang/Throwable now J remains expectedEnd milliseconds task (Lorg/openide/util/RequestProcessor$Task; 
Exceptions it Ljava/util/Iterator; l Lorg/openide/util/TaskListener; LocalVariableTypeTable 5Ljava/util/Iterator<Lorg/openide/util/TaskListener;>; addTaskListener "(Lorg/openide/util/TaskListener;)V callNow removeTaskListener method Ljava/lang/reflect/Method; ex Ljava/lang/Exception; m does Ljava/lang/Boolean; debug java/lang/String <clinit> 
SourceFile 	Task.java InnerClasses Run Task !    �   � �    " #   
 � �  �    � 
 Q R              q r  �    �    �  �   l     *� *+� +� *� �    �       O  P 	 R  S  U �        � �         �    �    �   �           �   <     
*� *� �    �       [  \ 	 ] �       
 � �    �   �   j     *YL�*� +ìM+�,�   
          �       c  d  e �        � �   �    �        b   �   �     !*YL�*� � *� ���M���+ç N+�-��                 �   "    l  m  o  q  p  q  s   t �       ! � �   �    �  M D �   b c  �  �     �*YN�*� � �*� � -ì� a7�  � $*� ,� 2*� 8*� � �  � ;>� @-ì	�� �  � ;C� @��Ÿ 7e7�  � ;E� ,� 2	�� �  � ;G� @-ì@���-ç 
:
-�
��  I� K� O� SY*� U� XN-� ^�    �    F �   G � �   � � �   � � �    �   f      �  �  �  �  � , � 1 � 8 � C � G � M � X � [ � ` � g � w � ~ � � � � � � � � � � � � � � � �   >  ` 0  g )   v    � � �     �  �   �    �  � )� 1� D � 	      �       �   �   �     $*YL¸ d� $h*� 2*� *� j+ç M+�,��        !     �       �  �  �  �  � # � �       $ � �   �    �      �   �   �  '     Z*YM�*� � d� $m*� 2*� j*� o� ,ñ� sY*� o� u� xL,ç N,�-�+� | � +� � � �M,*� � ���   " 7   # 4 7   7 : 7    �   6    �  � 	 �  �  �   � # � 2 � < � E � O � V � Y � �   *  2 
  O     Z � �   < 
      2 
  < 
  �    � #  S �    }       �        #*� �*� � *� � � *� �� 
L*� �+��         �   "    �  �  �  �  �  �   � " � �       # � �   �    F    �   �     >*YN�*� o� *� sY� �� o*� o+� � W*� =-ç 
:-��� 
+*� � �   ( +   + / +    �   & 	   �  �  �  � ! � & � 2 6 = �   *  &      > � �     >  2    �    �   T �    �  
 �      !  �   ]     *� o� �*� o+� � W�    �      
    �        � �       �     �       � �  �   A     � �Y� ��� �*� � �� ��    �       �        � �       �  �     �*� �� �*� �_� �YN² �� � �Y� �� �� YY� �� �� O� �L+*� �� �� �M,� 
,� �-ì*� ��� �Y� �S� �:� �� � � �M+*� �,� �W,� �-ì:� �-ì:-��  U � � �  T �   U � �   � � �   � � �    �   R    	   % & !' +( :+ >- J/ N0 U4 j5 }6 �8 �9 �: �< �> �   4  j $  � 	  > [ �  J O    � � �       > [ �  �   O 
� #   �    � �   � " �@�    � �   �� 
          �  �   P     *� � � *� � � � �    �      E �        � �   �    K    �   A      � Y� � �� � �  � �� �    �       1 
 2  5  6     !     S  "   _ Y# 