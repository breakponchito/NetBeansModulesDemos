����   4 P
      java/lang/Object <init> ()V	  	 
   org/openide/nodes/TMUtil$Win 
getDefault Ljava/lang/reflect/Method;  !org.openide.windows.WindowManager
      org/openide/nodes/TMUtil 
access$100 %(Ljava/lang/String;)Ljava/lang/Class;   java/lang/Class
     	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;  getMainWindow	    
  ! " # 
access$000 ()Ljava/lang/ThreadLocal;
 % & ' ( ) java/lang/reflect/Method invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
 + , - . / java/lang/ThreadLocal set (Ljava/lang/Object;)V 1 java/lang/Exception 3 java/lang/IllegalStateException
 0 5 6 7 
getMessage ()Ljava/lang/String;
 2 9  : (Ljava/lang/String;)V < java/lang/Runnable Code LineNumberTable LocalVariableTable this Lorg/openide/nodes/TMUtil$Win; run wm Ljava/lang/Class; param [Ljava/lang/Object; ex Ljava/lang/Exception; LocalVariableTypeTable Ljava/lang/Class<*>; StackMapTable 
SourceFile TMUtil.java InnerClasses Win 0    ;  
     
           =   /     *� �    >       ?        @ A    B   =   �     Q� � #� L+� � � +� � � � L�  � � +� $+� $� *� L� 2Y+� 4� 8��    @ C 0  >   * 
      &$ +% @( C& D' P) ?   *    C D  +  E F  D  G H    Q @ A   I       C J  K    &\ 0  L    M N   
    O 