����   4 W
      java/lang/Object <init> ()V  java/util/LinkedList
  	      )org/openide/util/EditableProperties$State items Ljava/util/LinkedList;  java/util/HashMap
  	     	itemIndex Ljava/util/Map;
     size ()I
     (I)V
     ! iterator ()Ljava/util/Iterator; # $ % & ' java/util/Iterator hasNext ()Z # ) * + next ()Ljava/lang/Object; - (org/openide/util/EditableProperties$Item
 , / 0 + clone
  2 3 4 add (Ljava/lang/Object;)Z
 , 6 7 8 getKey ()Ljava/lang/String; : ; < = > java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; shared Z 	Signature BLjava/util/LinkedList<Lorg/openide/util/EditableProperties$Item;>; MLjava/util/Map<Ljava/lang/String;Lorg/openide/util/EditableProperties$Item;>; Code LineNumberTable LocalVariableTable this +Lorg/openide/util/EditableProperties$State; .(Lorg/openide/util/EditableProperties$State;)V i *Lorg/openide/util/EditableProperties$Item; _i original StackMapTable MethodParameters 
SourceFile EditableProperties.java InnerClasses T #org/openide/util/EditableProperties State Item          ? @       A    B     A    C       D   Q     *� *� Y� 	� 
*� Y� � �    E       K  L  M  N F        G H      I  D   �     r*� *� Y� 	� 
*� Y+� 
� hl`� � +� 
� M,� " � <,� ( � ,N-� .� ,:*� 
� 1W� 5� *� � 5� 9 W����    E   * 
   P  Q  R ' S B T K U U V ] W n Y q Z F   *  K # J K  B , L K    r G H     r M H  N    � /    #  >�  O    M    P    Q R      S U 
 , S V 
