����   4 �
      "org/openide/actions/MoveDownAction getIndexCookie 4([Lorg/openide/nodes/Node;)Lorg/openide/nodes/Index;
  	 
   #org/openide/util/actions/NodeAction <init> ()V
     
initialize  3org/openide/actions/MoveDownAction$OrderingListener
     '(Lorg/openide/actions/MoveDownAction;)V  sellistener
     putProperty 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;	     curIndexCookie Ljava/lang/ref/Reference;
   ! " # $ java/lang/ref/Reference get ()Ljava/lang/Object; & org/openide/nodes/Index % ( ) * indexOf (Lorg/openide/nodes/Node;)I % , - . getNodesCount ()I % 0 1 2 moveDown (I)V
  4 5 6 getCurIndexCookie ()Lorg/openide/nodes/Index;
  8 9 : getProperty &(Ljava/lang/Object;)Ljava/lang/Object; <  javax/swing/event/ChangeListener % > ? @ removeChangeListener %(Ljavax/swing/event/ChangeListener;)V % B C @ addChangeListener E java/lang/ref/WeakReference
 D G  H (Ljava/lang/Object;)V J MoveDown
 L M N O P org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String; R org/openide/util/HelpCtx
 Q T  U (Ljava/lang/Class;)V
 W X Y Z [ org/openide/nodes/Node getParentNode ()Lorg/openide/nodes/Node;
 W ] ^ _ 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie; PROP_ORDER_LISTENER Ljava/lang/String; ConstantValue 	Signature 4Ljava/lang/ref/Reference<Lorg/openide/nodes/Index;>; Code LineNumberTable LocalVariableTable this $Lorg/openide/actions/MoveDownAction; sl 5Lorg/openide/actions/MoveDownAction$OrderingListener; StackMapTable performAction ([Lorg/openide/nodes/Node;)V activatedNodes [Lorg/openide/nodes/Node; cookie Lorg/openide/nodes/Index; 	nodeIndex I MethodParameters asynchronous ()Z enable ([Lorg/openide/nodes/Node;)Z idx getName ()Ljava/lang/String; 
getHelpCtx ()Lorg/openide/util/HelpCtx; parent Lorg/openide/nodes/Node; 
access$000 X(Lorg/openide/actions/MoveDownAction;[Lorg/openide/nodes/Node;)Lorg/openide/nodes/Index; x0 x1 
SourceFile MoveDownAction.java InnerClasses OrderingListener � org/openide/nodes/Node$Cookie Cookie 1       ` a  b         c    d 
     e   /     *� �    f       ( g        h i       e   V     *� � Y*� L*+� W�    f       2  5  6  7 g        h i    	 j k   5 6  e   M     *� � � *� � � %�    f       : g        h i   l    I %  m n  e   �     -*+� M,� �,+2� ' >� ,� + d� 
,� / �    f       A  C 
 D  G  I % J , L g   *    - h i     - o p   ' q r    s t  l    �  %�   u    o    v w  e   ,     �    f       O g        h i    x y  e   �     d*� 3M,� ,*� 7� ;� = M*+� N-� �-+2� ' 6-*� 7� � A *� DY-� F� � -� + d� � �    f   .    T  V 	 W  X  [   ] $ ^ & a 1 d @ e L g g   4    d h i     d o p   _ z r    D q r  1 3 s t  l    �  %�  %� ;@ u    o    { |  e   2     I� K�    f       k g        h i    } ~  e   4     
� QY� S�    f       o g       
 h i       e   �     #+� 	+�� �+2� VM,� �,%� \� %�    f       u 
 v  y  {  |   g        # h i     # o p     �  l   
 
�  W u    o   � �  e   :     *+� �    f       ( g        � i      � p   �    � �       �  � W �	