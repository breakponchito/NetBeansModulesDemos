����   4 
      Oorg/netbeans/modules/openide/nodes/NodesRegistrationSupport$AbstractRegistrator <init> (Ljava/lang/Class;)V  java/util/LinkedHashSet
  
   ()V	      =org/netbeans/modules/openide/nodes/NodesRegistrationSupport$3 lookupResult  Lorg/openide/util/Lookup$Result;
      org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection;      java/util/Collection iterator ()Ljava/util/Iterator;    ! " # java/util/Iterator hasNext ()Z  % & ' next ()Ljava/lang/Object; ) Porg/netbeans/modules/openide/nodes/NodesRegistrationSupport$BeanInfoRegistration	 ( + , - 
searchPath Ljava/lang/String; / 0 1 2 3 java/util/Set add (Ljava/lang/Object;)Z
 5 6 7 8 9 ;org/netbeans/modules/openide/nodes/NodesRegistrationSupport 
access$100 ()Ljava/util/List; / ; < = addAll (Ljava/util/Collection;)Z / ? @ A size ()I C java/lang/String / E F G toArray (([Ljava/lang/Object;)[Ljava/lang/Object; I [Ljava/lang/String;
 K L M N O java/beans/Introspector setBeanInfoSearchPath ([Ljava/lang/String;)V
 K Q R S getBeanInfoSearchPath ()[Ljava/lang/String;
 U V W X Y java/util/Arrays asList %([Ljava/lang/Object;)Ljava/util/List;
 5 [ \ ] 
access$102 "(Ljava/util/List;)Ljava/util/List; Code LineNumberTable LocalVariableTable this ?Lorg/netbeans/modules/openide/nodes/NodesRegistrationSupport$3; cls Ljava/lang/Class; MethodParameters register biReg RLorg/netbeans/modules/openide/nodes/NodesRegistrationSupport$BeanInfoRegistration; it Ljava/util/Iterator; newPath Ljava/util/Set; LocalVariableTypeTable hLjava/util/Iterator<Lorg/netbeans/modules/openide/nodes/NodesRegistrationSupport$BeanInfoRegistration;>; #Ljava/util/Set<Ljava/lang/String;>; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; init 
SourceFile NodesRegistrationSupport.java EnclosingMethod x  registerPropertyEditors InnerClasses AbstractRegistrator | org/openide/util/Lookup Result BeanInfoRegistration               ^   :     *+� �    _       o `        a b      c d  e    c     f   ^   �     V� Y� 	L*� � �  M,�  � ,� $ � (N+-� *� . W���+� 4� : W++� > � B� D � H� J�    _   "    s  t  u ( v 3 w 6 x @ y U z `   *  (  g h   ! i j    V a b    N k l  m      ! i n   N k o  p    �  / �   q     r     s   ^   L     � 4� � P� T� ZW�    _       ~    � `        a b   p     q     r    t    u v    5 w y   "   5 z
         { }	 ( 5 ~ 	