����   4  5org/openide/text/PositionRef$Manager$DocumentRenderer	      $org/openide/text/PositionRef$Manager queue Ljava/lang/ref/ReferenceQueue;	  
   head 0Lorg/openide/text/PositionRef$Manager$ChainItem;	     support )Lorg/openide/text/CloneableEditorSupport;
     getDoc #()Ljavax/swing/text/StyledDocument;
     getLock ()Ljava/lang/Object;	     DOCUMENT Ljava/lang/ThreadLocal;
     ! " java/lang/Object <init> ()V $ )java/util/concurrent/atomic/AtomicBoolean
 # 	  ' ( ) inMemory +Ljava/util/concurrent/atomic/AtomicBoolean;
  + , " init . java/lang/ref/ReferenceQueue
 -  1 .org/openide/text/PositionRef$Manager$ChainItem
 0 3 ! 4 o(Lorg/openide/text/PositionRef;Ljava/lang/ref/ReferenceQueue;Lorg/openide/text/PositionRef$Manager$ChainItem;)V
 6  7 'org/openide/text/CloneableEditorSupport
 9 : ; <  java/io/ObjectInputStream 
readObject > +org/openide/text/CloneableEditorSupport$Env = @ A B findCloneableOpenSupport ,()Lorg/openide/windows/CloneableOpenSupport; D java/io/IOException
 C 
 6 G H I getPositionManager (()Lorg/openide/text/PositionRef$Manager;
 6 K L M cesEnv /()Lorg/openide/text/CloneableEditorSupport$Env;
 O P Q R S java/io/ObjectOutputStream writeObject (Ljava/lang/Object;)V
 # U V W compareAndSet (ZZ)Z	  Y Z [ doc Ljava/lang/ref/Reference;
  ] ^ _ processPositions (Z)V
 a b c d  java/lang/ThreadLocal get f javax/swing/text/StyledDocument
 h b i java/lang/ref/Reference
 - k l m poll ()Ljava/lang/ref/Reference;	  o p q counter I
  s ! t +(ILorg/openide/text/PositionRef$Manager;Z)V
  v w " render	  y z { 	sweepTask (Lorg/openide/util/RequestProcessor$Task;	  } ~  RP #Lorg/openide/util/RequestProcessor;
 � � � � � !org/openide/util/RequestProcessor post >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;
 � � � � � &org/openide/util/RequestProcessor$Task 
isFinished ()Z
 � � � � schedule (I)V	 0 � �  next
 0 b
  � ! � H(ILorg/openide/text/PositionRef$Manager;Lorg/openide/text/PositionRef;)V
  � �  renderToObject
  � � " 
checkQueue � � � � � java/io/DataInput readInt ()I � -org/openide/text/PositionRef$Manager$LineKind
 � � ! � +(IILorg/openide/text/PositionRef$Manager;)V � /org/openide/text/PositionRef$Manager$OffsetKind
 � � ! � *(ILorg/openide/text/PositionRef$Manager;)V � ,org/openide/text/PositionRef$Manager$OutKind
 � � ! � ,(IIILorg/openide/text/PositionRef$Manager;)V
 a  � org/openide/text/PositionRef
 � � ! � (Ljava/lang/Class;)V � java/lang/Runnable � java/io/Serializable 	Signature +Ljava/lang/ThreadLocal<Ljava/lang/Object;>; serialVersionUID J ConstantValue�LR��R� >Ljava/lang/ref/ReferenceQueue<Lorg/openide/text/PositionRef;>; <Ljava/lang/ref/Reference<Ljavax/swing/text/StyledDocument;>; ,(Lorg/openide/text/CloneableEditorSupport;)V Code LineNumberTable LocalVariableTable this &Lorg/openide/text/PositionRef$Manager; supp MethodParameters (Ljava/io/ObjectInputStream;)V env -Lorg/openide/text/CloneableEditorSupport$Env; in Ljava/io/ObjectInputStream; firstObject Ljava/lang/Object; StackMapTable 
