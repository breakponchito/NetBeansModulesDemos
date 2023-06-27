����   4 �
      5org/openide/util/RequestProcessor$TopLevelThreadGroup <init> ()V
   	 java/lang/Object
      java/security/AccessController doPrivileged 4(Ljava/security/PrivilegedAction;)Ljava/lang/Object;  java/lang/ThreadGroup  sun.awt.AppContext
      java/lang/Class forName %(Ljava/lang/String;)Ljava/lang/Class;  getAppContext
     	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method; ! getThreadGroup
 # $ % & ' java/lang/reflect/Method invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; ) java/lang/Exception
 + , - . / !org/openide/util/RequestProcessor logger ()Ljava/util/logging/Logger;	 1 2 3 4 5 java/util/logging/Level FINE Ljava/util/logging/Level; 7  Cannot access sun.awt.AppContext
 9 : ; < = java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V	  ? @ A $assertionsDisabled Z C java/lang/AssertionError
 B 	 1 F G 5 WARNING I 5AppContext group {0} differs from originally used {1}
 9 K < L A(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
 N O P Q R java/lang/Thread currentThread ()Ljava/lang/Thread;
 N T ! U ()Ljava/lang/ThreadGroup;
  W X U 	getParent
  Z [ U run
  ] ^ _ desiredAssertionStatus ()Z a java/security/PrivilegedAction Code LineNumberTable LocalVariableTable this 7Lorg/openide/util/RequestProcessor$TopLevelThreadGroup; getTopLevelThreadGroup 
appContext Ljava/lang/Class; instance Ljava/lang/reflect/Method; getTG 	exception Ljava/lang/Exception; orig Ljava/lang/ThreadGroup; nuova LocalVariableTypeTable Ljava/lang/Class<*>; StackMapTable current #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; ()Ljava/lang/Object; ((Lorg/openide/util/RequestProcessor$1;)V x0 %Lorg/openide/util/RequestProcessor$1; <clinit> 	Signature KLjava/lang/Object;Ljava/security/PrivilegedAction<Ljava/lang/ThreadGroup;>; 
SourceFile RequestProcessor.java InnerClasses TopLevelThreadGroup � #org/openide/util/RequestProcessor$1 0    `  @ A        b   /     *� �    c       d        e f    g U  b  S     �*� 
� LM� N-� � :- � � :� � "� � "� M� N� *� 06-� 8+�� >� ,� � BY� D�,+� � *� EH� Y,SY+S� J,�  
 ? B (  c   :     
! " # ($ ?( B% C& O' Q* c, h- / d   H   / h i   # j k  (  l k  C  m n    � e f    y o p  
 w q p  r      / h s  t    � B      (  [ U  b   g     � M� SL+� V� +� VL���+�    c      4 6 7 : d        e f     u p  t   	 �   v     w  A [ x  b   /     *� Y�    c       d        e f   v     w     y  b   9     *� �    c       d        e f      z {   |   b   4      +� \� � � >�    c       t    @  }    ~     � �      + �  �    