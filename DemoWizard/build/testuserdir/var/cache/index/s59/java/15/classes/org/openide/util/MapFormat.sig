����   4
      java/text/Format <init> ()V
  	 
   java/util/Locale 
getDefault ()Ljava/util/Locale;	      org/openide/util/MapFormat locale Ljava/util/Locale;  {	     ldel Ljava/lang/String;  }	     rdel	     ! throwex Z	  # $ ! 
exactmatch
  & ' ( setMap (Ljava/util/Map;)V
  *  (
  , - . format &(Ljava/lang/Object;)Ljava/lang/String;	  0 1 2 argmap Ljava/util/Map; 4 5 6 7 8 java/util/Map get &(Ljava/lang/Object;)Ljava/lang/Object; : java/lang/StringBuffer
 9 	  = > ? offsets [I A java/lang/String	  C D E 	arguments [Ljava/lang/String;	  G H I 	maxOffset I
 @ K L M indexOf (Ljava/lang/String;I)I
 @ O P Q length ()I S "java/lang/IllegalArgumentException
 U V W X Y org/openide/util/NbBundle 	getBundle -(Ljava/lang/Class;)Ljava/util/ResourceBundle; [ MSG_TooManyArguments
 ] ^ _ ` a java/util/ResourceBundle 	getString &(Ljava/lang/String;)Ljava/lang/String;
 R c  d (Ljava/lang/String;)V f java/lang/StringBuilder
 e  i MSG_UnmatchedBraces
 e k l m append -(Ljava/lang/String;)Ljava/lang/StringBuilder; o  
 e q l r (I)Ljava/lang/StringBuilder;
 e t u v toString ()Ljava/lang/String;
 @ x y z 	substring (II)Ljava/lang/String;
 9 | l } ,(Ljava/lang/String;)Ljava/lang/StringBuffer;
 9 O
 @ � y � (I)Ljava/lang/String;
 9 t � java/lang/Number
 � � � � � java/text/NumberFormat getInstance ,(Ljava/util/Locale;)Ljava/text/NumberFormat;
 � , � java/util/Date � java/text/DateFormat
 � � � � getDateTimeInstance ,(IILjava/util/Locale;)Ljava/text/DateFormat;
 � ,
 � t � java/lang/Object
  � � a processPattern
  � � � 
processKey &(Ljava/lang/String;)Ljava/lang/Object;
  � � . formatObject
 @ � � � lastIndexOf (Ljava/lang/String;)I � MSG_FMT_ObjectForKey � java/lang/Integer
 � c
 � � � - � java/text/MessageFormat 9(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
  � � a parse
 9 c 4 � � � keySet ()Ljava/util/Set; � � � � � java/util/Set iterator ()Ljava/util/Iterator; � � � � � java/util/Iterator hasNext ()Z � � � � next ()Ljava/lang/Object;
 9 � � � replace .(IILjava/lang/String;)Ljava/lang/StringBuffer; BUFSIZE ConstantValue   � serialVersionUID J�2�-��� 	Signature $Ljava/util/Map<Ljava/lang/String;*>; Code LineNumberTable LocalVariableTable this Lorg/openide/util/MapFormat; LocalVariableTypeTable MethodParameters '(Ljava/util/Map<Ljava/lang/String;*>;)V 5(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String; pattern temp key ridx lidx 
newPattern idx offnum outpat Ljava/lang/StringBuffer; StackMapTable 
Exceptions obj Ljava/lang/Object; ](Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer; newkey newsubst 
lessgreedy 	fromright offidx i pat result fpos Ljava/text/FieldPosition; 
lastOffset parseObject ?(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object; text status Ljava/text/ParsePosition; it_key it_obj it_idx source sbuf key_it Ljava/util/Iterator; (Ljava/util/Iterator<Ljava/lang/String;>; "willThrowExceptionIfKeyWasNotFound !setThrowExceptionIfKeyWasNotFound (Z)V flag isExactMatch setExactMatch getLeftBrace setLeftBrace 	delimiter getRightBrace setRightBrace getMap ()Ljava/util/Map; map 
SourceFile MapFormat.java !       � I  �    �  � �  �    �                 1 2  �    �  > ?    D E    H I      !    $ !      (  �   �     '*� *� � *� *� *� *� "*+� %�    �   "    \  <  ?  B  Q  T ! ] & ^ �       ' � �     ' D 2  �       ' D �  �    D   �    � 	 - �  �   Q     � Y+� )M,*� +�    �   
    j 	 l �         �       D 2  	  � �  �   	 �   D    � �  �   ?     *� /+� 3 �    �       � �        � �      �   �    �    � a  �  �     �=>� 9Y� ;:* ��
� <* �� @� B*� F6+*� � J6� �+*� *� � N`� J6� �� � RY� TZ� \� b�� 3*� "� r� RY� eY� g� Th� \� jn� j� p� s� b�+� w� {W*� <� ~O*� B+*� � N`� wS*� � N`=*Y� F`� F��E+� � {W� ��    �   f    �  �  �  �  �   � % � ( � 3 � 8 � L � V � \ � h � m � t � � � � � � � � � � � � � � � � � � � �   H  ( � � I  3 � � I    � � �     � �    � � I   � � I   � � �  �    � % 9� B4� E �     R �    �    � .  �   �     ?+� �+� �� *� � �+� ��+� �� *� � �+� ��+� @� +� @�+� ��    �   & 	   �  �  �  �  �   � . � 5 � : � �       ? � �     ? � �  �     �    �    - �  �  � 	   D*+� @� �:66*� F� *� <.6,*� <.� w� {W6*� B2:� N� **� �� �:	� ,*� � {W,*� � {W� �	� i� eY� g*� � j� j� s:

*� � �6� A
*� � N`� :**� �� �:� � eY� g
� w� j� j� s:		� N*� � (� RY� T�� \� �Y� �Y� �S� �� b�� eY� g*� � j� j*� � j� s:	,	� {W����,� � {W,�    �   z    � 
 �  �  � " � 5 � 9 � B � J � Y � b  k n s	 �
 � � � � � � � � �
)#0 �6&B( �   �  V  �  	 � - �   � ! �   � N �  
 � C � I  " � I  B � �   n � �  	 & � I   D � �    D � �   D � �   D � �  
: �   7 � I  �   " �  @� H @�  @� j0� �  �    �   �   �    � �  �   D     *+� ��    �      0 �         � �      �      � �  �   	 �   �    � a  �  T     �� 9Y+� �M*� /� � � � N-� � � l-� � � @:**� /� 3 � �:6,� ��� J6� /,� N`� eY� g*� � j� j*� � j� s� �W������,� ��    �   2   : 	; @ !A ,B =C @F PH UI �O �P �R �   H  , [ �   = J �   @ G � I    � � �     �    	 � �   w  �      w  �    �  9 �� ' @ @� @�  �        �  �   /     *� �    �      [ �        � �     �   >     *� �    �   
   d e �        � �      !  �      	 �  �   /     *� "�    �      m �        � �   
  �   >     *� "�    �   
   v w �        � �      !  �       v  �   /     *� �    �      } �        � �    d  �   >     *+� �    �   
   � � �        � �        �       v  �   /     *� �    �      � �        � �    d  �   >     *+� �    �   
   � � �        � �        �        �   /     *� /�    �      � �        � �    ' (  �   P     *+� /�    �   
   � � �        � �      2  �        �  �      �    �    