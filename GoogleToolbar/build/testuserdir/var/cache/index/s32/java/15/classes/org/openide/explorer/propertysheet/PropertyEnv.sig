����   4L
      java/lang/Object <init> ()V	  	 
   .org/openide/explorer/propertysheet/PropertyEnv dummyDescriptor Ljava/beans/FeatureDescriptor;	     featureDescriptor	     STATE_VALID Ljava/lang/Object;	     state	     changeImmediate Z	     factory :Lorg/openide/explorer/propertysheet/InplaceEditor$Factory;	    !  editable
  
  $ % & setFeatureDescriptor !(Ljava/beans/FeatureDescriptor;)V
  ( ) * setBeans ([Ljava/lang/Object;)V	  , - . beans [Ljava/lang/Object; 0 "java/lang/IllegalArgumentException 2 %Cannot set FeatureDescriptor to null.
 / 4  5 (Ljava/lang/String;)V 
 8 9 : ; < java/beans/FeatureDescriptor getValue &(Ljava/lang/String;)Ljava/lang/Object; > java/lang/Boolean
 = @ A B booleanValue ()Z
  D E F setChangeImmediate (Z)V
  H I J getState ()Ljava/lang/Object;
  L M N equals (Ljava/lang/Object;)Z
  P Q R 
getSupport $()Ljava/beans/VetoableChangeSupport; 
 U V W X Y  java/beans/VetoableChangeSupport fireVetoableChange 9(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
  [ \ ] 	getChange $()Ljava/beans/PropertyChangeSupport;
 _ ` a b Y  java/beans/PropertyChangeSupport firePropertyChange d  java/beans/PropertyVetoException
 f g h i j org/openide/util/Exceptions findLocalizedMessage )(Ljava/lang/Throwable;)Ljava/lang/String;
 c l m n getLocalizedMessage ()Ljava/lang/String;
 p q r s t org/openide/DialogDisplayer 
getDefault ()Lorg/openide/DialogDisplayer; v $org/openide/NotifyDescriptor$Message x org/openide/NotifyDescriptor
 u z  { (Ljava/lang/Object;I)V
 p } ~  notify 2(Lorg/openide/NotifyDescriptor;)Ljava/lang/Object;
 � � � ~ � 8org/openide/explorer/propertysheet/PropertyDialogManager (Ljava/lang/Throwable;)V	  � � � LOG Ljava/util/logging/Logger;	 � � � � � java/util/logging/Level INFO Ljava/util/logging/Level; � java/lang/StringBuilder
 �  � Cannot change property: 
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 c � � � getPropertyChangeEvent "()Ljava/beans/PropertyChangeEvent;
 � � � � n java/beans/PropertyChangeEvent getPropertyName
 � � � n toString
 � � � � � java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  � � � getFeatureDescriptor  ()Ljava/beans/FeatureDescriptor;
 8 � � n getDisplayName
 � � � i � ,org/openide/explorer/propertysheet/PropUtils M(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
 U � � � addVetoableChangeListener &(Ljava/beans/VetoableChangeListener;)V
 _ � � � addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V
 U � � � removeVetoableChangeListener
 _ � � � removePropertyChangeListener	  � � � support "Ljava/beans/VetoableChangeSupport;
 U �  � (Ljava/lang/Object;)V	  � � � change "Ljava/beans/PropertyChangeSupport;
 _ � � � � � � 8org/openide/explorer/propertysheet/InplaceEditor$Factory getInplaceEditor 4()Lorg/openide/explorer/propertysheet/InplaceEditor;
  � � � getClass ()Ljava/lang/Class;
 � � � � n java/lang/Class getName � @
 � � � � � java/lang/System identityHashCode (Ljava/lang/Object;)I
 � � � � (I)Ljava/lang/StringBuilder; � [state=	  � �  STATE_NEEDS_VALIDATION �	  � �  STATE_INVALID �  � ,  � InplaceEditorFactory= � � � 	editable=
 � � � � (Z)Ljava/lang/StringBuilder;  , isChangeImmediate=
  B isChangeImmediate , featureDescriptor= null	 valid needs_validation invalid
 8 
 � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;
  ;org/openide/explorer/propertysheet/CustomEditorAccessorImpl register 
PROP_STATE Ljava/lang/String; ConstantValue PROP_CHANGE_IMMEDIATE Code LineNumberTable LocalVariableTable this 0Lorg/openide/explorer/propertysheet/PropertyEnv; create c(Ljava/beans/FeatureDescriptor;[Ljava/lang/Object;)Lorg/openide/explorer/propertysheet/PropertyEnv; fd env MethodParameters getBeans ()[Ljava/lang/Object; obj desc StackMapTable setState msg pve "Ljava/beans/PropertyVetoException; newState1 java/lang/String silentlySetState 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String; name newValue l #Ljava/beans/VetoableChangeListener; #Ljava/beans/PropertyChangeListener; registerInplaceEditorFactory =(Lorg/openide/explorer/propertysheet/InplaceEditor$Factory;)V result 2Lorg/openide/explorer/propertysheet/InplaceEditor;> 0org/openide/explorer/propertysheet/InplaceEditor setEditable 
isEditable sb Ljava/lang/StringBuilder; f #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> 
SourceFile PropertyEnv.java InnerClasses Factory Message !           S       �     �         6            - .         � �    � �                !     � �           d     "*� *� � *� � *� *� *� �          �  x  ~  �  �  � ! �       "    �!"    ^     � Y� "M,*� #,+� ',�          �  �  �  �        #       - .   $  %   	#   -   &'    /     *� +�          �             ) *    >     *+� +�      
    �  �              - . %    -    � �    /     *� �          �             % &    �     7+� � /Y1� 3�*+� *� � *� 6� 7M,� =� *,� =� ?� C�      "    �  �  �  �  � $ � + � 6 �      $ (     7      7)  *    '%   )   + �    �     X*� G+� K� �*� OS*� G+� T*+� *� ZS+� ^� -M,� eN-� ,� kN-� � o� uY-� y� |W� ,� ��   * - c    :    �  �  �  �  � * � - � . � 3 � 7 � < � @ � S � W �   *  3 $,  . )-.    X      X/  *    ` c�  c0� %   /    23        p*� G+� K� �*� OS*� G+� T*+� *� ZS+� ^� CN� �� �� �Y� ��� �-� �� �� �� �-� �*� �� � 
*� �� �:-,� ���   + . c    .      	   + . / R f n   4  f 4  / ?-.    p      p/     p5  *    ` c� . cF0� 	%   	/  5    I J    /     *� �                     � �    A     	*� O+� ��      
   + ,       	      	67 %   6    � �    A     	*� Z+� ��      
   4 5       	      	68 %   6    � �    A     	*� O+� ��      
   ; <       	      	67 %   6    � �    A     	*� Z+� ��      
   C D       	      	68 %   6     B    /     *� �         J             E F    >     *� �      
   Q R                %       " Q R    S     *� �� *� UY*� ȵ �*� İ         X Y \          *     " \ ]    S     *� �� *� _Y*� ϵ �*� ˰         c d g          *     9:    >     *+� �      
   t u                %         � �    q     *� � *� � � L� L+�         z { } �       ;<         ;< *   	 � =  ? F    >     *� �      
   � �              !  %    !    @ B    /     *� �         �            � n   �     Ļ �Y� �L+*� ֶ ڶ �W+߶ �W+*� � �W+� �W+*� � � � *� � � � �� �W+�� �W*� M,� +�� �,� � � ڶ �W+�� �W+�� �W+*� � �W+�� �W+*�� �W+� �W*� �N-� +-� �� �W� +� �W+� ��      b   � � � � $� +� ,� ;� L� P� W� \� `� s� z� �� �� �� �� �� �� �� �� ��   *    �     �AB  \ hC   � #  *   6 � ;   �  �N ��    �  �0� - �� < 8D    E   F     [      +� 
� �� � 8Y�� � ڸ� ���          e  l  s  u  � ' � * � G   HI     �=J	 u wK 	