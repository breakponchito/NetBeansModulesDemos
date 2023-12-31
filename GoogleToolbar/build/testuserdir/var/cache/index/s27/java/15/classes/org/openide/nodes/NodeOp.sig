����   4�
      java/lang/Object <init> ()V	  	 
   org/openide/nodes/NodeOp defaultActions ([Lorg/openide/util/actions/SystemAction;  java/lang/String  Tools  
Properties
     createFromNames =([Ljava/lang/String;)[Lorg/openide/util/actions/SystemAction;  java/lang/SecurityException
  
     findActions 0([Lorg/openide/nodes/Node;)[Ljavax/swing/Action;  java/util/ArrayList
  
 " # $ % & org/openide/nodes/Node 	getLookup ()Lorg/openide/util/Lookup; ( ) * + , java/util/List add (Ljava/lang/Object;)Z . #org/openide/util/lookup/ProxyLookup ( 0 1 2 size ()I 4 org/openide/util/Lookup ( 6 7 8 toArray (([Ljava/lang/Object;)[Ljava/lang/Object; : [Lorg/openide/util/Lookup;
 - <  = ([Lorg/openide/util/Lookup;)V
 ? @ A B C org/openide/util/Utilities actionsToPopup H([Ljavax/swing/Action;Lorg/openide/util/Lookup;)Ljavax/swing/JPopupMenu; E java/util/HashMap
 D  H [Ljavax/swing/Action;
 " J K L 
getActions (Z)[Ljavax/swing/Action;
  N O P getDefaultActions *()[Lorg/openide/util/actions/SystemAction; R java/util/HashSet
 Q  U V W X , java/util/Set contains U ) [ \ ] ^ _ java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; a java/lang/Integer
 ` c d 2 intValue
 ` f g h valueOf (I)Ljava/lang/Integer; [ j k l put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; [ n o p isEmpty ()Z r javax/swing/Action
 " t u v getParentNode ()Lorg/openide/nodes/Node; x java/util/LinkedList
 w 
 " { | } getName ()Ljava/lang/String;  org/openide/nodes/FilterNode � "java/lang/IllegalArgumentException � java/lang/StringBuilder
 �  � Node:
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
  � � � getClass ()Ljava/lang/Class;
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � [
 " � � } getDisplayName � ] �  of original:
 ~ � � v getOriginal
 � � � } toString �   �  gets null name!
 � �  � (Ljava/lang/String;)V
 w � � � addFirst (Ljava/lang/Object;)V
 w 0
 w 6
 " � � � getChildren ()Lorg/openide/nodes/Children;
 � � � � � org/openide/nodes/Children 	findChild ,(Ljava/lang/String;)Lorg/openide/nodes/Node; � � � � p java/util/Enumeration hasMoreElements � � � � nextElement ()Ljava/lang/Object;
  � � � D(Lorg/openide/nodes/Node;Ljava/lang/String;)Lorg/openide/nodes/Node; � 'org/openide/nodes/NodeNotFoundException
 � �  � .(Lorg/openide/nodes/Node;Ljava/lang/String;I)V
 � � � � � org/openide/util/Enumerations array ,([Ljava/lang/Object;)Ljava/util/Enumeration;
  � � � findPath I(Lorg/openide/nodes/Node;Ljava/util/Enumeration;)Lorg/openide/nodes/Node;
 � � � � � java/lang/Math max (II)I � java/lang/StringBuffer
 � 
 � � � � (I)Ljava/lang/StringBuilder; �  
 � � � � ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � --- �  = 
 � � � � (C)Ljava/lang/StringBuffer;
 � � � Missing permutation index 
 " � � � 	getHandle !()Lorg/openide/nodes/Node$Handle; � org/openide/nodes/Node$Handle �  [Lorg/openide/nodes/Node$Handle; � � � v getNode � org/openide/nodes/NodeListener
 � � � �  org/openide/util/WeakListeners create W(Ljava/lang/Class;Ljava/util/EventListener;Ljava/lang/Object;)Ljava/util/EventListener;
  ;org/netbeans/modules/openide/nodes/NodesRegistrationSupport registerPropertyEditors org/openide/nodes/LazyNode
	 
 (Ljava/util/Map;)V org.openide.actions. Action
 3 & 
getDefault java/lang/ClassLoader
 3 lookup %(Ljava/lang/Class;)Ljava/lang/Object;
 java/lang/Thread currentThread ()Ljava/lang/Thread;
 ! getContextClassLoader ()Ljava/lang/ClassLoader;
#$%&! java/lang/Class getClassLoader
#()* forName =(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;, %org/openide/util/actions/SystemAction
#./0 
asSubclass $(Ljava/lang/Class;)Ljava/lang/Class;
+2 ^3 :(Ljava/lang/Class;)Lorg/openide/util/actions/SystemAction;5  java/lang/ClassNotFoundException
 789 warning (Ljava/lang/Throwable;)V 	 <=> LOG Ljava/util/logging/Logger;	@ABCD java/util/logging/Level WARNING Ljava/util/logging/Level;
FGHIJ java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
# {
FMNO 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; Code LineNumberTable LocalVariableTable this Lorg/openide/nodes/NodeOp; StackMapTable 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; setDefaultActions +([Lorg/openide/util/actions/SystemAction;)V def MethodParameters findContextMenu 3([Lorg/openide/nodes/Node;)Ljavax/swing/JPopupMenu; n Lorg/openide/nodes/Node; nodes [Lorg/openide/nodes/Node; arr 
allLookups Ljava/util/List; Lorg/openide/util/Lookup; LocalVariableTypeTable +Ljava/util/List<Lorg/openide/util/Lookup;>;b cntInt Ljava/lang/Integer; a Ljavax/swing/Action; counted Ljava/util/Set; I cnt action result actions Ljava/util/Map; actionsByNode [[Ljavax/swing/Action; %Ljava/util/Set<Ljavax/swing/Action;>; &Ljava/util/List<Ljavax/swing/Action;>; 8Ljava/util/Map<Ljavax/swing/Action;Ljava/lang/Integer;>;w isSon 3(Lorg/openide/nodes/Node;Lorg/openide/nodes/Node;)Z parent son 
createPath E(Lorg/openide/nodes/Node;Lorg/openide/nodes/Node;)[Ljava/lang/String; isFilter Z node ar Ljava/util/LinkedList; res [Ljava/lang/String; *Ljava/util/LinkedList<Ljava/lang/String;>; name Ljava/lang/String; next start names Ljava/util/Enumeration; depth +Ljava/util/Enumeration<Ljava/lang/String;>; 
Exceptions 	Signature ](Lorg/openide/nodes/Node;Ljava/util/Enumeration<Ljava/lang/String;>;)Lorg/openide/nodes/Node; E(Lorg/openide/nodes/Node;[Ljava/lang/String;)Lorg/openide/nodes/Node; findRoot 2(Lorg/openide/nodes/Node;)Lorg/openide/nodes/Node; computePermutation 6([Lorg/openide/nodes/Node;[Lorg/openide/nodes/Node;)[I i sb Ljava/lang/StringBuffer; newPos arr1 arr2 map perm [I diff <Ljava/util/Map<Lorg/openide/nodes/Node;Ljava/lang/Integer;>;� 	toHandles ;([Lorg/openide/nodes/Node;)[Lorg/openide/nodes/Node$Handle; h Lorg/openide/nodes/Node$Handle; ll 1Ljava/util/List<Lorg/openide/nodes/Node$Handle;>; fromHandles ;([Lorg/openide/nodes/Node$Handle;)[Lorg/openide/nodes/Node; handles� java/io/IOException weakNodeListener T(Lorg/openide/nodes/NodeListener;Ljava/lang/Object;)Lorg/openide/nodes/NodeListener; l  Lorg/openide/nodes/NodeListener; source Ljava/lang/Object; factory )(Ljava/util/Map;)Lorg/openide/nodes/Node; $Ljava/util/Map<Ljava/lang/String;*>; >(Ljava/util/Map<Ljava/lang/String;*>;)Lorg/openide/nodes/Node; Ljava/lang/ClassLoader; c Ljava/lang/Class; ex "Ljava/lang/ClassNotFoundException; ;Ljava/lang/Class<+Lorg/openide/util/actions/SystemAction;>; 9Ljava/util/List<Lorg/openide/util/actions/SystemAction;>;� 	exception Ljava/lang/Throwable; <clinit> 
SourceFile NodeOp.java InnerClasses Handle 1      =>   
         P   3     *� �   Q   
    L  MR       ST   	 O P P   G      � � � YSYS� � � �   Q       U  V  YU    V    W    X   	YZ P   2     � Y� �   Q       _R       [   \   [  V    W    X   	]^ P   �     U*� L� Y�  M*N-�66� -2:,� !� ' W���� -Y,,� / � 3� 5 � 9� ;N+-� >�   Q       l  o  q # r / q 5 u O wR   4  # _`    Uab    Pc H   Hde  O f g      Hdh U    �  i G (i  � \   a   	   P  ^    L� DY� FL*�� GM>*�� �,*2� IS,2� 	,� MS� QY� S:,2:�66� W2:� E� T � � 6� Y W+� Z � `:	+	� � 
	� b`� e� i W�������p+� m � �� Y�  N� QY� S:,2:�66� f2:� L� T � � E� Y W+� Z � `:		� � 	� b6

*�� -� ' W� -� ' W����--� / � q� 5 � G�� q�   Q   � !   �  �  �  �   � & � , � 5 � P � U � a � d � n � { � � � � � � � � � � � � � � � � � � � � � � � � � �# �& �. �4 �G �R   z  { jk 	 P Glm  5 hno   �_p   jk 	 qp 
 � Vrm  � �se  � �no   Lab   Dtu  >vw g   *  5 hnx  � �sy  � �nx  Dtz U   � �  [{�  i [{ U G  � ! q� " 
i [{ U G q `  [ q�  
i [{ U G q `  [ q� �  i [{  � � & i [{ ( U G  � ! q�  `D� � � � \   a   	|} P   M     +� s*� � �   Q       �R       ~`     ` U    @\   	~     	�� P  �     �� wY� yM*� �*+� �*� z� j>*� ~� >� �Y� �Y� ��� �*� �� ��� �*� �� ��� �� "� �Y� ��� �*� ~� �� �� �� �� �� ��� �� �� ��,*� z� �*� sK��|,� �� N,-� �W-�   Q   >    �  �  �  �  � ! � # � 4 � @ � K �  � � � � � � � � �R   4   e��    ��`     �~`   ���  � �� g      ��� U   G �  w� � J  " " w  # # ��   " " w  # # � � \   	�  ~   	 � � P   =     	*� �+� ��   Q       �R       	�`     	�� \   	�  �   	 � � P   �     7=+� � � -+� � � N*-� �:� � �Y*-� ƿK����*�   Q   * 
   
    ! , / 2 5R   4   ��   �`    7�`     7��   5�p g       7�� U    � � )  "� �     �\   	�  �  �   � 	 �� P   =     	*+� ɸ ϰ   Q      *R       	�`     	�� �     �\   	�  �   	�� P   c     *� sL+� *�+K���   Q      3 5 	6 9 :R      ~`    �`  U   	  � 
 "\   �   	�� P  p    *�+�� �*�+�� �=� �Y� �N6� j-� �Y� �� �߶ �� �� �W*�� -*2� z� �W� 
-� �W-� �W+�� -+2� z� �W� 
-� �W-
� �W����� �Y-� � ��� DY� FM>+�� ,+2� e� i W����*��
N66*�� N,*2� Z � `:� � �Y� �Y� �� �� ܶ �� ��-� bO-.� ������ � -�   Q   z   J K L N  O 9Q @R OT VW ]Y dZ s\ z_ �N �b �g �i �j �i �o �p �r �t �v �x �|~r�R   p   m�p   � �p   |��  � �p  � 6�k  � R�p   �b    �b  � ��u  � c��  � `�p g     � ��� U   7 �  �4� � � 	 [� � 
�� 6 `� � @��     �\   	�  �   	�� P   �     J� wY� yL*M,�>6� $,2:� �:� +� ' W����++� / � � 5 � ��   Q      � � � #� (� 1� 7�R   *  # ��   _`    Jab    B�e g      B�� U    �  i (i   � \   a   	�� P   �     !*�� "L=*�� +*2� � S����+�   Q      � � � � �R       �p    !� �    cb U    � i� �    �\   �   	�� P   ?     �*+� �� ��   Q      �R       ��     �� \   	�  �   	  P           ��   Q   
   � � �� P   E     	�Y*��   Q      �R       	�u  g       	��  \   �  �   �    P  �  	   �� wY� yL*M,�>6� �,2:� +� ' W� m� �Y� �� �� �� �� �:���:� ��:� 
�":�'+�-:+�1� ' W� 
:�6���w++� / �+� 5 �:�  I � �4 Q   J   � � � !� )� ,� I� W� \� d� i� p� �� �� �� �� �� ��R   H  W 5��  � ��  � ��  I M��   z_�    �c�    ��e g     � ��   ��� U   E �  � (�  �  � 7 �  � (�   4� � \   c   �9 P   3     *�6�   Q   
   � �R       ��  \   �   89 P   :     �;�?*�E�   Q   
   � �R       ��  \   �   �  P   $      �K�L�;�   Q       H �   ��   
  � "�	