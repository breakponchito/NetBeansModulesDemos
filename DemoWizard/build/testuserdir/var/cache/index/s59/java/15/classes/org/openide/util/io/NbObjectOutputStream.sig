����   4*
      java/io/ObjectOutputStream <init> (Ljava/io/OutputStream;)V  java/util/ArrayList
  
   (I)V	      (org/openide/util/io/NbObjectOutputStream serializing Ljava/util/List;
     enableReplaceObject (Z)Z  java/lang/SecurityException  java/io/IOException
     toString ()Ljava/lang/String;
      (Ljava/lang/String;)V
  " # $ 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; & java/awt/Image
  ( ) * replaceObject &(Ljava/lang/Object;)Ljava/lang/Object; , java/io/ByteArrayOutputStream
 + 

  
  0 1 2 writeObject (Ljava/lang/Object;)V
  4 5 6 flush ()V
 + 8 9 6 close ; java/lang/Exception = > ? @  java/io/ObjectOutput writeInt B !org/openide/util/io/SafeException
 A D  E (Ljava/lang/Exception;)V
 + G H I size ()I
 + K L M toByteArray ()[B = O P Q write ([B)V
  S T U annotateClass (Ljava/lang/Class;)V
 W X Y Z [ java/lang/Class isArray ()Z
 W ] ^ [ isInterface ` a b c d java/util/List add (Ljava/lang/Object;)Z
  f g h isSerialVersionUIDDeclared (Ljava/lang/Class;)Z
 W j k h isAssignableFrom
 W m n  getName	  p q r alreadyReported Ljava/util/Set; t a u java/util/Set w java/util/HashSet
 v y  6 { java/lang/StringBuffer } Serializable class 
 z 
 z � � � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � F does not declare serialVersionUID field. Encountered while storing: [ ` � � � iterator ()Ljava/util/Iterator; � � � � [ java/util/Iterator hasNext � � � � next ()Ljava/lang/Object; � ,  � ?] See also http://www.netbeans.org/issues/show_bug.cgi?id=19915 � InstanceDataObject.current.file
 � � � � � java/lang/System getProperty &(Ljava/lang/String;)Ljava/lang/String;
 � � � � I java/lang/String length �  [may have been writing  � ]
 � � � � � java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;
 z 
 � � �   warning	  � � � examinedClasses Ljava/util/Map; � � � � * java/util/Map get � java/lang/Boolean � java.util.HashSet
 � � � d equals � java.util.ArrayList
 W � � [ isEnum � java.lang.Enum	 � � � � TRUE Ljava/lang/Boolean;	 � � � � FALSE
 W � � � getDeclaredFields ()[Ljava/lang/reflect/Field;
 � m � java/lang/reflect/Field � serialVersionUID � � � � put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
 � � � [ booleanValue � org/openide/util/WeakSet
 � y � java.lang.Exception � java.io.IOException � java.util.TreeSet � java.awt.geom.AffineTransform � java/util/WeakHashMap
 � 
 SVUID Ljava/lang/String; ConstantValue 	Signature #Ljava/util/Set<Ljava/lang/String;>; 6Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>; #Ljava/util/List<Ljava/lang/Class;>; Code LineNumberTable LocalVariableTable ex Ljava/lang/SecurityException; this *Lorg/openide/util/io/NbObjectOutputStream; os Ljava/io/OutputStream; StackMapTable � java/io/OutputStream 
Exceptions MethodParameters obj Ljava/lang/Object; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; writeSafely +(Ljava/io/ObjectOutput;Ljava/lang/Object;)V oos exc Ljava/lang/Exception; oo Ljava/io/ObjectOutput; bos Ljava/io/ByteArrayOutputStream; java/lang/Object c Ljava/lang/Class; serializingUniq b Ljava/lang/StringBuffer; it Ljava/util/Iterator; first Z file cl 	classname LocalVariableTypeTable "Ljava/util/Set<Ljava/lang/Class;>; 'Ljava/util/Iterator<Ljava/lang/Class;>; i I flds [Ljava/lang/reflect/Field; clazz okay# <clinit> 
SourceFile NbObjectOutputStream.java !       � �  �    �  q r  �    � 
 � �  �    �     �    �      �   �     0*+� *� Y2� 	� *� W� M� Y,� � ,� !� ��       �       @  9  C  F  D  E / G �        � �    0 � �     0 � �  �    �    �            �    ) *  �   T     +� %� �*+� '�    �       N  O 	 U �        � �       �    	                  	  �   �     J� +Y ȷ -M� Y,� .N-+� /-� 3,� 7� N*� < � AY-� C�*,� F� < *,� J� N �   ! $ :  �   2    a  d  e  f  g ! m $ h % k , l 5 o ? p I q �   4    �  % 	
    J     J   ?  �    � $  = +  :         	      T U  �  a     *+� R+� V� �+� \� �*� +� _ W+� e� �+� i� �+� lM� o,� s � �� vY� xN� zY|� ~:,� W�� W*� � � :6� � � A� � � W:+� ,-� s � !� 	6� �� W� l� W����� W�� �:� #� �� �� W� W�� W� l� �� �� ��    �   � "   u  w  x  {  ~  �   � ' � ( � 1 � 2 � 7 � C � K � V � ] � e � p � s � } � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �   \ 	 � /  K � r  V �  p �  s �  � 5 �     � �       7 � �      K �  p �  �   A 	� @   W � t z �  � 1 W� 
� 3 ��    W �                     g h  �  )     �*� lL� �+� � � �M,� i+�� �� +�� �� *� Ú +ƶ �� 
� �M� 2� �M*� �N6-�� -2� �ֶ �� 
� �M� 	���� �*� l,� � W,� ܬ    �   >    �  �  �  � ) � 8 � ? � C � H � R � a � e � h � n � | � �   4  K # !  H &"#    �$    | �   o% �  �    � 8 � �� &�    $   ' 6  �   p      D� �Y� � o� o� s W� o� s W� o� s W� o� s W� �Y �� � ��    �       . 
 2  3   4 + 5 6 8 (   )