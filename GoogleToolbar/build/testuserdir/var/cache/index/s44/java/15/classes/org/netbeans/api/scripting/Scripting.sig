����   4 F
      java/lang/Object <init> ()V
  	 
   $org/netbeans/api/scripting/Scripting 
newBuilder (()Lorg/netbeans/api/scripting/Scripting;
     build $()Ljavax/script/ScriptEngineManager;
  	     allowAllAccess Z
      org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;  java/lang/ClassLoader
     ! lookup %(Ljava/lang/Class;)Ljava/lang/Object;
 # $ % & ' java/lang/Thread currentThread ()Ljava/lang/Thread;
 # ) * + getContextClassLoader ()Ljava/lang/ClassLoader;
 - . / 0 + java/lang/Class getClassLoader 2 2org/netbeans/api/scripting/Scripting$EngineManager
 1 4  5 (ZLjava/lang/ClassLoader;)V Code LineNumberTable LocalVariableTable this &Lorg/netbeans/api/scripting/Scripting; createManager )(Z)Lorg/netbeans/api/scripting/Scripting; 	allAccess MethodParameters l Ljava/lang/ClassLoader; StackMapTable 
SourceFile Scripting.java InnerClasses EngineManager 1                6   3     *� �    7   
    6  7 8        9 :   	 ;   6         � � �    7       A 	    6          � Y� �    7       K   <  6   ?     *� *�    7   
    d  e 8        9 :      =   >    =       6   �     .� � � L+� 
� "� (L+� 	� ,L� 1Y*� +� 3�    7       q  r  s  u  v ! x 8       . 9 :    " ? @  A   	 �  	  B    C D   
  1  E 