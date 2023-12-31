����   4&  #org/openide/awt/AlwaysEnabledAction
     <init> (Ljava/util/Map;)V
    	 b(Ljava/util/Map;Lorg/openide/awt/AlwaysEnabledAction;Lorg/openide/util/Lookup;Ljava/lang/Object;)V
      ,org/openide/awt/AlwaysEnabledAction$CheckBox togglePreferencesSelected ()V
     actionPerformed (Ljava/awt/event/ActionEvent;)V	     menuItem Ljavax/swing/JCheckBoxMenuItem;  javax/swing/JCheckBoxMenuItem
    
     isPreferencesSelected ()Z
  ! " # setSelected (Z)V
 % & ' ( ) org/openide/awt/Actions connect 7(Ljavax/swing/JCheckBoxMenuItem;Ljavax/swing/Action;Z)V	  + ,  	popupItem	  . / 0 toolbarItems Lorg/openide/util/WeakSet; 2 org/openide/util/WeakSet
 1 4  5 (I)V 7 ;org/openide/awt/AlwaysEnabledAction$DefaultIconToggleButton
 6 
 1 : ; < add (Ljava/lang/Object;)Z
 > ! ? javax/swing/AbstractButton
 % A ( B 3(Ljavax/swing/AbstractButton;Ljavax/swing/Action;)V
  D E  updateItemsSelected	  G H I EMPTY Ljava/awt/event/ActionListener;	  K L M map Ljava/util/Map;	  O P Q equals Ljava/lang/Object;
   T preferencesKey
  V W X getValue &(Ljava/lang/String;)Ljava/lang/Object; Z java/lang/String
  \ ] ^ prefs ()Ljava/util/prefs/Preferences; ` preferencesDefault b java/lang/Boolean
 a d e  booleanValue
 g h i j k java/util/prefs/Preferences 
getBoolean (Ljava/lang/String;Z)Z	  m n o prefsListening Z
 g q r s addPreferenceChangeListener -(Ljava/util/prefs/PreferenceChangeListener;)V
 1 u v w iterator ()Ljava/util/Iterator; y z { |  java/util/Iterator hasNext y ~  � next ()Ljava/lang/Object;	  � � � preferencesNode Ljava/util/prefs/Preferences; � � system:
 Y � � � 
startsWith (Ljava/lang/String;)Z
 g � � ^ 
systemRoot
 Y � � � length ()I
 Y � � � 	substring (I)Ljava/lang/String;
 g � � � 
nodeExists
 g � � � node 1(Ljava/lang/String;)Ljava/util/prefs/Preferences; � %java/util/prefs/BackingStoreException � user:
 g � � ^ userRoot
 � � � � ^ org/openide/util/NbPreferences root � org/openide/util/Lookup
 � � � � lookupResult 3(Ljava/lang/Class;)Lorg/openide/util/Lookup$Result;	  � � � preferencesNodeResult  Lorg/openide/util/Lookup$Result;
 � � � � � org/openide/util/Lookup$Result allInstances ()Ljava/util/Collection; � � � � � java/util/Collection size � u
 � � � � addLookupListener $(Lorg/openide/util/LookupListener;)V
 � � � � lookup %(Ljava/lang/Class;)Ljava/lang/Object;
 g � � � 
putBoolean (Ljava/lang/String;Z)V
  � � � getToolbarPresenter ()Ljavax/swing/AbstractButton; � .org/openide/awt/AlwaysEnabledAction$CheckBox$1
 �  � 'org/openide/util/actions/Presenter$Menu � (org/openide/util/actions/Presenter$Popup � *org/openide/util/actions/Presenter$Toolbar � (java/util/prefs/PreferenceChangeListener � org/openide/util/LookupListener serialVersionUID J ConstantValue        	Signature 8Lorg/openide/util/WeakSet<Ljavax/swing/AbstractButton;>; ?Lorg/openide/util/Lookup$Result<Ljava/util/prefs/Preferences;>; Code LineNumberTable LocalVariableTable this .Lorg/openide/awt/AlwaysEnabledAction$CheckBox; m MethodParameters parent %Lorg/openide/awt/AlwaysEnabledAction; context Lorg/openide/util/Lookup; e Ljava/awt/event/ActionEvent; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getMenuPresenter ()Ljavax/swing/JMenuItem; StackMapTable getPopupPresenter b Ljavax/swing/AbstractButton; preferenceChange *(Ljava/util/prefs/PreferenceChangeEvent;)V pce 'Ljava/util/prefs/PreferenceChangeEvent; getDelegate !()Ljava/awt/event/ActionListener; createContextAwareInstance /(Lorg/openide/util/Lookup;)Ljavax/swing/Action; actionContext defaultValue value key Ljava/lang/String; java/lang/Object
 java/lang/Throwable selected ex 'Ljava/util/prefs/BackingStoreException; nodeName prefsLookup 	instances Ljava/util/Collection; prefsNodeOrLookup LocalVariableTypeTable 6Ljava/util/Collection<+Ljava/util/prefs/Preferences;>; resultChanged !(Lorg/openide/util/LookupEvent;)V ev Lorg/openide/util/LookupEvent; ()Ljava/awt/Component; <clinit> 
SourceFile AlwaysEnabledAction.java InnerClasses CheckBox DefaultIconToggleButton Result" "org/openide/util/actions/Presenter Menu Popup Toolbar 0    � � � � �   � �  �    �  H I         ,     / 0  �    �  � �    � �  �    �  n o         �   >     *+� �    �   
   B C �        � �      � M  �    �      	  �   `     
