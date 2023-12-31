����   4K
      org/openide/actions/ToolsAction getActionName ()Ljava/lang/String;
   	 
 generate '(Ljavax/swing/Action;Z)Ljava/util/List;
      %org/openide/util/actions/SystemAction <init> ()V  java/lang/Long�������
     gl &(J)Lorg/openide/actions/ToolsAction$G;
     initGl	     taskGl &Ljava/util/concurrent/ScheduledFuture;	 ! " # $ % java/util/concurrent/TimeUnit MILLISECONDS Ljava/util/concurrent/TimeUnit; ' ( ) * + $java/util/concurrent/ScheduledFuture get 4(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object; - !org/openide/actions/ToolsAction$G / %java/util/concurrent/TimeoutException 1 java/lang/InterruptedException 3 java/lang/Exception 5 java/lang/IllegalStateException
 4 7  8 (Ljava/lang/Throwable;)V
 : ; < = > !org/openide/util/RequestProcessor 
getDefault %()Lorg/openide/util/RequestProcessor;
 , 
 : A B C schedule g(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
  E F  
initialize H org/openide/util/HelpCtx
 G J  K (Ljava/lang/Class;)V M &org/openide/actions/ToolsAction$Inline
 L O  P (Ljavax/swing/Action;)V R %org/openide/actions/ToolsAction$Popup
 Q O	  U V W $assertionsDisabled Z Y java/lang/AssertionError
 X  \ .org/openide/actions/ToolsAction$DelegateAction
 [ ^  _ =(Lorg/openide/actions/ToolsAction;Lorg/openide/util/Lookup;)V a 	CTL_Tools
 c d e f g org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 i j k = l !org/openide/actions/ActionManager %()Lorg/openide/actions/ActionManager; n java/util/ArrayList
 m 
 i q r s getContextActions *()[Lorg/openide/util/actions/SystemAction;
 u v w x y java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List; { | } ~  java/util/List addAll (Ljava/util/Collection;)Z { � � � isEmpty ()Z �  
  �  � %()Lorg/openide/actions/ToolsAction$G;	 , � � � result  Lorg/openide/util/Lookup$Result;
 � � � � � org/openide/util/Lookup$Result allItems ()Ljava/util/Collection; � � � � � java/util/Collection iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext � � � � next ()Ljava/lang/Object; � org/openide/util/Lookup$Item
 � � � � getInstance � javax/swing/Action
 � � �  getId � [^/]*$
 � � � � � java/lang/String replaceFirst 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
 � � � � equals (Ljava/lang/Object;)Z { � � � add
  � � � getToolActions ()Ljava/util/List; { � � � size ()I
 m �  � (I)V �  org/openide/util/Lookup$Provider � � � � 	getLookup ()Lorg/openide/util/Lookup; { � � #org/openide/util/ContextAwareAction � � � � createContextAwareInstance /(Lorg/openide/util/Lookup;)Ljavax/swing/Action; � (org/openide/util/actions/Presenter$Popup � 'org/openide/util/actions/Presenter$Menu � � � � 	isEnabled � � � � getMenuPresenter ()Ljavax/swing/JMenuItem; � � � � getPopupPresenter � javax/swing/JMenuItem
 � 
 � � � � � org/openide/awt/Actions connect /(Ljavax/swing/JMenuItem;Ljavax/swing/Action;Z)V � java/lang/SecurityException
 � 
 � � � � � java/lang/Class desiredAssertionStatus serialVersionUID J ConstantValueD�Lͱ 	Signature KLjava/util/concurrent/ScheduledFuture<Lorg/openide/actions/ToolsAction$G;>; Code LineNumberTable LocalVariableTable this !Lorg/openide/actions/ToolsAction; ex 'Ljava/util/concurrent/TimeoutException;  Ljava/lang/InterruptedException; Ljava/lang/Exception; timeOut StackMapTable MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getName 
getHelpCtx ()Lorg/openide/util/HelpCtx; actionPerformed (Ljava/awt/event/ActionEvent;)V ev Ljava/awt/event/ActionEvent; actionContext Lorg/openide/util/Lookup; action Ljavax/swing/Action; where Ljava/lang/String; item Lorg/openide/util/Lookup$Item; am #Lorg/openide/actions/ActionManager; arr Ljava/util/List; pref LocalVariableTypeTable 4Lorg/openide/util/Lookup$Item<Ljavax/swing/Action;>; &Ljava/util/List<Ljavax/swing/Action;>; (()Ljava/util/List<Ljavax/swing/Action;>; lookup mi Ljavax/swing/JMenuItem; isPopup isMenu a toolsAction forMenu actions list 	separator firstItemAdded )Ljava/util/List<Ljavax/swing/JMenuItem;>;- org/openide/util/Lookup @(Ljavax/swing/Action;Z)Ljava/util/List<Ljavax/swing/JMenuItem;>; setModel *(Lorg/openide/actions/ToolsAction$Model;)V m 'Lorg/openide/actions/ToolsAction$Model; 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; 
access$100 x0 x1 
access$300 <clinit> 
SourceFile ToolsAction.java InnerClasses G Inline Popup DelegateAction Result Item ProviderF "org/openide/util/actions/Presenter MenuI %org/openide/actions/ToolsAction$Model Model !    � � �   � �  �    � 
    �    � V W        �   /     *� �    �       F �        � �     �  �          � �    �       M     �   �     (� � �  � & � ,�M�M���M� � 4Y,� 6�     .    0    2  �   & 	   P  S  T  U  V  W  X  Y  Z �   *    � �    �     �    ( �      O .B 0C 2      *    �   D      � � � 9� ,Y� ?	�  � @� �    �       `  a  c      F   �   3     *� D�    �   
    g  i �        � �            �   .     � �    �       o �        � �         	  �   4     
� GY� I�    �       v �       
 � �          � �  �   3     	� LY*� N�    �       } �       	 � �          � �  �   3     	� QY*� S�    �       � �       	 � �         
  �   P     � T� � XY� Z��    �   
    �  � �        � �                       � �  �   >     
� [Y*+� ]�    �       � �       
 � �     
             
    �          `� b�    �       �  � �  �  �     �� hK� mY� oL+*� p� t� z W+� � � � �M� �� �� �� � N-� � � R-� � � �:� �� �:� ���� ���� �:,� ,� �� +� � WM+� � W���+�    �   >    �  �  �  � * � M � W � \ � _ � m � z � � � � � � � � � �   >  W 7  m !  M A   �    �  * i      M A   �    7 � ' i {A ��  � �� % � �� " ��   i { �   �    
 	 
  �      $� �M� mY,� � � �N66*� ƙ *� ƹ � :� :,� � :� � � �� � � �:� � ͙ � �� � :� � �6� �� �6	� �6
� 
� � 	� 
���	� ���� � � r� 
� � չ � :� >� 	� � ӹ � :� &
��V	��Q� �Y� �:� � � �� -� � W6-� � W6��-�    �   �     �  �  �  �  �  � - � 0 � N � [ � i � n � s � y � � � � � � � � � � � � � � � � � � � � � � � � � � � � �" � �   �  *   �  !  �  !  � , !  � �" W 	 � �# W 
 N �$   $%    $& W   '  (  ) W  * W  0 �       '  (+    � � -  � { {  � ,�  �� 0 �� !�   � { {, � � �  � ��    � { {, � � �  � ��   � { {, �  �    	%  &   �   . 	/0  �   2     � �Y� �    �       � �       12     1  3    4    5  6 
  �   :     *� �    �       F �       7     8 W 9   �         � �    �       F :   �   4      � � � � T�    �       F    @ ;   <=   R 
 , > 
 L ?  Q @  [ A  �,B	 �,C	 �,D	 �E@	 �EG	H J	