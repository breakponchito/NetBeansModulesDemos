����   4	      #org/openide/util/actions/NodeAction listeningActions Ljava/util/Set;
  	 
   -org/openide/util/actions/CallableSystemAction <init> ()V
     
initialize  hasListeners	      java/lang/Boolean FALSE Ljava/lang/Boolean;
     putProperty 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  %org/openide/util/actions/SystemAction  enabled
  ! "  	addNotify	  $ %  TRUE	  ' ( ) l ,Lorg/openide/util/actions/NodeAction$NodesL; + *org/openide/util/actions/NodeAction$NodesL
 * 	 . / 0 1 2 java/util/Set isEmpty ()Z
 * 4 5 6 	setActive (Z)V . 8 9 : add (Ljava/lang/Object;)Z . < = : remove
  ? @  removeNotify
  B C D getLock ()Ljava/lang/Object;
  F G H getProperty &(Ljava/lang/Object;)Ljava/lang/Object;
  J K 2 surviveFocusChange
 * M N O getActivatedNodes (Z)[Lorg/openide/nodes/Node; Q 	lastNodes S java/lang/ref/Reference
 R U V D get X [Lorg/openide/nodes/Node;
 Z [ \ ] ^ java/util/Arrays equals )([Ljava/lang/Object;[Ljava/lang/Object;)Z ` lastEnabled
  b c 2 booleanValue
  e f g enable ([Lorg/openide/nodes/Node;)Z i java/lang/ref/WeakReference
 h k  l (Ljava/lang/Object;)V
  n o 6 
setEnabled
  q  r 9(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
 t u v w D java/awt/event/ActionEvent 	getSource y org/openide/nodes/Node
  { | 2 amIasynchronous ~ %org/openide/util/actions/NodeAction$1
 } �  � :(Lorg/openide/util/actions/NodeAction;Ljava/lang/Object;)V
 � � � � � &org/openide/util/actions/ActionInvoker invokeAction H(Ljavax/swing/Action;Ljava/awt/event/ActionEvent;ZLjava/lang/Runnable;)V � %org/openide/util/actions/NodeAction$2
 � �
  � � � actionPerformed (Ljava/awt/event/ActionEvent;)V
  � N � ()[Lorg/openide/nodes/Node;
  � � � performAction ([Lorg/openide/nodes/Node;)V � 2org/openide/util/actions/NodeAction$DelegateAction
 � �  � A(Lorg/openide/util/actions/NodeAction;Lorg/openide/util/Lookup;)V
  � � � firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V � java/lang/NullPointerException � java/lang/StringBuilder
 � 	 � You cannot add 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � � java/lang/Object getClass ()Ljava/lang/Class;
 � � � � � java/lang/Class getName ()Ljava/lang/String; � F directly to a JMenu etc.; use org.openide.awt.Actions.connect instead
 � � � � toString
 � � � � � org/openide/util/Exceptions attachMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
 � � � � � java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level WARNING Ljava/util/logging/Level;
 � � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  � � 2 asynchronous � org/openide/util/WeakSet
 � �  � (I)V � #org/openide/util/ContextAwareAction serialVersionUID J ConstantValue�E�+ѓuf PROP_HAS_LISTENERS Ljava/lang/String; PROP_LAST_NODES PROP_LAST_ENABLED 	Signature 6Ljava/util/Set<Lorg/openide/util/actions/NodeAction;>; Code LineNumberTable LocalVariableTable this %Lorg/openide/util/actions/NodeAction; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; StackMapTable � java/lang/Throwable 	isEnabled r Ljava/lang/ref/Reference; listener ns b e Z propHasListener MethodParameters ev Ljava/awt/event/ActionEvent; s Ljava/lang/Object; 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; activatedNodes createContextAwareInstance /(Lorg/openide/util/Lookup;)Ljavax/swing/Action; actionContext Lorg/openide/util/Lookup; maybeFireEnabledChange  Ljava/lang/NullPointerException; fire 
access$000 ()Ljava/util/Set; <clinit> 
SourceFile NodeAction.java InnerClasses NodesL DelegateAction!    �   � �  �    �  � �  �      � �  �    P  � �  �    _ 
 ( )       �    �      �   /     *� �    �       G �        � �       �   M     *� *� � W*� W�    �       ]  ^  a  b �        � �   �     �    "   �   �     K*�  *� #� W� YL² &� � *Y� ,� &� � - � 
� &� 3� *� 7 W+ç M+�,��   B E   E H E    �   * 
   i  l  n  o  p $ s / t 6 w @ x J y �       K � �   �    � $ �N ��  �     �    @   �   �     C� YL² *� ; W� � - � 
� &� 3+ç M+�,�*� � W*� W*� >�   $ '   ' * '    �   & 	   �  �  �  � " � , � 6 � > � B � �       C � �   �    � " �D ��  �     �    � 2  �  �     �LM*� AYN�*� E� M� &� � *Y� ,� &� &� 3� &:,� M*� I� LL*P� E� R:� 3� T� W+� Y� $*_� E� M*� E� � a� *,� W-ç 
:-��,� Z+� *+� d� 	� #� � M*� AYN�*P� hY+� j� W*_,� W*� E� � a� *,� W-ç 
:-��,� a�   � �   � � �   � � �   � � �    �   f    �  �  �  �  �  � % � , � 1 � 5 � ? � J � ^ � h � w �  � � � � � � � � � � � � � � � � � � � �   4  J 5 � �  1 N � )    � � �    � � X   � �   �   * 	� , W  �� RD �� B � 5 �D ��  �     �    o 6  �   �     7*_� W*P� W*� E� M,� ,� a� *� m� *� pW�    �       �  �  �  � % � - � 6 � �        7 � �     7 � �    �   �   	 � -  �    �   �     �    � �  �   �     K+� � +� sM,� x� *+*� z� }Y*,� � �� $,� W� *+*� z� �Y*,� �� �� *+� ��    �       �  �  � ) � 0 � E J �        K � �     K � �   > � �  �    C ��  � �    �  �     �        �     �    �   �   7     	**� �� ��    �   
     �       	 � �   �     �         N �  �   _     � &L+� 
� x� +� L�    �   
     �        � �     � )  �    �  *D W  K 2  �   ,     �    �      ) �        � �   � �  �      f g  �        �   >     
� �Y*+� ��    �      L �       
 � �     
  �          �       j<*� AYM�*� E� *� W<,ç N,�-�� B*� �� 7M,� �Y� ��� �*� �� �� ��� �� �� �W� �� �� �,� ͱ  	  !   ! $ !   * 2 5 �  �   >   R T 	U V W Y &[ *] 2e 5^ 6` Db U` Yd ig �      6 3 �    j � �    h �  �    �  �D �� N �3  | 2  �   /     *� Ѭ    �      j �        � �  	
  �         � �    �       G    �   %      � �Yd� ֳ �    �       W       "  *   }       �       �  