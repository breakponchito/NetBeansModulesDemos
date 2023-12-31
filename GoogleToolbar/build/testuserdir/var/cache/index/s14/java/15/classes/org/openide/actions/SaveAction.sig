����   4I
      %org/openide/util/actions/CookieAction <init> ()V  noIconInMenu	 
     java/lang/Boolean TRUE Ljava/lang/Boolean;
      org/openide/actions/SaveAction putValue '(Ljava/lang/String;Ljava/lang/Object;)V  java/lang/Class   org/netbeans/api/actions/Savable  'org/openide/actions/SaveAction$Delegate
     <(Lorg/openide/actions/SaveAction;Lorg/openide/util/Lookup;)V
    ! " # org/openide/util/Lookup 	lookupAll )(Ljava/lang/Class;)Ljava/util/Collection; % java/util/LinkedList ' org/openide/nodes/Node
 $ )  * (Ljava/util/Collection;)V , - . / 0 java/util/Collection iterator ()Ljava/util/Iterator; 2 3 4 5 6 java/util/Iterator hasNext ()Z 2 8 9 : next ()Ljava/lang/Object;
 & < = > 	getLookup ()Lorg/openide/util/Lookup;
  @ A B lookup %(Ljava/lang/Class;)Ljava/lang/Object;  D E F equals (Ljava/lang/Object;)Z
  H I J performAction =(Lorg/netbeans/api/actions/Savable;Lorg/openide/nodes/Node;)V , L M F remove	  O P Q $assertionsDisabled Z S java/lang/AssertionError U java/lang/StringBuilder
 T  X Savable must be present on 
 T Z [ \ append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 T ^ [ _ -(Ljava/lang/Object;)Ljava/lang/StringBuilder; a U. See http://www.netbeans.org/issues/show_bug.cgi?id=68285 for details on overriding 
 c d e f g java/lang/Object getClass ()Ljava/lang/Class;
  i j k getName ()Ljava/lang/String; m .getCookie correctly.
 T o p k toString
 R r  s (Ljava/lang/Object;)V  u v  save
 x y z {  &org/openide/util/UserQuestionException 	confirmed
 } ~  � � org/openide/awt/StatusDisplayer 
getDefault #()Lorg/openide/awt/StatusDisplayer; � 	MSG_saved
  � � � getSaveMessage N(Lorg/netbeans/api/actions/Savable;Lorg/openide/nodes/Node;)Ljava/lang/String;
 � � � � � org/openide/util/NbBundle 
getMessage I(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
 } � � � setStatusText (Ljava/lang/String;)V � )org/openide/NotifyDescriptor$Confirmation
 x � � k getLocalizedMessage � org/openide/NotifyDescriptor
 � �  � (Ljava/lang/Object;I)V
 � � � � � org/openide/DialogDisplayer ()Lorg/openide/DialogDisplayer;
 � � � � notify 2(Lorg/openide/NotifyDescriptor;)Ljava/lang/Object;	 � � � � 	OK_OPTION Ljava/lang/Object;
 c D � java/io/IOException � EXC_notsaved
 � �
 � � � � [(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
 � � � � � org/openide/util/Exceptions attachLocalizedMessage >(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
 � � � � � java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level SEVERE Ljava/util/logging/Level;
 � � � � log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V  o	  � � � 
dataObject Ljava/lang/Class;
  � � > � java/lang/ClassLoader
  � � � getClassLoader ()Ljava/lang/ClassLoader; � org.openide.loaders.DataObject
  � � � forName =(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class; � org/openide/nodes/Node$Cookie
  � � � 
asSubclass $(Ljava/lang/Class;)Ljava/lang/Class; � getNodeDelegate
  � � � 	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;	  � � � Ljava/lang/reflect/Method; � java/lang/Exception
 � � � � printStackTrace (Ljava/lang/Throwable;)V
 & � � � 	getCookie 2(Ljava/lang/Class;)Lorg/openide/nodes/Node$Cookie;
 � � � � � java/lang/reflect/Method invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
 & � � k getDisplayName � Save
 �  � 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String; org/openide/util/HelpCtx
  (Ljava/lang/Class;)V &org/openide/resources/actions/save.png
 
 6 desiredAssertionStatus 	Signature 3Ljava/lang/Class<+Lorg/openide/nodes/Node$Cookie;>; Code LineNumberTable LocalVariableTable this  Lorg/openide/actions/SaveAction; cookieClasses ()[Ljava/lang/Class; createContextAwareInstance /(Lorg/openide/util/Lookup;)Ljavax/swing/Action; actionContext Lorg/openide/util/Lookup; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; (Lorg/openide/util/Lookup;)V node Lorg/openide/nodes/Node; savable "Lorg/netbeans/api/actions/Savable; context 
cookieList Ljava/util/Collection; nodeList LocalVariableTypeTable ;Ljava/util/Collection<+Lorg/netbeans/api/actions/Savable;>; 1Ljava/util/Collection<+Lorg/openide/nodes/Node;>; StackMapTable ([Lorg/openide/nodes/Node;)V sc i I activatedNodes [Lorg/openide/nodes/Node; nd Lorg/openide/NotifyDescriptor; res ex (Lorg/openide/util/UserQuestionException; e Ljava/io/IOException; n userEx asynchronous Ljava/lang/Exception; l Ljava/lang/ClassLoader; obj mode ()I 
getHelpCtx ()Lorg/openide/util/HelpCtx; iconResource <clinit> 
SourceFile SaveAction.java InnerClasses Delegate Confirmation Cookie !      
 � �     
 � �   P Q          @     *� *� 	� �          7  8  9              4     
� YS�          <       
       >     
� Y*+� �          A       
     
              I   O     �+� M� $Y+&� � (N,� + :� 1 � b� 7 � :-� + :� 1 � :� 7 � &:� ;� ?� C � *� G-� K W������*� G����      2    E  F  H 3 K Q L e M m N v O y Q | T � U � V   >  Q (  3 P     �     �!   �"#   r$# %      �"&   r$' (    �  , , 2�   2=� � 	   !    I)    �     h=+�� b+2N-� ;� ?� :� N� 7� 2� RY� TY� VW� Y-� ]`� Y-� b� h� Yl� Y� n� q�� �*-� G�����      & 	   Y  Z  [  \ ? ] T ` Z b a Y g d   4   U   G*    e+,    h     h-. (    � � Q & �    -   I J        �N-� +� t � -� w� |�*+,� �� �� �� b:� �Y� �� �:� �� �:� �� �� 	N���� 3:�*+,� �� �� �� �W*� b� h� �� �� ħ �   & ) x  & X �    b    g  j  k  m  o  p # o & � ) r + s : u D w O x R y U � X { Z | c  h � k } n | r � � � � �   R  : /0  D 1 �  + *23  Z +45    �     �*     �6   �73 (    �  xU x+B �/   	*  6   8 6    ,     �          �                 � �   n     �,� 
+� � �� �� C� �϶ ?� �N-� *� b� �N�-� �۶ ݳ ɲ ��� � � � 
:� � �� (,� ɶ �N-� � �-� c� �� &M� 
:� �,� ��  ) G J � c r u �    N    �  �  �  �  � ! � ) � 8 � G � J � L � Q � W � _ � c � r � u � w � | �   H  L 29   4:;  w 29  _ < �    �     �*     �6 (   ) �  �` �� � #    & c  ��    	*  6   =>    -     �          �           j k    2     �� ��          �          ?@    4     
�Y��          �       
   A k    .     �          �                B     4      �	� � � N�          3(    @ C   DE      F  � �G 	 � &H	