����   4 U  org/openide/modules/Dependency
      java/lang/Object <init> ()V
  
   getType ()I	      ,org/openide/modules/Dependency$DependencyKey type I
     getName ()Ljava/lang/String;
      java/lang/String lastIndexOf (I)I	      name Ljava/lang/String;
  " # $ 	substring (II)Ljava/lang/String;
  & '  indexOf
  ) *  hashCode
  , - . equals (Ljava/lang/Object;)Z 0 java/lang/StringBuilder
 /  3 DependencyKey[
 / 5 6 7 append -(Ljava/lang/String;)Ljava/lang/StringBuilder; 9 ,
 / ; 6 < (I)Ljava/lang/StringBuilder; > ]
 / @ A  toString #(Lorg/openide/modules/Dependency;)V Code LineNumberTable LocalVariableTable codeName idx pkgName this .Lorg/openide/modules/Dependency$DependencyKey; d  Lorg/openide/modules/Dependency; StackMapTable MethodParameters o Ljava/lang/Object; 
SourceFile Dependency.java InnerClasses DependencyKey 0                    B  C  f     �*� *+� 	� *� �      }             F   }    +� M,/� >� *,� � O*,� !� � B+� :[� %>� � *� � "*� !� � *� � *+� � �    D   N   � � � 0� 5� <� A� I� S� V� \� d� i� m� v� �� �  � � E   >  5 ! F    <  G   d ) G   \ 1 H      � I J     � K L  M   & � 0     �  � �   �  N    K    *   C   2     *� � (�    D       E        I J    - .  C   k     ,+� � &+� � *� � +� +� � *� � � �    D       E       , I J     , O P  M    *@ N    O    A   C   R     (� /Y� 12� 4*� � 48� 4*� � :=� 4� ?�    D       E       ( I J    Q    R S   
    T 