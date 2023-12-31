����   4�  javax/swing/JOptionPane
      java/lang/Object <init> ()V 
 org/openide/NotifyDescriptor	 	    messageType I	 	    valid Z	 	    notificationLineSupport %Lorg/openide/NotificationLineSupport;	 	    noDefaultClose
 	    checkMessageValidity (Ljava/lang/Object;)V	 	    ! message Ljava/lang/Object;	 	 # $ % options [Ljava/lang/Object;	 	 ' (  
optionType	 	 * + , title Ljava/lang/String;	 	 . / ! value	 	 1 2 ! defaultValue	 	 4 5 6 changeSupport "Ljava/beans/PropertyChangeSupport; 8  java/beans/PropertyChangeSupport
 7 :  
 	 < =  
initialize
 	 ? @  getterCalled 	 C D E F G java/lang/Boolean TRUE Ljava/lang/Boolean;	 C I J G FALSE
 	 L M N firePropertyChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V P java/lang/String R javax/swing/JTextArea
 Q T  U (Ljava/lang/String;)V W Label.background
 Y Z [ \ ] javax/swing/UIManager getColor $(Ljava/lang/Object;)Ljava/awt/Color;
 Q _ ` a setBackground (Ljava/awt/Color;)V
 c d e f g javax/swing/BorderFactory createEmptyBorder ()Ljavax/swing/border/Border;
 Q i j k 	setBorder (Ljavax/swing/border/Border;)V
 Q m n o setLineWrap (Z)V
 Q q r o setWrapStyleWord
 Q t u o setEditable
 Q w x o setFocusable
 Q z { | getAccessibleContext )()Ljavax/accessibility/AccessibleContext; ~ %ACN_NotifyDescriptor_MessageJTextArea
 � � � � � org/openide/util/NbBundle 
getMessage 7(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
 � � � � U %javax/accessibility/AccessibleContext setAccessibleName � %ACD_NotifyDescriptor_MessageJTextArea
 � � � U setAccessibleDescription � javax/swing/JScrollPane
 � �  � (Ljava/awt/Component;)V
 � i � java/awt/Dimension
 � �  � (II)V
 � � � � setPreferredSize (Ljava/awt/Dimension;)V   � java/awt/Window � "java/lang/IllegalArgumentException � java/lang/StringBuilder
 �  � ,The message must not be a window. message = 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder;
 � � � � toString ()Ljava/lang/String;
 � T � �Message type must be one of the following: ERROR_MESSAGE, INFORMATION_MESSAGE, WARNING_MESSAGE, QUESTION_MESSAGE or PLAIN_MESSAGE.  � java/lang/Integer
 � �  � (I)V � rOption type must be one of the following: DEFAULT_OPTION, YES_NO_OPTION, YES_NO_CANCEL_OPTION or OK_CANCEL_OPTION. ( $
 � � % � � clone ()Ljava/lang/Object;	 	 � � % 	adOptions
 	 � �  setValueWithoutPCH / + � #org/openide/NotificationLineSupport
 � �  � !(Lorg/openide/NotifyDescriptor;)V � java/lang/IllegalStateException � +NotificationLineSupport wasn't created yet.
 � T	 	 � � , infoMsg	 	 � � , warnMsg	 	 � � , errMsg � infoNotification � warningNotification � errorNotification
 7 � � � addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
 7 � � � removePropertyChangeListener
 7 L 
 C � � � valueOf (Z)Ljava/lang/Boolean; � NTF_ErrorTitle � NTF_WarningTitle � NTF_QuestionTitle � NTF_InformationTitle � NTF_PlainTitle �  	 	  ! 
YES_OPTION	 	 ! 	NO_OPTION	 	 ! CANCEL_OPTION	 		
 ! 	OK_OPTION	 	 ! CLOSED_OPTION PROP_MESSAGE ConstantValue PROP_MESSAGE_TYPE PROP_OPTION_TYPE PROP_OPTIONS 
PROP_VALUE 
PROP_TITLE PROP_DETAIL detail 
PROP_VALID PROP_NO_DEFAULT_CLOSE PROP_ERROR_NOTIFICATION PROP_WARNING_NOTIFICATION PROP_INFO_NOTIFICATION DEFAULT_OPTION���� YES_NO_OPTION     YES_NO_CANCEL_OPTION    OK_CANCEL_OPTION    ERROR_MESSAGE INFORMATION_MESSAGE WARNING_MESSAGE QUESTION_MESSAGE    PLAIN_MESSAGE MAXIMUM_TEXT_WIDTH   d SIZE_PREFERRED_WIDTH  ^ SIZE_PREFERRED_HEIGHT   � N(Ljava/lang/Object;Ljava/lang/String;II[Ljava/lang/Object;Ljava/lang/Object;)V Code LineNumberTable LocalVariableTable this Lorg/openide/NotifyDescriptor; initialValue MethodParameters init StackMapTable< java/lang/Throwable isValid ()Z setValid newValid oldValid 
setMessage area Ljavax/swing/JTextArea; sp Ljavax/swing/JScrollPane; 
newMessage 
oldMessage setMessageType newType oldType getMessageType ()I setOptionType getOptionType 
setOptions ([Ljava/lang/Object;)V 
newOptions 
oldOptions 
getOptions ()[Ljava/lang/Object; setAdditionalOptions getAdditionalOptions newValue setValue oldValue getValue getDefaultValue setTitle newTitle oldTitle getTitle createNotificationLineSupport '()Lorg/openide/NotificationLineSupport; getNotificationLineSupport setInformationMessage msg setWarningMessage setErrorMessage getInformationMessage getWarningMessage getErrorMessage clearMessages listener #Ljava/beans/PropertyChangeListener; propertyName setNoDefaultClose isNoDefaultClose getTitleForType (I)Ljava/lang/String; <clinit> 
SourceFile NotifyDescriptor.java InnerClassesx *org/openide/NotifyDescriptor$ComposedInput ComposedInput{ &org/openide/NotifyDescriptor$QuickPick 	QuickPick~ &org/openide/NotifyDescriptor$InputLine 	InputLine� )org/openide/NotifyDescriptor$PasswordLine PasswordLine� &org/openide/NotifyDescriptor$Exception 	Exception� )org/openide/NotifyDescriptor$Confirmation Confirmation� $org/openide/NotifyDescriptor$Message Message ! 	    ,  ,     �  ,     �  ,     �  ,     �  ,     �  ,     �  ,      ,     A  ,     �  ,     �  ,     �  ,     �  !    !    !   
 !    !                !     " #     $ %       &     " '     $ (     ) *      +     , -     . /     0    !         (     $ %    � %    / !    2 !    + ,              � ,    � ,    � ,    5 6        &  1 2   �     E*� *� *� *� *� *+� *+� *� *� "*� &*,� )*� -*� 0�   3   :     � 	 �  �  �   " ( .	 3
 8 > D4   H    E56     E   !    E + ,    E (     E      E $ %    E7 ! 8        +   (      $  7    =  2   +      �   3      4       56    @  2   �     .<*YM�*� 3� *� 7Y*� 9� 3<,ç N,�-�� *� ;�          #     3   & 	       ! %# )$ -&4       .56    ,9  :    �  D;�  => 2   7     	*� >*� �   3   
   3 54       	56   ? o 2   �     +*� =*� *A� 	� B� � H� 	� B� � H� K�   3      = > 
? @ '? *B4        +56     +@    &A  :   V �   	  	 O�   	  	 O C� 	  	  	 O C�   	  	 O C C8   @   B  2  :     �*+� *� M+� O� v� QY+� O� SN-V� X� ^-� b� h-� l-� p-� s-� v-� y	}� � �-� y	�� � �� �Y-� �:� b� �� �Y^ �� �� �L*+� *�,+� K�   3   N   T U 
W Y Z &[ -\ 2] 7^ <_ A` Oa ]b gc od �e �h �i �j4   4   gCD  g EF    �56     �G !  
 �H ! :    � � 8   G      2   h     #+� �� � �Y� �Y� ��� �+� �� �� ���   3      m o "q4       #56     #   ! :    "8         � � 2   7     	*� >*� �   3   
   z |4       	56   I � 2   �     F� !� � � � � �Y�� ��*� =*� *�� �Y� �� �Y*� � �� K�   3      � � "� '� ,� E�4        F56     FJ   ' K  :    "8   J   LM 2   7     	*� >*� �   3   
   � �4       	56   N � 2   �     A� � � � � �Y�� ��*� &=*� &*�� �Y� �� �Y*� &� �� K�   3      � � � "� '� @�4        A56     AJ   " K  :    8   J   OM 2   7     	*� >*� &�   3   
   � �4       	56   PQ 2   ]     *� "M*+� "*�,+� K�   3      � � 
