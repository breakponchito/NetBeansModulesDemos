����   4p  .org/openide/util/lookup/AbstractLookup$Content	      )org/openide/loaders/FolderLookup$ProxyLkp DISPATCH +Lorg/openide/loaders/FolderLookup$Dispatch;
  
   <init> "(Ljava/util/concurrent/Executor;)V
     U(Lorg/openide/loaders/FolderLookup;Lorg/openide/util/lookup/AbstractLookup$Content;)V  org/openide/util/Lookup  &org/openide/util/lookup/AbstractLookup
     3(Lorg/openide/util/lookup/AbstractLookup$Content;)V
      #org/openide/util/lookup/ProxyLookup ([Lorg/openide/util/Lookup;)V	     fl "Lorg/openide/loaders/FolderLookup;	  ! " # content 0Lorg/openide/util/lookup/AbstractLookup$Content; % java/lang/StringBuilder
 $ '  ( ()V * FolderLookup.lookup["
 $ , - . append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 0 1 2 3 4  org/openide/loaders/FolderLookup 
access$200 6(Lorg/openide/loaders/FolderLookup;)Ljava/lang/String; 6 "]
 $ 8 9 : toString ()Ljava/lang/String;
  < = > 
getLookups ()[Lorg/openide/util/Lookup;
 @ A B C D java/io/ObjectOutputStream writeObject (Ljava/lang/Object;)V	 0 F G H folder  Lorg/openide/loaders/DataFolder; J java/util/ArrayList
 I '
 M N O P Q java/io/ObjectInputStream 
readObject ()Ljava/lang/Object; S T U V W java/util/List add (Ljava/lang/Object;)Z S Y Z [ size ()I S ] ^ _ toArray (([Ljava/lang/Object;)[Ljava/lang/Object; a [Lorg/openide/util/Lookup; c org/openide/loaders/DataFolder e java/lang/String
 0 g  h d(Lorg/openide/loaders/DataObject$Container;Ljava/lang/String;ZLorg/openide/loaders/FolderLookup$1;)V
 0 j k l 
access$402 z(Lorg/openide/loaders/FolderLookup;Lorg/openide/loaders/FolderLookup$ProxyLkp;)Lorg/openide/loaders/FolderLookup$ProxyLkp;
  n o p 
setLookups <(Ljava/util/concurrent/Executor;[Lorg/openide/util/Lookup;)V	  r s t readFromStream Z
 v w x y z !org/openide/util/RequestProcessor 
getDefault %()Lorg/openide/util/RequestProcessor; | java/lang/Thread
 v ~  � post @(Ljava/lang/Runnable;II)Lorg/openide/util/RequestProcessor$Task;
  � � � setPairs (Ljava/util/Collection;)V
 0 � � � err ()Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level FINE Ljava/util/logging/Level;
 � � � � � java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z � Changed pairs: 
 $ � - � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 � � � � fine (Ljava/lang/String;)V S � � � set '(ILjava/lang/Object;)Ljava/lang/Object; � Changed lookups: 
 � � � � �  org/openide/util/Lookup$Template getType ()Ljava/lang/Class; � org/openide/loaders/DataLoader
 � � � � W java/lang/Object equals
 � � � � � org/openide/loaders/FolderList isFolderRecognizerThread ()Z	 � � � � � 'org/openide/loaders/FolderLookup$ICItem 	DANGEROUS Ljava/lang/ThreadLocal;
 � � � � Q java/lang/ThreadLocal get
 � � � � � "org/openide/loaders/DataObjectPool isConstructorAllowed
 0 � � ( waitFinished      '
 0 � � � (J)Z
 � � � � getPOOL &()Lorg/openide/loaders/DataObjectPool;
 � � � � timeInWaitNotified ()J � java/lang/Exception
 � '	 � � � � INFO � WPreventing deadlock #65543: Do not call FolderLookup from inside DataObject operations!
 � � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 { � � � getAllStackTraces ()Ljava/util/Map; � � � � � java/util/Map entrySet ()Ljava/util/Set; � � � � � java/util/Set iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext � � � Q next � java/util/Map$Entry � � � Q getValue [Ljava/lang/StackTraceElement;
 � setStackTrace !([Ljava/lang/StackTraceElement;)V Thread  �	
 Q getKey java/lang/InterruptedException
 b : getName 	Factories
 d � &org/openide/loaders/DataObject$Factory
 java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z )org/openide/loaders/FolderLookup$Dispatch
 ' java/io/Serializable serialVersionUID J ConstantValue        %(Lorg/openide/loaders/FolderLookup;)V Code LineNumberTable LocalVariableTable this +Lorg/openide/loaders/FolderLookup$ProxyLkp; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; (Ljava/io/ObjectOutputStream;)V i I oos Ljava/io/ObjectOutputStream; ls StackMapTable 
Exceptions7 java/io/IOException (Ljava/io/ObjectInputStream;)V ois Ljava/io/ObjectInputStream; Ljava/util/List; l Lorg/openide/util/Lookup; arr df root Ljava/lang/String; LocalVariableTypeTable +Ljava/util/List<Lorg/openide/util/Lookup;>;E  java/lang/ClassNotFoundException update )(Ljava/util/Collection;Ljava/util/List;)V items Ljava/util/Collection; lookups pairs ALjava/util/Collection<Lorg/openide/loaders/FolderLookup$ICItem;>; 	Signature o(Ljava/util/Collection<Lorg/openide/loaders/FolderLookup$ICItem;>;Ljava/util/List<Lorg/openide/util/Lookup;>;)V beforeLookup %(Lorg/openide/util/Lookup$Template;)V entry Ljava/util/Map$Entry; td Ljava/lang/Exception; blocked ex  Ljava/lang/InterruptedException; template "Lorg/openide/util/Lookup$Template; GLjava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>; <clinit> 
SourceFile FolderLookup.java InnerClasses Content ProxyLkp Dispatchc (org/openide/loaders/DataObject$Containere org/openide/loaders/DataObject 	Containerh "org/openide/loaders/FolderLookup$1j &org/openide/util/RequestProcessor$Task Task Template ICItem Entry Factory 0           ! "   # �     � " #   � s t   	  % &   H     *+� Y� � 	� �   '   
   7 8(       )*      G  +    G      &   h     *� Y� Y,� S� *+� *,�  �   '      < > ? @(        )*      G      " # +   	 G   "    9 : &   I     � $Y� &)� +*� � /� +5� +� 7�   '      D(       )*  ,    -    C. &   �     >*� ;M>,�� +,2� ?����+� ?+*� � E� ?+*� � /� ?+*�  � ?�   '   & 	  H I J I L M *N 5O =P(   *   /0    >)*     >12   93 a 4    �  `� 5    6+   1    P8 &  B     �� IY� KM+� L� YN� ,-� R W���,,� X � � \ � `:+� L� b:+� L� d:*� 0Y� f� *� *� iW*+� L� �  *� � m*� q� u*� � }W�   '   6   S U V X 3Y <Z E\ V] __ ja sc xd �e(   H    �)*     �9:   ~3;   u<=  3 S> a  < J? H  E A@A B      ~3C 4    �  S�  5    6D+   9   FG &  7     �*� q*� ;2N*�  +� �*� � �� �� ��  *� � �� $Y� &�� ++� �� 7� �,-� � W,,� X � � \ � `:*� � m*� � �� �� ��  *� � �� $Y� &�� +,� �� 7� ��   '   & 	  m p s t Av Jx ^y gz �{(   4    �)*     �HI    �J;   �K=  ^ 7> a B       �HL    �JC 4    � A � R `+   	H  J  M   N OP &  "    *� q� �+� ��� �� �� �� ̲ �� �� ø  *� � ǧ �*�  ʶ ̚ �� ϶ �A  ʔ� ~� �Y� �:*� � �� ��� ߸ � � � � :� � � J� � � �:� � � �*� � �� ڻ $Y� &� +� � �� 7� ߧ�����i� GM*� � �� �,� ߧ 4*� � E� **� � E��� +� ��� 
*� � Ǳ  4 � � � � � '   r   � � � � � � $� *� 4� A� H� P� Y� j� �� �� �� �� �� �� �� �� �� �� �����(   >  � 8QR  Y rST  H �U!  � VW   )*    XY B     � 8QZ 4    
� D � �� P�  B0+   X  ,    -    � ( &   6     *� � Ǳ   '   
   � �(       )*   [ ( &   #      �Y�� �   '      ( \   ]^   R 
  _ 	  0`  0a bdf	g    i vk  � l  � 0m  � �n	do	