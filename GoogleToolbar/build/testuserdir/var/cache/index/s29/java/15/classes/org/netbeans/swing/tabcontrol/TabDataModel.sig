����   4 7  *org/netbeans/swing/tabcontrol/TabDataModel  java/lang/Object size ()I getTab *(I)Lorg/netbeans/swing/tabcontrol/TabData; MethodParameters index setTab +(ILorg/netbeans/swing/tabcontrol/TabData;)V data setIcon (ILjavax/swing/Icon;)V i setText (ILjava/lang/String;)V txt ([I[Ljavax/swing/Icon;)V indices icons ([I[Ljava/lang/String;)V setIconsAndText +([I[Ljava/lang/String;[Ljavax/swing/Icon;)V addTabs ,(I[Lorg/netbeans/swing/tabcontrol/TabData;)V start 	removeTab (I)V -([I[Lorg/netbeans/swing/tabcontrol/TabData;)V setTabs +([Lorg/netbeans/swing/tabcontrol/TabData;)V 
removeTabs ([I)V (II)V end addTab getTabs ()Ljava/util/List; 	Signature ;()Ljava/util/List<Lorg/netbeans/swing/tabcontrol/TabData;>; indexOf *(Lorg/netbeans/swing/tabcontrol/TabData;)I td addComplexListDataListener @(Lorg/netbeans/swing/tabcontrol/event/ComplexListDataListener;)V listener removeComplexListDataListener addChangeListener %(Ljavax/swing/event/ChangeListener;)V removeChangeListener 
SourceFile TabDataModel.java               	    
      	   	 
         	   	 
         	   	 
         	   	          	   	          	                	   	          	    
      	   	         !  	       " #  	       " $  	   	    %   &   	   	 
      ' (  )    * + ,  	    -   . /  	    0   1 /  	    0   2 3  	    0   4 3  	    0    5    6