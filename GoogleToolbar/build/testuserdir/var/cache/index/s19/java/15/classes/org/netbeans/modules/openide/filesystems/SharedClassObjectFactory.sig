����   4 1
      java/lang/Object <init> ()V  "org/openide/util/SharedClassObject
 
     java/lang/Class isAssignableFrom (Ljava/lang/Class;)Z
 
    
asSubclass $(Ljava/lang/Class;)Ljava/lang/Class;
     
findObject 8(Ljava/lang/Class;Z)Lorg/openide/util/SharedClassObject;  Aorg/netbeans/modules/openide/filesystems/SharedClassObjectFactory  1org/openide/filesystems/spi/CustomInstanceFactory Code LineNumberTable LocalVariableTable this CLorg/netbeans/modules/openide/filesystems/SharedClassObjectFactory; createInstance %(Ljava/lang/Class;)Ljava/lang/Object; clazz Ljava/lang/Class; LocalVariableTypeTable Ljava/lang/Class<TT;>; StackMapTable MethodParameters 	Signature 1<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile SharedClassObjectFactory.java )Lorg/openide/util/lookup/ServiceProvider; service 3Lorg/openide/filesystems/spi/CustomInstanceFactory; 1               /     *� �                            !     m     +� 	� +� � ��           $ 	 %  '                " #  $        " %  &     '    "   (    ) *     +    ,    - *     .  /c 0