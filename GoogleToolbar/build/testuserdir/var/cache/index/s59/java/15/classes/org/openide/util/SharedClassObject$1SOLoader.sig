����   4 ^	      ,org/openide/util/SharedClassObject$1SOLoader val$r  Lorg/openide/util/Lookup$Result;	   	 
 val$_obj $Lorg/openide/util/SharedClassObject;	     	val$start !Ljava/lang/IllegalStateException;
      java/lang/Object <init> ()V
      org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection;       java/util/Collection isEmpty ()Z
  " # $ removeLookupListener $(Lorg/openide/util/LookupListener;)V
 & ' ( ) * "org/openide/util/SharedClassObject getLock ()Ljava/lang/Object;
 & , - . 
access$002 ((Lorg/openide/util/SharedClassObject;Z)Z
 & 0 1 2 
access$100 G(Lorg/openide/util/SharedClassObject;)Ljava/lang/IllegalStateException;
 & 4 5 6 
access$200 (Ljava/lang/Throwable;)V 8 java/lang/IllegalStateException : 0...and maybe getting clobbered here, see #17711.
 7 <  = (Ljava/lang/String;)V
 & ? @ A 
access$102 h(Lorg/openide/util/SharedClassObject;Ljava/lang/IllegalStateException;)Ljava/lang/IllegalStateException; C org/openide/util/LookupListener h(Lorg/openide/util/Lookup$Result;Lorg/openide/util/SharedClassObject;Ljava/lang/IllegalStateException;)V Code LineNumberTable LocalVariableTable this .Lorg/openide/util/SharedClassObject$1SOLoader; MethodParameters 	Signature resultChanged !(Lorg/openide/util/LookupEvent;)V ev Lorg/openide/util/LookupEvent; StackMapTable R java/lang/Throwable 
SourceFile SharedClassObject.java EnclosingMethod W X 
findObject 8(Ljava/lang/Class;Z)Lorg/openide/util/SharedClassObject; InnerClasses SOLoader \ org/openide/util/Lookup Result      B      	 
           D  E   >     *+� *,� *-� *� �    F      2 G        H I   J     	  K      L M  E   �     e*� � �  � X*� *� !*� � %YM�*� � +W*� � /� )*� � 3*� � /� 3� 7Y9� ;� 3*� � >W,ç N,�-��  ! \ _   _ b _    F   .   4 6 8 !9 *; 4< ;= E> QC ZE dG G       e H I     e N O  P    � Z D Q�  J    N    S    T U    & V Y        Z    [ ]	