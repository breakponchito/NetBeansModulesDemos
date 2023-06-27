����   4 H
      java/lang/Object <init> ()V  Eorg/openide/explorer/view/TableQuickSearchSupport$QuickSearchSettings
 
     org/openide/util/NbPreferences 	forModule 0(Ljava/lang/Class;)Ljava/util/prefs/Preferences;  	matchCase
      java/util/prefs/Preferences 
getBoolean (Ljava/lang/String;Z)Z	     Z  java/util/HashSet
  	      columnsIgnoredToSearch Ljava/util/Set;
  " # $ 
putBoolean (Ljava/lang/String;Z)V & ' ( ) * java/util/Set remove (Ljava/lang/Object;)Z & , - * add 	Signature #Ljava/util/Set<Ljava/lang/String;>; Code LineNumberTable LocalVariableTable this GLorg/openide/explorer/view/TableQuickSearchSupport$QuickSearchSettings; isMatchCase ()Z setMatchCase (Z)V MethodParameters getColumnsIgnoredToSearch ()Ljava/util/Set; %()Ljava/util/Set<Ljava/lang/String;>; addColumnToSearch (Ljava/lang/String;)V 
columnName Ljava/lang/String; removeColumnFromSearch 
SourceFile TableQuickSearchSupport.java InnerClasses F 1org/openide/explorer/view/TableQuickSearchSupport QuickSearchSettings 0                .    /       0   Q     *� *� 	� � *� Y� � �    1      * , - 2        3 4    5 6  0   /     *� �    1      0 2        3 4    7 8  0   M     *� � 	� !�    1      4 5 6 2        3 4         9        : ;  0   /     *� �    1      9 2        3 4   .    <  = >  0   D     *� +� % W�    1   
   = > 2        3 4      ? @  9    ?    A >  0   D     *� +� + W�    1   
   A B 2        3 4      ? @  9    ?    B    C D   
   E G 