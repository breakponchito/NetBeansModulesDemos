����   4 H
      java/lang/Object <init> ()V	  	 
   1org/netbeans/progress/module/DefaultHandleFactory INSTANCE 7Lorg/netbeans/modules/progress/spi/ProgressEnvironment;
      0org/netbeans/progress/module/ProgressApiAccessor getInstance 4()Lorg/netbeans/progress/module/ProgressApiAccessor;  3org/netbeans/progress/module/DefaultHandleFactory$1
     g(Lorg/netbeans/progress/module/DefaultHandleFactory;Ljava/lang/String;Lorg/openide/util/Cancellable;Z)V
     create ^(Lorg/netbeans/modules/progress/spi/InternalHandle;)Lorg/netbeans/api/progress/ProgressHandle;  ,org/netbeans/modules/progress/spi/Controller
      7(Lorg/netbeans/modules/progress/spi/ProgressUIWorker;)V
 " # $ % & org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup; ( 5org/netbeans/modules/progress/spi/ProgressEnvironment
 " * + , lookup %(Ljava/lang/Class;)Ljava/lang/Object;
   Code LineNumberTable LocalVariableTable this 3Lorg/netbeans/progress/module/DefaultHandleFactory; get 9()Lorg/netbeans/modules/progress/spi/ProgressEnvironment; createHandle ](Ljava/lang/String;Lorg/openide/util/Cancellable;Z)Lorg/netbeans/api/progress/ProgressHandle; displayname Ljava/lang/String; c Lorg/openide/util/Cancellable; userInit Z MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getController 0()Lorg/netbeans/modules/progress/spi/Controller; <clinit> f StackMapTable 
SourceFile DefaultHandleFactory.java InnerClasses !    '            .   /     *� �    /         0        1 2   	 3 4  .         � �    /       ,  5 6  .   Z     � � Y*+,� � �    /       1 0   *     1 2      7 8     9 :     ; <  =    7   9   ;   >     ?    @ A  .   3     	� Y� �    /       6 0       	 1 2   >     ?    B   .   e     � !'� )� 'K*� � Y� -K*� �    /       $  %  &  (  ) 0       C    D    �  '  E    F G   
        