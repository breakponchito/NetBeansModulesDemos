ΚώΊΎ   4 6	      org/openide/awt/QuickSearch$3 this$0 Lorg/openide/awt/QuickSearch;	   	 
 	val$dummy Ljavax/swing/JPopupMenu;
      java/lang/Object <init> ()V  org/openide/awt/QuickSearch$3$1
     "(Lorg/openide/awt/QuickSearch$3;)V
      javax/swing/SwingUtilities invokeLater (Ljava/lang/Runnable;)V  #javax/swing/event/PopupMenuListener 8(Lorg/openide/awt/QuickSearch;Ljavax/swing/JPopupMenu;)V Code LineNumberTable LocalVariableTable this Lorg/openide/awt/QuickSearch$3; MethodParameters 	Signature popupMenuWillBecomeVisible %(Ljavax/swing/event/PopupMenuEvent;)V e "Ljavax/swing/event/PopupMenuEvent; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; popupMenuWillBecomeInvisible popupMenuCanceled 
SourceFile QuickSearch.java EnclosingMethod 2 org/openide/awt/QuickSearch 4  displaySearchField InnerClasses        	 
                C     *+΅ *,΅ *· ±            !        " #         $   	  	 %      & '     D     » Y*· Έ ±        
     !        " #      ( )  $    (   *     +    , '     5      ±            !        " #      ( )  $    (   *     +    - '     5      ±            !        " #      ( )  $    (   *     +    .    / 0    1 3 5                  