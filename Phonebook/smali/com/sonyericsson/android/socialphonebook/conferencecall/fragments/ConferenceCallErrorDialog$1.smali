.class Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog$1;
.super Ljava/lang/Object;
.source "ConferenceCallErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 77
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog$1;->this$0:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;

    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getAdditionalCallSettingsIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;->startActivity(Landroid/content/Intent;)V

    .line 76
    :cond_0
    return-void
.end method
