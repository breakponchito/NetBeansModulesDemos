����   4 ^	      *org/openide/windows/CloneableOpenSupport$2 this$0 *Lorg/openide/windows/CloneableOpenSupport;	   	 
 val$ask Z
      java/lang/Object <init> ()V
      (org/openide/windows/CloneableOpenSupport 
access$000 >(Lorg/openide/windows/CloneableOpenSupport;)Ljava/lang/Object;
     canClose ()Z	       java/lang/Boolean FALSE Ljava/lang/Boolean;	  " # $ 
allEditors /Lorg/openide/windows/CloneableTopComponent$Ref;
 & ' ( ) * -org/openide/windows/CloneableTopComponent$Ref getComponents ()Ljava/util/Enumeration; , - . /  java/util/Enumeration hasMoreElements , 1 2 3 nextElement ()Ljava/lang/Object; 5  org/openide/windows/TopComponent
 4 7 8  close	  : ;   TRUE
  = > ? run ()Ljava/lang/Boolean; A org/openide/util/Mutex$Action .(Lorg/openide/windows/CloneableOpenSupport;Z)V Code LineNumberTable LocalVariableTable this ,Lorg/openide/windows/CloneableOpenSupport$2; MethodParameters 	Signature c "Lorg/openide/windows/TopComponent; en Ljava/util/Enumeration; StackMapTable P java/lang/Throwable FLjava/lang/Object;Lorg/openide/util/Mutex$Action<Ljava/lang/Boolean;>; 
SourceFile CloneableOpenSupport.java EnclosingMethod 8 V (Z)Z InnerClasses Y )org/openide/windows/CloneableTopComponent Ref \ org/openide/util/Mutex Action      @  	 
           B  C   C     *+� *� *� �    D       } E        F G         H   	 � 	 I      > ?  C       _*� � YL�*� � *� � � 	� +ð*� � !� %M,� + � ,� 0 � 4N-� 6� 	� +ð���+ç 
:+��� 9�  
   T   ! K T   L Q T   T X T    D   .    � 
 �  � ! � , � 5 � ? � F � L � O � [ � E      ?  J K  , # L M    _ F G   N    � ! � 
 ,� D O� A > 3  C   /     *� <�    D       } E        F G    I    Q R    S T     U W            & X Z 	 @ [ ]	