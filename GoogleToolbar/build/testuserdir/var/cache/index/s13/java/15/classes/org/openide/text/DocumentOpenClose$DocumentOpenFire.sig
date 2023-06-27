����   4 f
      java/lang/Object <init> ()V	  	 
   3org/openide/text/DocumentOpenClose$DocumentOpenFire documentOpen 1Lorg/openide/text/DocumentOpenClose$DocumentLoad;	     $assertionsDisabled Z	      /org/openide/text/DocumentOpenClose$DocumentLoad reload  java/lang/AssertionError  +This task should not be posted for reloads.
     (Ljava/lang/Object;)V
     ! " "org/openide/text/DocumentOpenClose 
access$000 ()Ljava/util/logging/Logger;	 $ % & ' ( java/util/logging/Level FINER Ljava/util/logging/Level;
 * + , - . java/util/logging/Logger 
isLoggable (Ljava/util/logging/Level;)Z 0 /documentLoad(): Going to fireDocumentChange...

 * 2 3 4 finer (Ljava/lang/String;)V
  6 7  fireDocumentChange 9 java/lang/StringBuilder
 8  < ,documentLoad(): fireDocumentChange: success=
 8 > ? @ append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 8 B ? C (Z)Ljava/lang/StringBuilder; E 

 8 G H I toString ()Ljava/lang/String;
 K L M N O java/lang/Class desiredAssertionStatus ()Z Q java/lang/Runnable 4(Lorg/openide/text/DocumentOpenClose$DocumentLoad;)V Code LineNumberTable LocalVariableTable this 5Lorg/openide/text/DocumentOpenClose$DocumentOpenFire; MethodParameters run success StackMapTable ] java/lang/Throwable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; <clinit> 
SourceFile DocumentOpenClose.java InnerClasses DocumentOpenFire DocumentLoad 0    P              R  S   F     
*� *+� �    T      � � 	� U       
 V W     
    X        Y   S       �� � *� � � � Y� �� � #� )� � /� 1<*� � 5<� � #� )� Q� � 8Y� :;� =� AD� =� F� 1� 0M� � #� )� !� � 8Y� :;� =� AD� =� F� 1,��  0 9 f    T   2   � � &� .� 0� 7� 9� E� f� s� �� �� U       � V W   0 d Z   [    � 7    \� * \�  ^     _    `   S   4      � J� � � �    T      ~ [    @  a    b c       d    e 