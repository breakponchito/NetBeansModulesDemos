����   4 O
      java/lang/Object <init> ()V	  	 
   +org/netbeans/modules/projectapi/SPIAccessor instance -Lorg/netbeans/modules/projectapi/SPIAccessor;  Lorg/netbeans/spi/project/ProjectManagerImplementation$ProjectManagerCallBack
      java/lang/Class getName ()Ljava/lang/String;
     getClassLoader ()Ljava/lang/ClassLoader;
     forName =(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;   java/lang/ClassNotFoundException   java/lang/RuntimeException
  "  # (Ljava/lang/Throwable;)V	  % & ' $assertionsDisabled Z ) java/lang/AssertionError
 (  , 	_instance
 . / 0 1 2 org/openide/util/Parameters notNull -(Ljava/lang/CharSequence;Ljava/lang/Object;)V
  4 5 6 desiredAssertionStatus ()Z Code LineNumberTable LocalVariableTable this getInstance /()Lorg/netbeans/modules/projectapi/SPIAccessor; ex "Ljava/lang/ClassNotFoundException; StackMapTable setInstance 0(Lorg/netbeans/modules/projectapi/SPIAccessor;)V MethodParameters $RuntimeInvisibleParameterAnnotations -Lorg/netbeans/api/annotations/common/NonNull; createProjectManagerCallBack P()Lorg/netbeans/spi/project/ProjectManagerImplementation$ProjectManagerCallBack; RuntimeInvisibleAnnotations <clinit> 
SourceFile SPIAccessor.java InnerClasses M 5org/netbeans/spi/project/ProjectManagerImplementation ProjectManagerCallBack!      J     & '        7   /     *� �    8        9        :    ) ; <  7   �     :� � � � � W� K� Y*� !�� $� � � � (Y� *�� �       8   * 
   #  %  &  (  %  +  )  * " - 6 . 9      	 = >   ?    X 	 	 @ A  7   =     +*� -*� �    8       2  3 
 4 9        ,    B    ,  C     D   E F  G     D    H   7   4      � 3� � � $�    8        ?    @  I    J K   
   L N 