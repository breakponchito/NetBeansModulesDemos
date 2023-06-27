����   4 �	      "org/openide/filesystems/FCLSupport task (Lorg/openide/util/RequestProcessor$Task;	   	 
 q Ljava/util/Queue;
      java/lang/Object <init> ()V	     	listeners &Lorg/openide/filesystems/ListenerList;  $org/openide/filesystems/ListenerList
  
     add (Ljava/lang/Object;)Z
     remove
    ! " getAllListeners ()Ljava/util/List; $ % & ' ( java/util/List iterator ()Ljava/util/Iterator; * + , - . java/util/Iterator hasNext ()Z * 0 1 2 next ()Ljava/lang/Object; 4 *org/openide/filesystems/FileChangeListener
  6 7 8 dispatchEvent �(Lorg/openide/filesystems/FileChangeListener;Lorg/openide/filesystems/FileEvent;Lorg/openide/filesystems/FCLSupport$Op;Ljava/util/Collection;)V
 : ; < = . !org/openide/filesystems/FileEvent isAsynchronous ? =org/openide/filesystems/FCLSupport$DispatchEventWrapperSingle
 > A  B y(Lorg/openide/filesystems/FileChangeListener;Lorg/openide/filesystems/FileEvent;Lorg/openide/filesystems/FCLSupport$Op;)V
 D E F 7 G 7org/openide/filesystems/FCLSupport$DispatchEventWrapper (ZLjava/util/Collection;)V I <org/openide/filesystems/FCLSupport$DispatchEventWrapperMulti
 H K  L c(Ljava/util/Collection;Lorg/openide/filesystems/FileEvent;Lorg/openide/filesystems/FCLSupport$Op;)V
  N O . hasListeners Q !org/openide/util/RequestProcessor S Async FileEvent dispatcher
 P U  V (Ljava/lang/String;IZZ)V	  X Y Z RP #Lorg/openide/util/RequestProcessor; \ *java/util/concurrent/ConcurrentLinkedQueue
 [  _ $org/openide/filesystems/FCLSupport$1
 ^ 
 P b c d create >(Ljava/lang/Runnable;)Lorg/openide/util/RequestProcessor$Task; 	Signature TLorg/openide/filesystems/ListenerList<Lorg/openide/filesystems/FileChangeListener;>; LLjava/util/Queue<Lorg/openide/filesystems/FCLSupport$DispatchEventWrapper;>; Code LineNumberTable LocalVariableTable this $Lorg/openide/filesystems/FCLSupport; addFileChangeListener /(Lorg/openide/filesystems/FileChangeListener;)V fcl ,Lorg/openide/filesystems/FileChangeListener; StackMapTable MethodParameters removeFileChangeListener c(Lorg/openide/filesystems/FileEvent;Lorg/openide/filesystems/FCLSupport$Op;Ljava/util/Collection;)V fcls Ljava/util/List; l fe #Lorg/openide/filesystems/FileEvent; 	operation 'Lorg/openide/filesystems/FCLSupport$Op; 
postNotify Ljava/util/Collection; LocalVariableTypeTable >Ljava/util/List<Lorg/openide/filesystems/FileChangeListener;>; ,Ljava/util/Collection<Ljava/lang/Runnable;>; � java/lang/Throwable � %org/openide/filesystems/FCLSupport$Op � java/util/Collection y(Lorg/openide/filesystems/FileEvent;Lorg/openide/filesystems/FCLSupport$Op;Ljava/util/Collection<Ljava/lang/Runnable;>;)V async Z dw 9Lorg/openide/filesystems/FCLSupport$DispatchEventWrapper; �(Lorg/openide/filesystems/FileChangeListener;Lorg/openide/filesystems/FileEvent;Lorg/openide/filesystems/FCLSupport$Op;Ljava/util/Collection<Ljava/lang/Runnable;>;)V y(Ljava/util/Collection;Lorg/openide/filesystems/FileEvent;Lorg/openide/filesystems/FCLSupport$Op;Ljava/util/Collection;)V DLjava/util/Collection<Lorg/openide/filesystems/FileChangeListener;>; �(Ljava/util/Collection<Lorg/openide/filesystems/FileChangeListener;>;Lorg/openide/filesystems/FileEvent;Lorg/openide/filesystems/FCLSupport$Op;Ljava/util/Collection<Ljava/lang/Runnable;>;)V 
access$000 ()Ljava/util/Queue; 
access$100 *()Lorg/openide/util/RequestProcessor$Task; <clinit> 
SourceFile FCLSupport.java InnerClasses � &org/openide/util/RequestProcessor$Task Task Op DispatchEventWrapperSingle DispatchEventWrapper DispatchEventWrapperMulti � $org/openide/filesystems/FCLSupport$2             e    f  Y Z    	 
  e    g      
      h   /     *� �    i       # j        k l   0 m n  h   e     *� � *� Y� � *� +� W�    i       -  .  1  2 j        k l      o p  q     r    o   0 s n  h   V     *� � *� +� W�    i       8  9  ; j        k l      o p  q     r    o    7 t  h  H     R*Y:�*� � ñ*� � :ç :��� # :� ) � � / � 3:+,-� 5���             $     i   & 	   @  A  B  E  F ' H F I N J Q K j   H    u v  F  w p    R k l     R x y    R z {    R | }  ' + u v  ~        u     R | �  ' + u   q   , �   N ��    : � � $  �  *�   r    x   z   |   e    �  7 8  h   �     +� 96� >Y*+,� @:-� C�    i       N  O  P  Q j   >     o p      x y     z {     | }    � �   	 � �  ~        | �  r    o  x  z  |   e    �  7 �  h   �     +� 96� HY*+,� J:-� C�    i       U  V  W  X j   >      }      x y     z {     | }    � �   	 � �  ~         �      | �  r       x  z  |   e    � 0 O .  h   L     *� � *� � M� � �    i       ] j        k l   q    @ � �  h         � �    i       # � �  h         � �    i       #  �   h   J      *� PYR� T� W� [Y� ]� � W� ^Y� `� a� �    i       �  �  �  �    � �   :  � P �  �  �@ >  � 
 D  �
 H  � 
 ^       �    