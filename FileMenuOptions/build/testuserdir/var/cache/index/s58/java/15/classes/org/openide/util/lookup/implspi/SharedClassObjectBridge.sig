����   4 ?	      7org/openide/util/lookup/implspi/SharedClassObjectBridge $assertionsDisabled Z	   	 
 INSTANCE 9Lorg/openide/util/lookup/implspi/SharedClassObjectBridge;  java/lang/AssertionError
     <init> ()V
     
findObject %(Ljava/lang/Class;)Ljava/lang/Object;
      java/lang/Class newInstance ()Ljava/lang/Object;
    java/lang/Object
     ! desiredAssertionStatus ()Z setInstance <(Lorg/openide/util/lookup/implspi/SharedClassObjectBridge;)V Code LineNumberTable LocalVariableTable bridge StackMapTable MethodParameters clazz Ljava/lang/Class; o Ljava/lang/Object; LocalVariableTypeTable Ljava/lang/Class<TT;>; TT; 2 java/lang/Throwable 
Exceptions 5  java/lang/InstantiationException 7  java/lang/IllegalAccessException 	Signature 1<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT; this c <clinit> 
SourceFile SharedClassObjectBridge.java!      
 	 
        ) " #  $   T     � � � � � Y� �*� �    %            &        ' 
   (     )    '   	    $   �     *YM² L,ç N,�-�M+� 	+*� M,� *� M,�             %   & 	   !  " 	 #  $  %  &  ( # ) ( + &   *  	  ' 
    * * +     ' 
    , -  .       * * /     , 0  (   ' �       1�      �   3     4 6 )    *   8    9     $   /     *� �    %       . &        : 
      3     4 6 )    ;   8    9  <   $   4      � � � � �    %        (    @  =    >