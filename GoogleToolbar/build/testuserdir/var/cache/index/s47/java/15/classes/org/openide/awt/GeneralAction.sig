����   49
      java/lang/Object <init> ()V  java/lang/NullPointerException
    ,org/openide/awt/GeneralAction$DelegateAction
 
    S(Ljava/util/Map;Ljava/lang/Object;Lorg/openide/util/Lookup;Ljavax/swing/Action;ZZ)V  #org/openide/awt/AlwaysEnabledAction
     (Ljava/util/Map;)V  fallback      java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object;  javax/swing/Action
 
     &(Ljava/util/Map;Ljavax/swing/Action;)V " key	 
 $ " % Ljava/lang/Object;
 ' ( ) * + org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V - org/openide/awt/ContextAction
 , /  0 �(Lorg/openide/awt/ContextAction$Performer;Lorg/openide/awt/ContextSelection;Lorg/openide/util/Lookup;Ljava/lang/Class;ZLorg/openide/awt/ContextAction$StatefulMonitor;)V
 2 3 4 5 6 org/openide/awt/GeneralAction context 7(Ljava/util/Map;Z)Lorg/openide/util/ContextAwareAction; 8 type
 2 : ; < 	readClass %(Ljava/lang/Object;)Ljava/lang/Class;
 > ? @ A B org/openide/util/Utilities actionsGlobalContext ()Lorg/openide/util/Lookup;
 2 D E F _context a(Ljava/util/Map;Ljava/lang/Class;Lorg/openide/util/Lookup;Z)Lorg/openide/util/ContextAwareAction; H SwingSelectedKey J K L M N #org/openide/util/ContextAwareAction getValue &(Ljava/lang/String;)Ljava/lang/Object; P 1org/openide/awt/GeneralAction$StateDelegateAction
 O  S +org/openide/awt/GeneralAction$BaseDelAction
 R  V selectionType
 2 X Y Z readSelection 6(Ljava/lang/Object;)Lorg/openide/awt/ContextSelection; \ 'org/openide/awt/ContextAction$Performer
 [ 	 _ ` a b c java/lang/Boolean TRUE Ljava/lang/Boolean; e surviveFocusChange
 _ g h i equals (Ljava/lang/Object;)Z k enableOnType
 2 m n < tryReadClass p enableOnActionProperty r enableOnProperty t java/lang/String v org/openide/awt/PropertyMonitor x enableOn
 u z  { G(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V } checkedOnProperty  checkedOnType � 	checkedOn � enabled
 u �  � &(Ljava/lang/Class;Ljava/lang/String;)V � delegate  K � org/openide/awt/StatefulAction
 � �  � �(Lorg/openide/awt/ContextAction$Performer;Lorg/openide/awt/ContextSelection;Lorg/openide/util/Lookup;Ljava/lang/Class;ZLorg/openide/awt/ContextAction$StatefulMonitor;Lorg/openide/awt/ContextAction$StatefulMonitor;)V	 2 � � � LOG Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level FINE Ljava/util/logging/Level; � BCreated stateful delegate for {0}, instance {1}, value monitor {2}
 � � � � � java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V �  org/openide/awt/ContextSelection
 � � � � valueOf 6(Ljava/lang/String;)Lorg/openide/awt/ContextSelection; � java/lang/IllegalStateException � java/lang/StringBuilder
 �  � $Cannot parse 'selectionType' value: 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 � � � � toString ()Ljava/lang/String;
 � �  � (Ljava/lang/String;)V � Cannot read 'type' value:  � java/lang/Class
 � � � � B org/openide/util/Lookup 
getDefault � java/lang/ClassLoader
 � � � � lookup %(Ljava/lang/Class;)Ljava/lang/Object;
 � � � � � java/lang/Thread currentThread ()Ljava/lang/Thread;
 � � � � getContextClassLoader ()Ljava/lang/ClassLoader;
 � � � � getClassLoader
 � � � � forName =(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class; � java/lang/Exception
 � �  � (Ljava/lang/Throwable;)V
  � � � extractCommonAttribute 5(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;
 � � � � getName
 � � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; Code LineNumberTable LocalVariableTable this Lorg/openide/awt/GeneralAction; callback h(Ljava/lang/String;Ljavax/swing/Action;Lorg/openide/util/Lookup;ZZ)Lorg/openide/util/ContextAwareAction; Ljava/lang/String; defaultDelegate Ljavax/swing/Action; Lorg/openide/util/Lookup; Z async StackMapTable MethodParameters alwaysEnabled %(Ljava/util/Map;)Ljavax/swing/Action; map Ljava/util/Map; 6(Ljava/util/Map;)Lorg/openide/util/ContextAwareAction; d .Lorg/openide/awt/GeneralAction$DelegateAction; �(Lorg/openide/awt/ContextAction$Performer;Lorg/openide/awt/ContextSelection;Lorg/openide/util/Lookup;Ljava/lang/Class;)Lorg/openide/util/ContextAwareAction; perf )Lorg/openide/awt/ContextAction$Performer; "Lorg/openide/awt/ContextSelection; dataType Ljava/lang/Class; LocalVariableTypeTable /Lorg/openide/awt/ContextAction$Performer<-TT;>; Ljava/lang/Class<TT;>; 	Signature �<T:Ljava/lang/Object;>(Lorg/openide/awt/ContextAction$Performer<-TT;>;Lorg/openide/awt/ContextSelection;Lorg/openide/util/Lookup;Ljava/lang/Class<TT;>;)Lorg/openide/util/ContextAwareAction; instanceReady ca %Lorg/openide/util/ContextAwareAction; Ljava/lang/Class<*>; bindContext >(Ljava/util/Map;Lorg/openide/util/Lookup;)Ljavax/swing/Action; c ao a Lorg/openide/awt/ContextAction; sel survive enableMonitor /Lorg/openide/awt/ContextAction$StatefulMonitor; checkMonitor 
enableType del o .Lorg/openide/awt/ContextAction$Performer<TT;>;! -org/openide/awt/ContextAction$StatefulMonitor |<T:Ljava/lang/Object;>(Ljava/util/Map;Ljava/lang/Class<TT;>;Lorg/openide/util/Lookup;Z)Lorg/openide/util/ContextAwareAction; obj r ((Ljava/lang/Object;)Ljava/lang/Class<*>; ex Ljava/lang/Exception; l Ljava/lang/ClassLoader; I(Ljava/util/Map;Ljavax/swing/Action;Ljava/lang/String;)Ljava/lang/Object; fo action name getLOG ()Ljava/util/logging/Logger; <clinit> 
SourceFile GeneralAction.java InnerClasses DelegateAction 	Performer StatefulMonitor StateDelegateAction BaseDelAction 0 2      � �        �   3     *� �    �   
    4  5 �        � �   	 � �  �   ~     *� � Y� 	�� 
Y*,+� �    �       <  =  ? �   4     " �      � �     5 �     e �     � �  �     �    "   �   5   e   �   	 � �  �   3     	� Y*� �    �       C �       	 � �   �    �   	 � �  �   k     !*�  � L� 
Y*+� M!,� #� &,�    �       G  H  I  J �        ! � �      �      �    �   	 5  �   r     � ,Y*+,-� .�    �       S �   *          V     5 �            	     
  �      V   5        	 5 �  �   0     *� 1�    �       W �        � �   �    �    5 6  �   �     5*7�  � 9M*,� =� CN-G� I � � OY*-� Q�� 
Y*-� �    �       [  \  ^ ! _ + a �   *    5 � �     5 �   )          )  �    � + � J �   	 �     	  �   p     *7�  � 9M� RY**,+� C� T�    �   
    f  g �         � �      5 �            �   	 �   5   
 E F  �  � 	   D*U�  � W:� [Y*� ]:� ^*d�  � f6::*j�  � l:		� +:	*o�  :
*q�  :� s� � 
� s� � uY	� sw*� y:*|�  :� s� (*~�  � l:� � uY� s�*� y:� >� uY�� �:*��  :� � � G� � � � uYG� �:� � ,Y,+� .:� 5� �Y,+� �:� �� ��� Y*SYSYS� ��    �   r    k  l  m ' n * o - p : q ? r B t L u V w k x ~ z � { � | � } � ~ � � � � � � � � � � � � � � � � �$ �A � �   �  �   � $ %     D � �    D   D 5 �   D �  7  -  ' �  *  -  :
 	 L � % 
 V � % $         D
  -  �   6 � B 
  � � � [   �  � (  6>� 1 , �    �     5       " 
 Y Z  �   z     6*� �� *� ��*� s� *� s� ��� �Y� �Y� ��� �*� �� �� ��    �       �  �  �  �  � �       6# %   �     �   #    ; <  �   �     &*� lL+� � �Y� �Y� ��� �*� �� �� ��+�    �       �  � 	 � $ � �       &# %    !$       !$  �    � $ � �   #     %  n <  �   �     J*� �� *� ��*� s� 8� �Ŷ �� �L+� 
� ˶ �L+� 	2� �L*� s+� ذM� �Y,� ޿�  4 = > �  �   2    �  �  �  �  � # � * � . � 4 � > � ? � H � �      ? 	&'   )()    J# %   �    �  �	I �� 	 �   #     %  �*  �   D     *,� �    �       � �        + �     , �    - �  �   +  ,  -   ./  �   .     � ��    �       � �        � �   0   �   $      2� � � ��    �       7 1   23   *  
 24  [ ,5   ,6 O 27  R 28 