Exceptions �  java/lang/ClassNotFoundException readResolve (Ljava/io/ObjectOutputStream;)V out Ljava/io/ObjectOutputStream; getCloneableEditorSupport +()Lorg/openide/text/CloneableEditorSupport; documentOpened (Ljava/lang/ref/Reference;)V LocalVariableTypeTable ?(Ljava/lang/ref/Reference<Ljavax/swing/text/StyledDocument;>;)V documentClosed d w x !Ljavax/swing/text/StyledDocument; toMemory Z run previous ref � java/lang/Throwable addPosition !(Lorg/openide/text/PositionRef;)V pos Lorg/openide/text/PositionRef; readKind @(Ljava/io/DataInput;)Lorg/openide/text/PositionRef$Manager$Kind; is Ljava/io/DataInput; offset line column 
access$000 ()Ljava/lang/ThreadLocal; 
access$100 :(Lorg/openide/text/PositionRef$Manager;)Ljava/lang/Object; x0 
access$300 I(Lorg/openide/text/PositionRef$Manager;)Ljavax/swing/text/StyledDocument; 
access$400 Q(Lorg/openide/text/PositionRef$Manager;)Lorg/openide/text/CloneableEditorSupport; 
access$500 X(Lorg/openide/text/PositionRef$Manager;)Lorg/openide/text/PositionRef$Manager$ChainItem; 
access$900 F(Lorg/openide/text/PositionRef$Manager;)Ljava/lang/ref/ReferenceQueue; <clinit> 
SourceFile PositionRef.java InnerClasses Manager DocumentRenderer 	ChainItem Env Task LineKind 
OffsetKind OutKind 1org/openide/text/PositionRef$Manager$PositionKind PositionKind )org/openide/text/PositionRef$Manager$Kind Kind 0    � � 
 
    �    �  � �  �    � �     �    �    � � p q   � z {    ~    �     � Z [  �    � � ( )     ! �  �   ]     *� *� #Y� %� &*+� *� *�    �       �  �  �  �  � �        � �      �   �    �    , "  �   O     *� -Y� /� *� 0Y*� � 2� 	�    �       �  �  � �        � �       �   2     *� � 5�    �        �        � �    < �  �   �     '+� 8M,� =N*-� ? � 6� *� � � CY� E��    �        
   & �   *  
  � �    ' � �     ' � �   " � �  �    � &  �     C � �    �    �   �   2     *� � F�    �       �        � �    R �  �   D     +*� � J� N�    �   
     ! �        � �      � �  �     C �    �    � �  �   /     *� �    �      & �        � �     � �  �   r     *� &� T� *+� X*� \�    �      , - . 0 �        � �      Z [  �        Z �  �     �    Z   �    �   � "  �   V     *� &� T� *� \*� X�    �      6 7 8 : �        � �   �         �   �     1� � `L+� e� +� e�+*� �*� XM,� � 
,� g� eN-�    �   "   @ B C F G I J /K �   *    1 � �    * � �    � [  /  � �  �       � �  �    �  �  hF e  ^ _  �   o     !*� � j� ���*� n� Y*� r� u�    �      T 
U W Z  [ �       ! � �     ! � �  �      �    �   � "  �   �     M*� � j� *Y� n`� n���*� nd� /*� n*� x� *� |*� �� x� *� x� �� *� x� ��    �   & 	  ` 
a d  e %g ,h :i Dj Lm �       M � �   �     " ! � "  �   �     >*� YL�*� 	M,� �N-� -� �� ,-� �� �� -M-� �N���+ç 
:+���   3 6   6 : 6    �   * 
  r s t v w y '{ )~ 1� =� �       % �      �     > � �   �    �   0 0� D ��    � �  �   P     � Y*+� �� �W*� ��    �      � � � �        � �      � �  �    �    � �  �   �     I+� � =+� � >+� � 6� � �Y*� ��� 	� � �Y*� ��� �Y*� ��    �   "   � � � � � '� 2� <� �   4    I � �     I � �   B � q   ; � q   3 � q  �   
 � '
	 �     C �    �   � �  �         � �    �       � � �  �   /     *� �    �       � �        � �   � �  �   /     *� �    �       � �        � �     �   /     *� �    �       � �        � �    �   /     *� 	�    �       � �        � �    �   /     *� �    �       � �        � �    "  �   3      � aY� �� � �Y�� �� |�    �   
    � 
 �    	   R 
  �
     0  
 = 6	 � �  �   �   �     