*+,-� �    �   
   F 	G �   4    
 � �     
 � M    
 � �    
 � �    
 P Q  �    �   �   �   P       �   F     
*� 
*+� �    �      L N 	O �       
 � �     
 � �  �    �   �     �    � �  �   n     +*� � "*� Y� � *� *� �  *� *� $*� �    �      R S T U &W �       + � �   �    &  � �  �   n     +*� *� "*� Y� � **� **� �  *� **� $*� *�    �      [ \ ] ^ &` �       + � �   �    &  � �  �   �     3*� -� *� 1Y� 3� -� 6Y� 8L*� -+� 9W+*� � =+*� @+�    �      d e g h $i ,j 1k �       3 � �     � �  �      � �  �   =     *� C�    �   
   o p �        � �      � �  �    �    � �  �   .     � F�    �      t �        � �   �     �      �   F     � Y*� J*+*� N� R�    �      y �        � �      �  �      �     �        �  b     d*S� U� YL*� [M+� P,� L*_� U:,+� a� � a� c� � f>*Y:�*� l� *� l,*� pç :��� >�  > R U   U Z U    �   6   } 
~ � � � 9� >� E� J� O� ]� `� b� �   >   > Q  9 ' o    d � �   
 Z   U ] �  b  o  �   \ � 4   Y g   g Y�     Y g   g Y�    Y g  E	� � �   E   �   �     N*� <*� � *� �  *� *� *� *�  *� -� &*� -� tM,� x � ,� } � >N-� =���    �   * 
  � � � � � #� *� E� J� M� �      E  � �    N � �    I o  �    � �  y�  " ] ^  �      F*� ��=*�� UL+� Y� �+� YM,�� �� B*� �� �*� �� �,�� �� �M**� �,� �� *� �,� �� � �� �N*� �� },�� �� B*� �� �*� �� f,�� �� �M**� �,� �� *� �,� �� � �� >N*� �� 5*� �� �*� �� '**� �,� �� *� �,� �� � �� 	N*� �� e+� g� *+� g� �� S+� �� G+� �M*,g� �� �*� �� �N-� � � *-� � � } � g� �*� �*� �,g� �� g�*� �*� ��  ; V Y � � � � � � � � �  �   � (  � � � � � #� *� 1� ;� V� Y� Z� _� b� k� r� y� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �����*�2�<�A� �   R  Z   �   �    �  � ? �  -  3 Q   F � �       -  �   � � R   Y  �     Y   gE �w �     Y   gE �d �     Y   gE �� � @ � �� 	�    �   O     *� �*� �*� C�    �      � � 
� � �        � �       �          �       C*S� U� YL*� [M+� 2,� .*_� UN,+,+-� a� -� a� c� � f� � � ȱ    �      � 
� � � � B� �   *   $ Q    C � �   
 9   4 ] �  �   w � 3   Y g  g Y g Y�     Y g  g Y g Y� 	   Y g  g Y�     Y g  g Y� A �  �   /     *� ̰    �      ) �        � �      �   #      � �Y� ҳ F�    �      /       :     6   � � 	 �       �!#	 �!$	 �!%	