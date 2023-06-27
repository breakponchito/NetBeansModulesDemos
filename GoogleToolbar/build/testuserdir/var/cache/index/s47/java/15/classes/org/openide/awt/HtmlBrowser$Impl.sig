Źžŗ¾   4 
      java/lang/Object <init> ()V
  	 
    org/openide/awt/HtmlBrowser$Impl getURL ()Ljava/net/URL;
      java/net/URL toString ()Ljava/lang/String;
     (Ljava/lang/String;)V  java/net/MalformedURLException  java/lang/StringBuilder
    http://
      append -(Ljava/lang/String;)Ljava/lang/StringBuilder;
   #  org/openide/awt/SwingBrowserImpl % FMT_InvalidURL
 ' ( ) * + org/openide/util/NbBundle 
getMessage J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
 " - .  setStatusText 0 org/openide/awt/HtmlBrowser
 2 3 4 5  java/lang/Class getName
 7 8 9 : ; java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger;	 = > ? @ A java/util/logging/Level INFO Ljava/util/logging/Level;
 7 C D E log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
  G H I setURL (Ljava/net/URL;)V	 K L M N O org/openide/util/Lookup EMPTY Lorg/openide/util/Lookup; serialVersionUID J ConstantValue(lęEĄĮĀ PROP_STATUS_MESSAGE Ljava/lang/String; X statusMessage PROP_URL [ url 
PROP_TITLE ^ title PROP_FORWARD a forward PROP_BACKWARD d backward PROP_HISTORY g history PROP_BROWSER_WAS_CLOSED j browser.was.closed PROP_LOADING m loading Code LineNumberTable LocalVariableTable this "Lorg/openide/awt/HtmlBrowser$Impl; getComponent ()Ljava/awt/Component; reloadDocument stopLoading MethodParameters getLocation Ljava/net/URL; StackMapTable | java/lang/String setLocation errorMessage e  Ljava/net/MalformedURLException; ee location getStatusMessage getTitle 	isForward ()Z 
isBackward 	isHistory showHistory addPropertyChangeListener &(Ljava/beans/PropertyChangeListener;)V l removePropertyChangeListener dispose 	getLookup ()Lorg/openide/util/Lookup; 
SourceFile HtmlBrowser.java InnerClasses Impl!     	  P Q  R    S  U V  R    W  Y V  R    Z  \ V  R    ]  _ V  R    `  b V  R    c  e V  R    f  h V  R    i  k V  R    l      n   /     *· ±    o      ē p        q r   s t   u    v    H I  w    [        x   n   ]     *¶ L+¦ § +¶ °    o   
   - . p        q r     [ y  z    ü  C {  }   n  S     i» Y+· M§ ZN» Y» Y· ¶ +¶ ¶ !· M§ ;:"$½ Y+Sø &:*Į " *Ą "¶ ,§ /¶ 1ø 6² <-¶ B±*,¶ F±    	    ( +   o   6   ; 	I < > (H +? -@ >A EB QD bG cK hL p   R  	  [ y  (  [ y  > % ~ V  - 6     V      i q r     i  V  c  [ y  z   4 L ’    {    ż %  {’     {    w                   a        d               w          w           n   +      ±    o       p        q r       n   .     ² J°    o       p        q r            
   / 	