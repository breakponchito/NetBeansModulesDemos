����   4 u	      2org/openide/filesystems/Ordering$1ChildAndPosition val$logWarnings Z
  	 
   java/lang/Object <init> ()V	     child $Lorg/openide/filesystems/FileObject;	     position Ljava/lang/Number;  java/lang/Float  java/lang/Double
      java/lang/Number doubleValue ()D
    ! " compare (DD)I
  $ % & 	longValue ()J
 ( ) * + , java/lang/Integer valueOf (I)Ljava/lang/Integer;
  . / 0 equals (Ljava/lang/Object;)Z
 2 3 4 5 6  org/openide/filesystems/Ordering 
access$000 ()Ljava/util/logging/Logger;	 8 9 : ; < java/util/logging/Level WARNING Ljava/util/logging/Level; > ,Found same position {0} for both {1} and {2}
 @ A B C D "org/openide/filesystems/FileObject getPath ()Ljava/lang/String;
 F G H I J java/util/logging/Logger log A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
 @ L M D 
getNameExt
 O P Q R S java/lang/String 	compareTo (Ljava/lang/String;)I
  U R V 7(Lorg/openide/filesystems/Ordering$1ChildAndPosition;)I X java/lang/Comparable :(Lorg/openide/filesystems/FileObject;Ljava/lang/Number;Z)V Code LineNumberTable LocalVariableTable this 4Lorg/openide/filesystems/Ordering$1ChildAndPosition; MethodParameters 	Signature 9(Lorg/openide/filesystems/FileObject;Ljava/lang/Number;)V res I v1 J v2 o StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; (Ljava/lang/Object;)I ^Ljava/lang/Object;Ljava/lang/Comparable<Lorg/openide/filesystems/Ordering$1ChildAndPosition;>; 
SourceFile Ordering.java EnclosingMethod q r getOrder )(Ljava/util/Collection;Z)Ljava/util/List; InnerClasses ChildAndPosition      W                    Y  Z   ^     *� *� *+� *,� �    [       < 	 =  >  ? \         ] ^               _           `    a  R V  Z  g     �*� � � !*� � � +� � � +� � � *� � +� � � =� ,*� � #B+� � #7!�� � !�� � =� �*� � @+*� ;*� � '� -� -� 1� 7=� Y*� SY+� � ?SY*� � ?S� E*� � K+� � K� N�    [   * 
   E ( F = H E I N J f L j M l O � P � R \   >  :  b c  E ! d e  N  f e    � ] ^     � g ^  f \ b c  h    (�  
@�       � C _    g   i     j  A R k  Z   3     	*+� � T�    [       ; \       	 ] ^   _    g  i     j    `    l m    n o    2 p s   
     t  