
&AtServer
Procedure OnCreateAtServer(Cancel, StandardProcessing)
	
	Discount = 99;
	
EndProcedure

&AtClient
Procedure OnOpen(Cancel)
	
	AttachIdleHandler("UpdateDiscount", 1, False);
	
EndProcedure

&AtClient
Procedure UpdateDiscount()

	If Discount = 0 Then
		Items.Discount.Visible = False;
		DetachIdleHandler("UpdateDiscount");
	Else
		Discount = Discount - 1;
	EndIf;

EndProcedure // UpdateDiscount()



&AtClient
Procedure BuyNow(Command)
	// TODO Insert handler
EndProcedure

