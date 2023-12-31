����   4 �
      java/lang/Object <init> ()V	  	 
   org/openide/util/HelpCtx helpCtx Ljava/net/URL;	     helpID Ljava/lang/String;
      java/lang/Class getName ()Ljava/lang/String;
     (Ljava/lang/String;)V
      org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; ! "org/openide/util/HelpCtx$Displayer
  # $ % 	lookupAll )(Ljava/lang/Class;)Ljava/util/Collection; ' ( ) * + java/util/Collection iterator ()Ljava/util/Iterator; - . / 0 1 java/util/Iterator hasNext ()Z - 3 4 5 next ()Ljava/lang/Object;   7 8 9 display (Lorg/openide/util/HelpCtx;)Z
  ; < = hashCode ()I
 ? ; @ java/net/URL
 B ; C java/lang/String
  E F G getClass ()Ljava/lang/Class;
 ? I J K equals (Ljava/lang/Object;)Z
 B I N java/lang/StringBuilder
 M  Q HelpCtx[
 M S T U append -(Ljava/lang/String;)Ljava/lang/StringBuilder; W ]
 M Y Z  toString
 M \ T ] -(Ljava/lang/Object;)Ljava/lang/StringBuilder;	  _ ` a err Ljava/util/logging/Logger;	 c d e f g java/util/logging/Level FINE Ljava/util/logging/Level; i setHelpIDString: {0} on {1}
 k l m n o java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V q HelpID
 s t u v w javax/swing/JComponent putClientProperty '(Ljava/lang/Object;Ljava/lang/Object;)V	 c y z g FINEST
 k | } ~ 
isLoggable (Ljava/util/logging/Level;)Z � findHelp on  � java/lang/Exception
 � 
 k � n � C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V � findHelp on {0}
 k � n � @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V � !org/openide/util/HelpCtx$Provider � � � � 
getHelpCtx ()Lorg/openide/util/HelpCtx; � 1found help {0} through HelpCtx.Provider interface
 s � � � getClientProperty &(Ljava/lang/Object;)Ljava/lang/Object; � !found help {0} by client property
 � � � � � java/awt/Component 	getParent ()Ljava/awt/Container; � no luck, trying parent {0} � nothing found
 k � �  fine	  � � � DEFAULT_HELP Lorg/openide/util/HelpCtx;
  � � � findHelp 0(Ljava/awt/Component;)Lorg/openide/util/HelpCtx;
 � � � � � java/beans/Introspector getBeanInfo ((Ljava/lang/Class;)Ljava/beans/BeanInfo; � � � � � java/beans/BeanInfo getBeanDescriptor ()Ljava/beans/BeanDescriptor; 
 � � � � � java/beans/BeanDescriptor getValue &(Ljava/lang/String;)Ljava/lang/Object; � !java/beans/IntrospectionException � findHelp on {0}: {1} � org.openide.util.HelpCtx
 k � � � 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; � .DEFAULT_HELP (Ljava/net/URL;)V Code LineNumberTable LocalVariableTable this MethodParameters 
Deprecated RuntimeVisibleAnnotations Ljava/lang/Deprecated; (Ljava/lang/Class;)V clazz Ljava/lang/Class; LocalVariableTypeTable Ljava/lang/Class<*>; 	Signature (Ljava/lang/Class<*>;)V getHelp ()Ljava/net/URL; 	getHelpID d $Lorg/openide/util/HelpCtx$Displayer; StackMapTable base I #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; obj Ljava/lang/Object; other setHelpIDString -(Ljavax/swing/JComponent;Ljava/lang/String;)V comp Ljavax/swing/JComponent; h jc hid Ljava/awt/Component; .(Ljava/lang/Object;)Lorg/openide/util/HelpCtx; Ljava/beans/BeanDescriptor; v e #Ljava/beans/IntrospectionException; instance <clinit> 
SourceFile HelpCtx.java InnerClasses 	Displayer Provider 1       ` a    � �                �  �   O     *� *+� *� �    �       9  : 	 ;  < �        � �         �       �     �     �       �   O     *� *+� *� �    �       F  G 	 H  I �        � �         �         �  �   S     	*+� � �    �   
    T  U �       	 � �     	 � �  �       	 � �  �    �   �     �    � �     �    � �  �   /     *� �    �       [ �        � �    �   �   /     *� �    �       b �        � �    8 1  �   �     2�  � "� & L+� , � +� 2 �  M,*� 6 � �����    �       l ! m + n - p 0 q �     !  � �    2 � �   �    �  -�   < =  �        *� :<*� � *� � >�<*� � *� � A�<�    �       w  y  z  }  ~ ( � �       * � �    $ � �  �    �  �     �    J K  �   �     ]+� �*� D+� D� �+� M*� ,� � *� � *� ,� � H� �*� � ,� � � *� ,� � L� ��    �   * 
   �  �  �  �  �  � 8 � : � Y � [ � �        ] � �     ] � �   E � �  �    � $  �    �   �     �    Z   �   z     ?*� � � MY� OP� R*� � RV� R� X�� MY� OP� R*� � [V� R� X�    �       �  � # � �       ? � �   �    # �     �   	 � �  �   [     � ^� bh� Y+SY*S� j*p+� r�    �       �  �  � �        � �         �   	 �      	 � �  �  I     �� ^� x� {� )� ^� x� MY� O� R*� [� X� �Y� �� �� � ^� b�*� �*� e*� �� *� �� � L� ^� b�+� �+�*� s� +*� sL+p� �� BM,� � ^� b�,� �� Y,� �*� �K� ^� b�*� ����� ^�� �� ��    �   J    �  � 2 � > � B � I � S � _ � a � h � m � w � { � � � � � � � � � � � �   *  S  � �  m # � �  w  �     � � �   �    2". �    �   	 � �  �   �     c*� �� *� �� ��*� �� *� �� � �*� D� �� � L+�� �� BM,� � Y,� �� L� ^� b�� Y*SY+S� j� ��    C G �  �   2    �  �  �  �   � - � 7 � ; � D � G � H � _ � �   *  -  � �  7  �   H  � �    c � �   �   
 #B � �    �    �   �   F      *Ƹ ȳ ^� Y� MY� O� � R̶ R� X� � ��    �   
    &  ,  �    � �        �	 �  �	