� �4        56     R %   S % 8   R   TU 2   Z     *� >*� "� *� "� �� ��*� "�   3      � � � �4       56  :     VQ 2   ]     *� �M*+� �*�,+� K�   3        
 4        56     R %   S % 8   R   WU 2   W     *� >*� �� *� Ŷ �� ���   3      ! # $ '4       56  :       �  2   >     *+� -�   3   
   / 04       56     X ! 8   X   Y  2   ]     *� -M*+� �*�,+� K�   3      ; < 
= >4        56     X !   Z ! 8   X   [ � 2   7     	*� >*� -�   3   
   H J4       	56   \ � 2   /     *� 0�   3      T4       56   ] U 2   ]     *� )M*+� )*�,+� K�   3      _ ` 
a b4        56     ^ ,   _ ! 8   ^   ` � 2   7     	*� >*� )�   3   
   l n4       	56   ab 2   ?     *� �Y*� ϵ *� �   3   
   { |4       56   cb 2   /     *� �   3      �4       56    d U 2   ~     )*� � � �YԷ ֿ*+� �*� �*� �*�+� K�   3      � � � � �  � (�4       )56     )e , :    8   e    f U 2   ~     )*� � � �YԷ ֿ*� �*+� �*� �*�+� K�   3      � � � � �  � (�4       )56     )e , :    8   e    g U 2   ~     )*� � � �YԷ ֿ*� �*� �*+� �*�+� K�   3      � � � � �  � (�4       )56     )e , :    8   e    h � 2   Q     *� � � �YԷ ֿ*� װ   3      � � �4       56  :      i � 2   Q     *� � � �YԷ ֿ*� ڰ   3      � � �4       56  :      j � 2   Q     *� � � �YԷ ֿ*� ݰ   3      � � �4       56  :      k  2   t     )*� � � �YԷ ֿ*� �*� �*� �*�� K�   3      � � � � �  � (�4       )56  :      � � 2   I     *� >*� 3+� �   3      � � �4       56     lm 8   l    � � 2   U     *� 3� *� 3+� �   3      � � 4       56     lm :    8   l    M N 2   k     *� 3� *� 3+,-� ��   3        4   *    56     n ,    Z !    X ! :    8   n  Z  X   o o 2   c     *� =*� *�� �� � K�   3        
 4        56          Z  8       p> 2   /     *� �   3      $4       56   qr 2   �     O�     K����      C   #   ;   +   3	� �	�� �	�� �	�� �	�� ���   3      - $/ ,2 45 <8 D; L>4       O    :    $8       s  2   `      8� �Y� �� �� �Y� ��� �Y� ��� �Y� ��� �Y� ���   3       �  �  � ! � , � t   uv   : w 	y z 	| } 	 	� 	� � 	� � 	� 	� 	� 	