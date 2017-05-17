.class Lcom/android/contacts/quickcontact/QuickContactActivity$5;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallPlusServiceConnected()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap19(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 647
    return-void
.end method

.method public onCallPlusServiceDisconnected()V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap19(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 652
    return-void
.end method

.method public onCapabilitiesUpdated(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-wrap19(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 657
    return-void
.end method
