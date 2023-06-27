����   4L	      Forg/netbeans/modules/openide/filesystems/RecognizeInstanceFiles$FOItem fo $Lorg/openide/filesystems/FileObject;
  	 
   +org/openide/util/lookup/AbstractLookup$Pair <init> ()V	     EMPTY Ljava/lang/ref/Reference;	     ref
      java/lang/ref/Reference get ()Ljava/lang/Object;
      java/lang/Class 
isInstance (Ljava/lang/Object;)Z ! 
instanceOf
 # $ % & ' "org/openide/filesystems/FileObject getAttribute &(Ljava/lang/String;)Ljava/lang/Object; ) java/lang/String + ,
 ( - . / split '(Ljava/lang/String;)[Ljava/lang/String;
  1 2 3 loader ()Ljava/lang/ClassLoader;
  5 6 7 forName =(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
  9 : ; isAssignableFrom (Ljava/lang/Class;)Z =  java/lang/ClassNotFoundException
 ? @ A B C ?org/netbeans/modules/openide/filesystems/RecognizeInstanceFiles 
access$100 ()Ljava/util/logging/Logger;	 E F G H I java/util/logging/Level FINE Ljava/util/logging/Level; K java/lang/StringBuilder
 J 	 N could not load 
 J P Q R append -(Ljava/lang/String;)Ljava/lang/StringBuilder; T  for 
 # V W X getPath ()Ljava/lang/String;
 J Z [ X toString
 ] ^ _ ` a java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  c d e getType ()Ljava/lang/Class; g java/lang/Object
  i j k createInstanceFor I(Lorg/openide/filesystems/FileObject;Ljava/lang/Class;)Ljava/lang/Object; m java/lang/ref/WeakReference
 l o  p (Ljava/lang/Object;)V r instanceCreate
  t u v findTypeFor 7(Lorg/openide/filesystems/FileObject;)Ljava/lang/Class;
 ? x y z createInstance %(Ljava/lang/Class;)Ljava/lang/Object; |  java/lang/InstantiationException
 ~  � � � org/openide/util/Exceptions printStackTrace (Ljava/lang/Throwable;)V �  java/lang/IllegalAccessException � +java/lang/reflect/InvocationTargetException � java/lang/NoSuchMethodException
  � � � cast &(Ljava/lang/Object;)Ljava/lang/Object; � java/lang/Void
  � � � getClassName 8(Lorg/openide/filesystems/FileObject;)Ljava/lang/String;
 < � � X 
getMessage � 	.instance
 ( � � � endsWith (Ljava/lang/String;)Z
 ( � � � length ()I
 ( � � � 	substring (II)Ljava/lang/String;
 # � � X getName
 # � � � getFileSystem &()Lorg/openide/filesystems/FileSystem;
 � � � � � "org/openide/filesystems/FileSystem getDecorator +()Lorg/openide/filesystems/StatusDecorator;
 � � � � � java/util/Collections 	singleton #(Ljava/lang/Object;)Ljava/util/Set; � � � � � 'org/openide/filesystems/StatusDecorator annotateName 5(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String; � 1org/openide/filesystems/FileStateInvalidException	 E � � I WARNING
 � � � instanceClass
 � � � � � org/openide/util/BaseUtilities 	translate &(Ljava/lang/String;)Ljava/lang/String; � instanceClass was a 
 f � � e getClass
  �
 ] � � � warning (Ljava/lang/String;)V
 # � � � getAttributes ()Ljava/util/Enumeration; � � � � � java/util/Enumeration hasMoreElements ()Z � � �  nextElement
 ( � �  equals
 ( � � � indexOf (I)I � Cannot understand {0}
 ] � ` � @(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
 ( � � � replace (CC)Ljava/lang/String;
 f �
 f � � � hashCode
 � � � � � org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; � java/lang/ClassLoader
 � �  z lookup
  3 getClassLoader 	Signature -Ljava/lang/ref/Reference<Ljava/lang/Object;>; '(Lorg/openide/filesystems/FileObject;)V Code LineNumberTable LocalVariableTable this HLorg/netbeans/modules/openide/filesystems/RecognizeInstanceFiles$FOItem; MethodParameters x "Ljava/lang/ClassNotFoundException; xface Ljava/lang/String; c Ljava/lang/Class; r Ljava/lang/Object; LocalVariableTypeTable Ljava/lang/Class<*>; StackMapTable [Ljava/lang/String; (Ljava/lang/Class<*>;)Z 	creatorOf obj getInstance o type ex "Ljava/lang/InstantiationException; "Ljava/lang/IllegalAccessException; -Ljava/lang/reflect/InvocationTargetException; !Ljava/lang/NoSuchMethodException; f 
resultType Ljava/lang/Class<TT;>; U<T:Ljava/lang/Object;>(Lorg/openide/filesystems/FileObject;Ljava/lang/Class<TT;>;)TT; &Ljava/lang/Class<+Ljava/lang/Object;>; (()Ljava/lang/Class<+Ljava/lang/Object;>; clazz L(Lorg/openide/filesystems/FileObject;)Ljava/lang/Class<+Ljava/lang/Object;>; getId s getDisplayName 3Lorg/openide/filesystems/FileStateInvalidException; n 
attributes Ljava/util/Enumeration; attr name first I last +Ljava/util/Enumeration<Ljava/lang/String;>; other #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; hash l Ljava/lang/ClassLoader; 
access$000 n(Lorg/netbeans/modules/openide/filesystems/RecognizeInstanceFiles$FOItem;)Lorg/openide/filesystems/FileObject; x0 <clinit> ALorg/openide/util/lookup/AbstractLookup$Pair<Ljava/lang/Object;>; 
SourceFile RecognizeInstanceFiles.java InnerClasses FOItemJ &org/openide/util/lookup/AbstractLookup Pair 0      
                         Q     *� *� � *+� �          �  �  �  �	       
                ! ;   x  	   �*� � M,� 	+,� �*�  � "� (N-� n-*� ,:�66� U2:+� 0� 4� 8� �� 3:� >� D� JY� LM� O� OS� O*� � U� O� Y� \�����+*� b� 8�  A R V <    :    �  �  �  �  � # � A � Q � S � V � X � � � � � � �	   >  X .  A E   x !    �
     �   �        �    1 �  f�      f (  �  (B <� /�               P     *� � +� � �          �	       
          @      !     �     6*� � L+� +*� f� hL*� � M,� ,�+� *� lY+� n� +�      & 	       " $ (	 4	           6
    .     � $ f f�   j k   �     M*q� "M,� 3*� sN-� �-� wM�  N-� }� N-� }� N-� }� N-� }+,� � +,� �� �     {    {   & �   & �   . �   . �   6 �   6 �    N             #  & ' +  . / 3  6 7 ;"	   R       !  '  "  /  #  7  $    M%      M&   F           M&'    0 �  f �   #  f  {G �G �G �@ f   	%  &     (  d e    o     *� � sL+� +� ��      
   & '	       
           )     �  A    * 
 u v    �     %*� �L+� �+� 0� 4�M� >� D,� �,� \�     <       + , 	- 0 1 2 #3	            %%      +     �  (H <   %     , - X    q     #*� � UL+�� �� ++� ��� �d� �L+�         8 9 : !<	       #
    .     � ! ( / X    �     4*� � �L*� � �� �+*� � �� � L� M� >� �,� �,� \+�     # �       @ B  E #C $D 2F	      $  0    4
    ,1     � #   (  � 
 � �   �     �*ö "L+� (� +� (� Ű+� "� >� JY� L˶ O+� Ͷ ж O� Y� �*q� "L+� +� Ͷ а*� �M,� � � ,� � � (q� ����*� �M,[� �`>� � >� ��*� �,]� �6� 	,� �6� ,� �M,-.� �M,� �M,�      j   L M N O P *Q 6P 9T @U DV LX QY ZZ k\ mb rd {e f �i �j �k �o �p �s �t �w	   >  Q 23    �      �4  r J5  { A67  � )87      Q 29     �  f"�  �� �  (�         �     �     <+� �*� �+� ͥ �+� M*� ,� � *� � *� ,� � � ��      & 	  { | } ~  � 2� 8� :�	        <
     <   $:     � $      ;    <    � �    }     <h*� � *� � � `<�         � � � �	       
    =7     �    �     ;    <   
 2 3    \     � ��� �� �K*� 	�K*�         � � � �	      >?      �  �@A    /     *� �          �	       B   C     $      � lY� n� �          �    DE   FG      ?H  IK	