����   48	       org/openide/nodes/AsynchChildren factory  Lorg/openide/nodes/ChildFactory;
  	 
   org/openide/nodes/Children$Keys <init> ()V	     initialized Z	     	cancelled  java/lang/Object
  		     
notifyLock Ljava/lang/Object;	     PROC #Lorg/openide/util/RequestProcessor;
   ! " # $ !org/openide/util/RequestProcessor create ?(Ljava/lang/Runnable;Z)Lorg/openide/util/RequestProcessor$Task;	  & ' ( task (Lorg/openide/util/RequestProcessor$Task;	  * + , logger Ljava/util/logging/Logger;	 . / 0 1 2 java/util/logging/Level FINER Ljava/util/logging/Level; 4 addNotify on {0}
 6 7 8 9 : java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
 < = > ? @ &org/openide/util/RequestProcessor$Task 
isFinished ()Z
 B C D E F org/openide/nodes/ChildFactory getWaitNode ()Lorg/openide/nodes/Node;
  H I J setKeys ([Ljava/lang/Object;)V
 < L M N schedule (I)V P removeNotify on {0}
 < R S @ cancel
 U V W X Y java/util/Collections 	emptyList ()Ljava/util/List;
  [ I \ (Ljava/util/Collection;)V	  ^ _  notified
 B a b  removeNotify
 d e f g @ java/awt/EventQueue isDispatchThread	 . i j 2 FINE l Refresh on {0} immediate {1}
 n o p q r java/lang/Boolean valueOf (Z)Ljava/lang/Boolean;	 . t u 2 FINEST
 6 w x y 
isLoggable (Ljava/util/logging/Level;)Z { 	Refresh:  } java/lang/Exception
 | 	
 6 � 9 � C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V � java/util/LinkedList
 � 	
 B � � � 
createKeys (Ljava/util/List;)Z
  � � � getNodes ()[Lorg/openide/nodes/Node;
 < � �  waitFinished
  � � � (Z)[Lorg/openide/nodes/Node;
  � � � 	findChild ,(Ljava/lang/String;)Lorg/openide/nodes/Node;
 B � � � 
isWaitNode (Ljava/lang/Object;)Z � org/openide/nodes/Node
 B � � � createNodesForKey -(Ljava/lang/Object;)[Lorg/openide/nodes/Node;
  � � � destroyNodes ([Lorg/openide/nodes/Node;)V
 B �
 � � � � @ java/lang/Thread interrupted � 6Running background children creation on {0} fail = {1}
  � � � entrySupport "()Lorg/openide/nodes/EntrySupport;
 � � � � Y org/openide/nodes/EntrySupport 
getEntries � � � � � java/util/List size ()I
 � � � � � java/lang/Math max (II)I � "org/openide/nodes/AsynchChildren$1
 � �  � &(Lorg/openide/nodes/AsynchChildren;I)V
 B � �  	addNotify � %org/openide/nodes/AsynchChildren$Stop
 � �  \
 � � � � add � java/lang/StringBuilder
 � 	
  � � � toString ()Ljava/lang/String;
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder; � [
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � ]
 � � � Asynch children creator 
   �  � (Ljava/lang/String;IZ)V
 � � � � � java/lang/Class getName
 6 � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; � 'org/openide/nodes/ChildFactory$Observer � java/lang/Runnable 	Signature %Lorg/openide/nodes/ChildFactory<TT;>; #(Lorg/openide/nodes/ChildFactory;)V Code LineNumberTable LocalVariableTable this "Lorg/openide/nodes/AsynchChildren; LocalVariableTypeTable 'Lorg/openide/nodes/AsynchChildren<TT;>; MethodParameters ((Lorg/openide/nodes/ChildFactory<TT;>;)V n Lorg/openide/nodes/Node; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; java/lang/Throwable refresh (Z)V done keys Ljava/util/List; 	immediate Ljava/util/List<TT;>; optimalResult result [Lorg/openide/nodes/Node; name Ljava/lang/String; createNodes key Ljava/lang/SuppressWarnings; value 	unchecked arr run stop 'Lorg/openide/nodes/AsynchChildren$Stop; newKeys Ljava/util/LinkedList; fail entries minimalCount I *Ljava/util/LinkedList<Ljava/lang/Object;>; 4Ljava/util/List<Lorg/openide/nodes/Children$Entry;>; 
access$100 D(Lorg/openide/nodes/AsynchChildren;)Lorg/openide/nodes/ChildFactory; x0 <clinit> �<T:Ljava/lang/Object;>Lorg/openide/nodes/Children$Keys<Ljava/lang/Object;>;Lorg/openide/nodes/ChildFactory$Observer;Ljava/lang/Runnable; 
SourceFile AsynchChildren.java InnerClasses0 org/openide/nodes/Children Keys Task Stop Observer6  org/openide/nodes/Children$Entry Entry 0    � �      �    �  ' (         + ,   @     @     @ _             �  �   �     +*� *� *� *� Y� � *+� *� *� � %�    �       2  7 	 �  �  3  4 * 5 �       + � �     +    �       + � �     +  �         �     �   �   �     Q� )� -3� Y*S� 5*� � *� %� ;� 
*� � (*� *� � AL+� *� Y+S� G*� %� K�    �   "    9  : + ; 0 < 8 = < > H @ P B �     8     Q � �   �       Q � �      $�  ��         b   �  K     v� )� -O� Y*S� 5*� *� %� QW*� *� T� Z*� YL�*� ]� 
*� � `+ç M+�,�� *N*� Y:�*� ]� 
*� � `ç :��-��  3 C F   F I F    , N   W h k   k p k    �   B    E  G  H   I % J , L 3 M : N A P K Q N L W M ^ N e P s Q u R �       v � �   �       v � �     / � A D� B�        E� �        	
  �  +     p� c� � ~<� )� hk� Y*SY� mS� 5� )� s� v� � )� sz� |Y� ~� �  � �Y� �N*� -� �=���*-� Z� *� %� K�    �   :    ^  _ ! ` % _ ( a 4 b F d J f R h [ i _ j d k g l o n �   *  [ 	   R     p � �     p   �     R     p � �      K�     9�   ��         � �  �   �     *� �M� *� %� �*� �M,�    �       r  s 	 v  w  y �         � �           �        � �      �               � �  �   `     *� �M*+� ��    �   
    ~   �         � �          �        � �                �  �   s     +� �� � �Y+� �S�*� +� ��    �       �  �  � �        � �        �        � �                 [ s  � �  �   \     *+� �*� +� ��    �       �  �  � �        � �       �        � �                  �  �    *� � 	� �� � <� )� h�� Y*SY� mS� 5� *� T� Z�*� �� �M,� � d� �>� �Y*� �:*� Y:�*� ]� *� ]*� � �ç :��*� � 	� �� *� T� Z�*� � �6� :6*� � 	� �� *� T� Z�� �Y� �:� *� � A:� � �W*� Z� � �� 
*� ��_*� �  a w z   z  z   � � � �  �   � "   �  � & � * � - � 1 � 8 � 9 � A � N � Y � a � h � m � t � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �   f 
 �    �   �   � !     � �    �!   A �"  N �#$  Y �  � Z   �   *  � !%    � �   A �"&  Y �    7 @� &�  � ��   E� M �� � % ��   � �  �   _     #� �Y� �*� Զ �ܶ �*� � �� ض �    �       � �       # � �   �       # � �        '(  �   /     *� �    �       $ �       ) �   *   �   6      �  Y�� � � � � )�    �   
    )  +  �   +,   -.   2  /1	 <  2  �       � 3  � B45/7