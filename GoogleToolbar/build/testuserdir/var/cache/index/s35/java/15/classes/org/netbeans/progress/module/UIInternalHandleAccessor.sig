����   4 +
      java/lang/Object <init> ()V	  	 
   5org/netbeans/progress/module/UIInternalHandleAccessor INSTANCE 7Lorg/netbeans/progress/module/UIInternalHandleAccessor;  java/lang/IllegalStateException
    2org/netbeans/modules/progress/spi/UIInternalHandle   
     H(Ljava/lang/String;Lorg/openide/util/Cancellable;ZLjavax/swing/Action;)V Code LineNumberTable LocalVariableTable this setInstance :(Lorg/netbeans/progress/module/UIInternalHandleAccessor;)V acc StackMapTable MethodParameters instance 9()Lorg/netbeans/progress/module/UIInternalHandleAccessor; setController c(Lorg/netbeans/modules/progress/spi/InternalHandle;Lorg/netbeans/modules/progress/spi/Controller;)V h c markCustomPlaced 5(Lorg/netbeans/modules/progress/spi/InternalHandle;)V <clinit> 
SourceFile UIInternalHandleAccessor.java!      
             /     *� �                        	       R     � � � Y� �*� �           !  "  $  %                         	   !           � �           ( " #     	 $   %   & '      $    (      *      � Y� W�       
    1  2  )    *