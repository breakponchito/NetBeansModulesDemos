����   4 I
      java/lang/Object <init> ()V	  	 
   1org/openide/filesystems/MultiFileObject$VoidValue level I  java/lang/StringBuilder
    2org.openide.filesystems.MultiFileObject.VoidValue#
     append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
     (I)Ljava/lang/StringBuilder;
     toString ()Ljava/lang/String;     ! " java/io/ObjectOutput writeInt (I)V $ % & ' ( java/io/ObjectInput readInt ()I * java/io/Externalizable serialVersionUID J ConstantValue�윔��<� Code LineNumberTable LocalVariableTable this 3Lorg/openide/filesystems/MultiFileObject$VoidValue; MethodParameters writeExternal (Ljava/io/ObjectOutput;)V out Ljava/io/ObjectOutput; 
Exceptions < java/io/IOException readExternal (Ljava/io/ObjectInput;)V in Ljava/io/ObjectInput; B  java/lang/ClassNotFoundException 
SourceFile MultiFileObject.java InnerClasses G 'org/openide/filesystems/MultiFileObject 	VoidValue 0    )   + ,  -    .           "  0   F     
*� *� �    1      s t 	u 2       
 3 4     
    5           0   3     *� �    1   
   w x 2        3 4       0   A     � Y� � *� � � �    1      { 2        3 4    6 7  0   C     +*� �  �    1   
    
� 2        3 4      8 9  :     ; 5    8    = >  0   C     *+� # � �    1   
   � 
� 2        3 4      ? @  :     ; A 5    ?    C    D E   
   F H 