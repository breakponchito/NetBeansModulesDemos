����   4 /
      org/openide/util/Utilities activeReferenceQueue  ()Ljava/lang/ref/ReferenceQueue;
  	 
   java/lang/ref/WeakReference <init> 3(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V	      0org/openide/loaders/DataObjectPool$ItemReference item )Lorg/openide/loaders/DataObjectPool$Item;
      'org/openide/loaders/DataObjectPool$Item 
deregister (Z)V  java/lang/Runnable L(Lorg/openide/loaders/DataObject;Lorg/openide/loaders/DataObjectPool$Item;)V Code LineNumberTable LocalVariableTable this 2Lorg/openide/loaders/DataObjectPool$ItemReference; dobject  Lorg/openide/loaders/DataObject; MethodParameters run ()V 	Signature SLjava/lang/ref/WeakReference<Lorg/openide/loaders/DataObject;>;Ljava/lang/Runnable; 
SourceFile DataObjectPool.java InnerClasses , "org/openide/loaders/DataObjectPool ItemReference Item 0                    T     *+� � *,� �          � � �                  ! "        #   	 !       $ %     @     *� � *� �          � � �               &    ' (    ) *      + -   + . 