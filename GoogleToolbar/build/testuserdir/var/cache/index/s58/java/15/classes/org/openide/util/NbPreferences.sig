����   4 g
      java/lang/Object <init> ()V	  	 
   org/openide/util/NbPreferences 
PREFS_IMPL )Lorg/openide/util/NbPreferences$Provider;
     getPreferencesProvider +()Lorg/openide/util/NbPreferences$Provider;      'org/openide/util/NbPreferences$Provider preferencesForModule 0(Ljava/lang/Class;)Ljava/util/prefs/Preferences;     preferencesRoot ()Ljava/util/prefs/Preferences;
       org/openide/util/Lookup 
getDefault ()Lorg/openide/util/Lookup;
  " # $ lookup %(Ljava/lang/Class;)Ljava/lang/Object; &  org/openide/util/NbPreferences$1
 %  ) "java.util.prefs.PreferencesFactory
 + , - . / java/lang/System getProperty &(Ljava/lang/String;)Ljava/lang/String; 1 4org.netbeans.junit.internal.MemoryPreferencesFactory
 3 4 5 6 7 java/lang/String equals (Ljava/lang/Object;)Z
 9 : ; < = java/lang/Class getName ()Ljava/lang/String;
 ? @ A B C java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 E F G H I java/util/logging/Level WARNING Ljava/util/logging/Level;	 E K L I FINE N 0NetBeans implementation of Preferences not found
 ? P Q R log .(Ljava/util/logging/Level;Ljava/lang/String;)V Code LineNumberTable LocalVariableTable this  Lorg/openide/util/NbPreferences; 	forModule cls Ljava/lang/Class; StackMapTable MethodParameters root logger Ljava/util/logging/Logger; prefsFactory Ljava/lang/String; retval 
SourceFile NbPreferences.java InnerClasses Provider 1      
          S   /     *� �    T       $ U        V W   	 X   S   Q     � � 	� � � *�  �    T       0  1  3 U        Y Z   [     \    Y   	 ]   S   >      � � 	� � � �  �    T       <  =  ? [     
    S   �     E� � !� K*� 6� %Y� 'K(� *L0+� 2� � 8� >M,+� 	� D� � JM� O*�    T   "    C  D  E  P  Q ' R 0 S C W U      0  ^ _   % ` a   9 b    [   . � ;   3 ?  ?�    3 ?  ? E�   c    d e       f	 %      