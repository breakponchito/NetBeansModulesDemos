����   4  $org/openide/explorer/ExplorerManager
      -org/openide/explorer/ExplorerManager$Listener scheduleRemove (Lorg/openide/nodes/Node;)V	  
   this$0 &Lorg/openide/explorer/ExplorerManager;
      org/openide/nodes/NodeAdapter <init> ()V  java/util/HashSet
  	     
removeList Ljava/util/Collection;
      org/openide/nodes/NodeEvent getNode ()Lorg/openide/nodes/Node;
  ! "  getRootContext
 $ % & ' ( org/openide/nodes/Node equals (Ljava/lang/Object;)Z	 $ * + , EMPTY Lorg/openide/nodes/Node;
  . /  setRootContext 1 /org/openide/explorer/ExplorerManager$Listener$1
 0 3  4 J(Lorg/openide/explorer/ExplorerManager$Listener;Lorg/openide/nodes/Node;)V	  6 7 8 SCHEDULE_REMOVE_ASYNCH Z
 : ; < = > javax/swing/SwingUtilities invokeLater (Ljava/lang/Runnable;)V @ A B C  java/lang/Runnable run E 
nodeChange
  G H I 	fireInAWT 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
  K L M access$1200 P(Lorg/openide/explorer/ExplorerManager;)Lorg/openide/util/RequestProcessor$Task;
  O P Q getSelectionProcessor %()Lorg/openide/util/RequestProcessor;
 S T U V W !org/openide/util/RequestProcessor create >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task;
  Y Z [ access$1202 x(Lorg/openide/explorer/ExplorerManager;Lorg/openide/util/RequestProcessor$Task;)Lorg/openide/util/RequestProcessor$Task;
 ] ^ _ ` a &org/openide/util/RequestProcessor$Task cancel ()Z c d e f ( java/util/Collection add
 ] h i j schedule (I)V	 l m n o p org/openide/nodes/Children MUTEX Lorg/openide/util/Mutex;
 r s t u a org/openide/util/Mutex isReadAccess
 r w x > 
readAccess
  z { | 
access$400 @(Lorg/openide/explorer/ExplorerManager;)Lorg/openide/nodes/Node;
  ~  � 
access$200 A(Lorg/openide/explorer/ExplorerManager;Lorg/openide/nodes/Node;)Z
  � � | 
access$700
  � �  setExploredContext � java/util/LinkedList
  � � � getSelectedNodes ()[Lorg/openide/nodes/Node;
 � � � � � java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
 � �  � (Ljava/util/Collection;)V c � � � iterator ()Ljava/util/Iterator; � � � � a java/util/Iterator hasNext � � � � next ()Ljava/lang/Object;
 � � � ( contains
 � � � � indexOf (Ljava/lang/Object;)I
 � � � � get (I)Ljava/lang/Object;
 � � � � � org/openide/nodes/NodeOp 
createPath E(Lorg/openide/nodes/Node;Lorg/openide/nodes/Node;)[Ljava/lang/String;
 � � ' � )([Ljava/lang/Object;[Ljava/lang/Object;)Z
  � � � isInParentChildren (Lorg/openide/nodes/Node;)Z � � �  remove
 � � � � 	removeAll (Ljava/util/Collection;)Z
 � �
 � � � � size ()I
 � � � � toArray (([Ljava/lang/Object;)[Ljava/lang/Object; � [Lorg/openide/nodes/Node;
  � � � setSelectedNodes0 ([Lorg/openide/nodes/Node;)V
 $ � �  getParentNode
 $ � � � getChildren ()Lorg/openide/nodes/Children;
 l � � � getNodes � � � java/util/List 	Signature 0Ljava/util/Collection<Lorg/openide/nodes/Node;>; )(Lorg/openide/explorer/ExplorerManager;)V Code LineNumberTable LocalVariableTable this /Lorg/openide/explorer/ExplorerManager$Listener; MethodParameters nodeDestroyed  (Lorg/openide/nodes/NodeEvent;)V n r Ljava/lang/Runnable; ev Lorg/openide/nodes/NodeEvent; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; propertyChange #(Ljava/beans/PropertyChangeEvent;)V  Ljava/beans/PropertyChangeEvent; � java/lang/Object � java/lang/Throwable n_selection n_remove i Ljava/util/Iterator; newSel Ljava/util/LinkedList; it selNodes LocalVariableTypeTable .Ljava/util/Iterator<Lorg/openide/nodes/Node;>; 0Ljava/util/LinkedList<Lorg/openide/nodes/Node;>; node parent access$1100 x0 x1 
SourceFile ExplorerManager.java InnerClasses Listener Task      @       �    �         �  �   G     *+� 	*� *� Y� � �    �      � 	� � �        � �   �      � �  �   �     A+� *� 	�  � #� *� 	� )� -� %+� M� 0Y*,� 2N� 5� 
-� 9� 	-� ? �    �   "   � � � #� -� 3� :� @� �   *  #  � ,  -  � �    A � �     A � �  �    �  $ @�  �    �   �     �    � �  �   D     *� 	D� F�    �   
   � � �        � �      � �  �    �   �     �       �       a*� 	YM�*� 	� J� *� 	� N*� R� XW� *� 	� J� \W,ç N,�-�*YM�*� +� b W,ç 
:,��*� 	� J ȶ g�   0 3   3 6 3   < I L   L P L    �   * 
  � � � #� .� 8� <� G� S� `� �       a � �     a � ,  �   & � # �
D �� �    $ �  ��  �    �    C   �  �    
� k� q� � k*� v�*YM�*� L*� Y� � ,ç N,�-�*� 	*� 	� y� }� *� 	*� 	� �� ��� �Y*� 	� �� �� �M+� � N-� � � J-� � � $:,� �� 3,,� �� �� $:� �� �� �� *� �� 	-� � ���,+� �W,� �:� � � %� � � $:*� 	� }� 
� � ���,,� ý $� �� �:*� 	� ͱ   ' *   * - *    �   v   � 	� � � � � %� /� @� N� O� a� h� q� |� �� �� �� �� �� �� �� �� �� �� �� �� �	� �   f 
   �   � ! � ,  | 9 � ,  �  � ,  � , � �   
 � �   / � �   a � � �  h � � �   
 � �     4    � �  � , �  / � � �  a � �  h � �  �   B �     �  ��    c  �  � �� F $ $� �  �(�   � �  �   t     "+� �M,� ,� Զ ظ �+� � � � �    �   
   � � �        " � �     " ,    ,  �   
 �   $@ �      4  �   :     *+� �    �      � �        �      ,     	
        0       ] S 