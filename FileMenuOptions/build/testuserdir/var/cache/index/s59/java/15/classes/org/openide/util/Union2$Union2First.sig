����   4 O
      org/openide/util/Union2 <init> ()V	  	 
   #org/openide/util/Union2$Union2First first Ljava/lang/Object;  "java/lang/IllegalArgumentException
  
      java/lang/String valueOf &(Ljava/lang/Object;)Ljava/lang/String;
      java/lang/Object equals (Ljava/lang/Object;)Z
     hashCode ()I
  ! " # createFirst -(Ljava/lang/Object;)Lorg/openide/util/Union2;
  % & ' clone ()Lorg/openide/util/Union2; serialVersionUID J ConstantValue        	Signature TFirst; (Ljava/lang/Object;)V Code LineNumberTable LocalVariableTable this %Lorg/openide/util/Union2$Union2First; LocalVariableTypeTable 6Lorg/openide/util/Union2$Union2First<TFirst;TSecond;>; MethodParameters 
(TFirst;)V ()Ljava/lang/Object; 
Exceptions 	()TFirst; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; second 
()TSecond; hasFirst ()Z 	hasSecond toString ()Ljava/lang/String; obj StackMapTable ,()Lorg/openide/util/Union2<TFirst;TSecond;>; I $java/lang/CloneNotSupportedException ]<First:Ljava/lang/Object;Second:Ljava/lang/Object;>Lorg/openide/util/Union2<TFirst;TSecond;>; 
SourceFile Union2.java InnerClasses Union2First 0       ( )  *    +     -    . 
   /  0   b     
*� *+� �    1       `  a 	 b 2       
 3 4     
    5       
 3 6     
  .  7       -    8   9  0   A     *� �    1       f 2        3 4   5        3 6   :      -    ; <     =    > 9  0   D     � Y� �    1       k 2        3 4   5        3 6   :      -    ? <     =    @ A  0   >     �    1       p 2        3 4   5        3 6   <     =    B A  0   >     �    1       u 2        3 4   5        3 6   <     =    C D  0   D     *� � �    1       z 2        3 4   5        3 6   <     =       0   �     1*� � #+� � *� +� � � � � � +� � �    1        2       1 3 4     1 E   5       1 3 6   F    #@ 7    E   <     =       0   Z     *� � *� � � �    1       � 2        3 4   5        3 6   F    @ <     =    & '  0   D     *� �  �    1       � 2        3 4   5        3 6   -    G <     =  A & 9  0   A     *� $�    1       Z 2        3 4   5        3 6   :     H <     =    -    J K    L M   
    N 