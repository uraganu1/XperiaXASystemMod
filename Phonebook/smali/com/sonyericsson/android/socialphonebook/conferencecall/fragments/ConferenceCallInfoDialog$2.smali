.class Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog$2;
.super Ljava/lang/Object;
.source "ConferenceCallInfoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog$2;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 105
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog$2;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;->dismiss()V

    .line 81
    return-void

    .line 84
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog$2;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/sonyericsson/android/socialphonebook/conferencecall/activities/ConferenceCallsActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog$2;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 90
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_1
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog$2;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;

    const v5, 0x7f090055

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "applySiteIntent":Landroid/content/Intent;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 93
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog$2;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;

    invoke-virtual {v4, v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    .end local v0    # "applySiteIntent":Landroid/content/Intent;
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallInfoDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Activity not found, unable to open apply site."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x7f0e0090
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
