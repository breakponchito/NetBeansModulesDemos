����   4 �
      9org/openide/nodes/Children$ProjectManagerDeadlockDetector <init> ()V
   	 java/lang/Object  org/openide/util/Mutex
 
 	     FALLBACK Lorg/openide/util/Mutex;  +java/util/concurrent/atomic/AtomicReference
  	     
pmMutexRef -Ljava/util/concurrent/atomic/AtomicReference;	     $assertionsDisabled Z  java/lang/AssertionError
  
    ! " 
getPMMutex ()Lorg/openide/util/Mutex;
 
 $ % & isReadAccess ()Z
 
 ( ) & isWriteAccess + java/lang/IllegalStateException - FShould not acquire Children.MUTEX while holding ProjectManager.mutex()
 * /  0 (Ljava/lang/String;)V 2 3 4 5  java/lang/Runnable run
  7 8 9 get ()Ljava/lang/Object; ; java/lang/ref/WeakReference
 : 7
  > ? " callPMMutexMethod
 : A  B (Ljava/lang/Object;)V
  D E F compareAndSet '(Ljava/lang/Object;Ljava/lang/Object;)Z
 H I J K L java/lang/Thread currentThread ()Ljava/lang/Thread;
 H N O P getContextClassLoader ()Ljava/lang/ClassLoader; R 'org.netbeans.api.project.ProjectManager
 T U V W X java/lang/ClassLoader 	loadClass %(Ljava/lang/String;)Ljava/lang/Class; Z mutex \ java/lang/Class
 [ ^ _ ` 	getMethod @(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
 b c d e f java/lang/reflect/Method invoke 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; h  java/lang/ClassNotFoundException j  java/lang/IllegalAccessException l "java/lang/IllegalArgumentException n +java/lang/reflect/InvocationTargetException p java/lang/NoSuchMethodException r java/lang/ClassCastException
 b t u v getReturnType ()Ljava/lang/Class;	 x y z { | org/openide/nodes/Children LOG Ljava/util/logging/Logger;	 ~  � � � java/util/logging/Level WARNING Ljava/util/logging/Level; � java/lang/StringBuilder
 �  � +Reopen #175325 and save complete log: type=
 � � � � append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
 [ � � � getName ()Ljava/lang/String; � 	 type.cl=
 [ � � P getClassLoader
 � � � � -(Ljava/lang/Object;)Ljava/lang/StringBuilder; � 
 Mutex.cl= � 
 clazz.cl=
 � � � � toString
 � � � � � java/util/logging/Logger log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
 [ � � & desiredAssertionStatus � java/util/concurrent/Executor 	Signature fLjava/util/concurrent/atomic/AtomicReference<Ljava/lang/ref/WeakReference<Lorg/openide/util/Mutex;>;>; Code LineNumberTable LocalVariableTable this ;Lorg/openide/nodes/Children$ProjectManagerDeadlockDetector; execute (Ljava/lang/Runnable;)V command Ljava/lang/Runnable; ea StackMapTable MethodParameters 
newWeakRef Ljava/lang/ref/WeakReference; weakRef LocalVariableTypeTable 7Ljava/lang/ref/WeakReference<Lorg/openide/util/Mutex;>; e "Ljava/lang/ClassNotFoundException; "Ljava/lang/IllegalAccessException; $Ljava/lang/IllegalArgumentException; -Ljava/lang/reflect/InvocationTargetException; !Ljava/lang/NoSuchMethodException; type Ljava/lang/Class; Ljava/lang/ClassCastException; clazz method Ljava/lang/reflect/Method; Ljava/lang/Class<*>; !(Lorg/openide/nodes/Children$1;)V x0 Lorg/openide/nodes/Children$1; <clinit> 
SourceFile Children.java InnerClasses ProjectManagerDeadlockDetector � org/openide/nodes/Children$1 0    �           �    �          �   M     *� *� 
Y� � *� Y� � �    �      l m n �        � �    � �  �   �     B=� � Y=� � Y� �� $*� N-� -� #� 
-� '� � *Y,� .�+� 1 �    �   "   q r s t u 1v ;y Az �   *    Z     B � �     B � �   @ �   �    � �  
� 	 �    �    ! "  �   �     GL*� � 6� :M,� ,� <� 
L+� +�*� =L+� � :Y+� @N*� ,-� C� +�� ����    �   :   ~  � � � � � $� (� 1� =� ?� B� D� �   *  1  � �   B Z    7 � �    G � �   �     1  � �   7 � �  �     �  
 :�   ? "  �  �     �LM� G� MQ� SL+Y� [� ]M,� � a� 
�N*� �N*� �N*� �N*� �N*� �N,� s:� w� }� �Y� ��� �� �� ��� �� �� ��� �
� �� ��� �+� �� �� �-� ��   ' ( g  ' . i  ' 4 k  ' : m  ' @ o  ' F q  �   V   � � � � � (� )� .� /� 4� 5� :� ;� @� A� F� G� M� {� �� �� �   f 
 )  � �  /  � �  5  � �  ;  � �  A  � �  M I � �  G O � �    � � �    � � �   � � �  �     M I � �   � � �  �   ) � (   [ b  gE iE kE mE oE q   �  �   9     *� �    �      l �        � �      � �   �   �   4      x� �� � � �    �      l �    @  �    � �      x �  �    